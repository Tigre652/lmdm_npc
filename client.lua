-- dichiarazione iniziale delle variabili e tabelle di traccia
local npcPeds = {}
local npcProps = {}
local dist = 0

--[[ Integrazione ESX (per eventuali usi futuri)
Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)
]]

-- blocco interazioni negli interiors
Citizen.CreateThread(function()
	local Lock = {}
	for v, item in pairs(Config.IntCoords) do
	 table.insert(Lock, v, false)
	end
	while Config.LockInteraction do
		Citizen.Wait(0)
		local player = PlayerPedId()
		for v, item in pairs(Config.IntCoords) do
			local IntID = GetInteriorAtCoords(item)
			if GetInteriorFromEntity(player) == IntID then
				DisableControlAction(0, 24, true)
				DisableControlAction(0, 25, true)
				DisableControlAction(0, 37, true)
				DisableControlAction(0, 140, true)
				if not Lock[v] then
					Lock[v] = true
					if IsPedArmed(player, 7) then
						SetCurrentPedWeapon(player, "WEAPON_UNARMED" ,true)
						Citizen.Wait(1000)
					end
					if Config.Debug then print ("Control Locked") end
				end
			else
				if Lock[v] then
					EnableAllControlActions(0)
					Lock[v] = false
					--exports.FeedM:ShowNotification("Grazie per la visita. Arrivederci!", 2000)
					exports["esx_notify"]:Notify("info", 2000, "Grazie per la visita. Arrivederci!")
					if Config.Debug then print ("Control unLocked") end
				end
			end
		end
	end
end)
	
-- thread principale
Citizen.CreateThread(function()
	-- creazione id della tabella di traccia dei ped creati
	for id, item in pairs(Config.Peds) do
		table.insert(npcPeds, id, 0)
		table.insert(npcProps, id, 0)
	end
	-- avvio del loop di creazione e rimozione ped in base alla posizione del giocatore
	while Config.Enable do
		local player = PlayerPedId()
		Citizen.Wait(1000)
		for id, item in pairs(Config.Peds) do
			local pos = GetEntityCoords(player)
--			dist = GetDistanceBetweenCoords(pos.x, pos.y, pos.z, item.x, item.y, item.z, true)
--			if dist < Config.SpawnDistance then
			if CheckPos(pos.x, pos.y, pos.z, item.x, item.y, item.z, Config.SpawnDistance) then
				if npcPeds[id] == 0 then
					CreateNPC(item, id)
--					Citizen.Wait(10)
					if Config.Debug then 
						print( "Ped N° "..tostring(id).." CREATO con ped ID:"..tostring(npcPeds[id]).." prop ID:"..tostring(npcProps[id]))
					end
				end	
			else
				if npcPeds[id] ~= 0 then
					DeleteEntity(npcPeds[id])
					DeleteObject(npcProps[id])
					if Config.Debug then 
						print( "Ped N° "..tostring(id).." RIMOSSO con ped ID:"..tostring(npcPeds[id]).." prop ID:"..tostring(npcProps[id])) 
					end
					npcPeds[id] = 0
					npcProps[id] = 0
--					Citizen.Wait(10)
				end
			end
		end
	end
end)

-- thread di riduzione dei ped e veicoli ambientali (di futura integrazione dinamica nel thread principale)
Citizen.CreateThread(function()
	while Config.Reduce do
	    Citizen.Wait(0)
		--PED
	    SetPedDensityMultiplierThisFrame(Config.PedMultiplier)
	    SetScenarioPedDensityMultiplierThisFrame(Config.PedMultiplier, Config.PedMultiplier)
		--TRAFFICO
	    SetRandomVehicleDensityMultiplierThisFrame(Config.VehicleMultiplier)
	    SetParkedVehicleDensityMultiplierThisFrame(Config.VehicleMultiplier)
	    SetVehicleDensityMultiplierThisFrame(Config.VehicleMultiplier)
	end
end)

-- pulizia di ped ed oggetti creati dalla resource quando viene arrestata
AddEventHandler("onResourceStop", function(r)
	if r == GetCurrentResourceName() then
		for i,v in ipairs(npcPeds) do
			DeleteEntity(v)
		end
		for i,v in ipairs(npcProps) do
			DeleteObject(v)
		end
	end
end)

-- funzione di creazione del ped con opzioni (necessario passare una riga della tabella Locations nel file Config o un array con simili caratteristiche ed un id di tracciamento valido)
function CreateNPC (item, id)
		-- creazione ped
		local npcHash = GetHashKey(item.model)
		if not HasModelLoaded(npcHash) then
			RequestModel(npcHash)
			while not HasModelLoaded(npcHash) do
				Citizen.Wait(100)
			end
		end
		local npc = CreatePed(1, npcHash, item.x, item.y, item.z, item.h, false, true)
		SetModelAsNoLongerNeeded (npcHash)
		npcPeds[id] = npc
		if item.variations[1] ~= nil then
			for i,v in ipairs(item.variations) do
				SetPedComponentVariation(npc, v[1], v[2], v[3], v[4])
			end
		end
		SetBlockingOfNonTemporaryEvents(npc, true)	   
		SetEntityHeading(npc, item.h)
		SetEntityInvincible(npc, true)
		FreezeEntityPosition(npc, true)
		SetModelAsNoLongerNeeded (npcHash)

		-- aggiunta prop al ped
		local validprop = true
		if item.useprop ~= 'null' then
			npcprop = Config[item.useprop]
		else
			validprop = false
		end
		if validprop then
			local propHash = GetHashKey(npcprop.prop)
			
			if not HasModelLoaded(propHash) then
				RequestModel(propHash)
				while not HasModelLoaded(propHash) do
					Citizen.Wait(100)
				end
			end
			
			local prop = CreateObject(propHash, item.x, item.y, item.z+0.2,  false,  true, true)
			npcProps[id] = prop
			SetModelAsNoLongerNeeded(propHash)
			AttachEntityToEntity(prop, npc, GetPedBoneIndex(npc, npcprop.bone), npcprop.off1, npcprop.off2, npcprop.off3, npcprop.rot1, npcprop.rot2, npcprop.rot3, true, true, false, true, 1, true)
		end
		
		-- animazione ped
		if item.scenario ~= 'null' then
			TaskStartScenarioAtPosition(npc, item.scenario, item.x, item.y, item.z , item.h , -1, false, true)
		elseif item.animdict ~= 'null' and item.anim ~= 'null' then
			RequestAnimDict(item.animdict)
			while not HasAnimDictLoaded(item.animdict) do
				Citizen.Wait(100)
			end	
--			Citizen.Wait(40)	
			TaskPlayAnim(npc, item.animdict, item.anim, 1.0, 1.0, -1, 9, 1.0, false, false, false)
			RemoveAnimDict(item.animdict)
		elseif validprop then
			RequestAnimDict(npcprop.animdict)
			while not HasAnimDictLoaded(npcprop.animdict) do
				Citizen.Wait(100)
			end	
--			Citizen.Wait(40)	
			TaskPlayAnim(npc, npcprop.animdict, npcprop.anim, 1.0, 1.0, -1, 9, 1.0, false, false, false)
			RemoveAnimDict(npcprop.animdict)
		end
		
		-- arma al ped
		if item.weapon ~= 'null' then
			local weaponHash = GetHashKey(item.weapon)
			GiveWeaponToPed(npc, GetHashKey("weapon_flashlight"), 1, false, true)
			GiveWeaponToPed(npc, weaponHash, math.random(20, 100), true, false)
			SetPedAmmo(npc, weaponHash, math.random(20, 100))
			SetCurrentPedWeapon(npc, weaponHash, true)
			SetEntityInvincible(npc, false)
			FreezeEntityPosition(npc, false)
			SetBlockingOfNonTemporaryEvents(npc, false)
		end
end

function CheckPos(x, y, z, cx, cy, cz, radius)
    local t1 = x - cx
    local t12 = t1^2

    local t2 = y-cy
    local t21 = t2^2

    local t3 = z - cz
    local t31 = t3^2

    return (t12 + t21 + t31) <= radius^2
end
