Config = {}
Config.Debug = false -- Modalità debug per verificare da console se i ped spawnano correttamente

Config.Enable = true  -- Attiva la creazione dinamica dei ped segnati in Config.Peds
Config.SpawnDistance = 50  -- Valore di distanza entro cui spawnare e poi eliminare i ped singoli una volta usciti. Evita che il gioco entri in errore per saturazione della PedPool.
Config.LockInteraction = true  -- rimuove le interazioni all'interno dei singoli spazi interni alle coordinate segnate in Config.IntCoords

Config.Reduce = true -- Attiva la riduzione di ped e veicoli per non incorrere nella saturazione della PedPool di gioco.
Config.PedMultiplier = 0.8 		-- Moltiplicatore densità di ped ambientali. Valore da 0 per rimuovere a 1 per ripristinare proporzionalmente i ped.
Config.VehicleMultiplier = 0.7  -- Moltiplicatore densità di veicoli ambientali. Valore da 0 per rimuovere a 1 per ripristinare proporzionalmente i veicoli.

------------------------------------------------------------------------------
--					INTERIORS BLOCCO MOSSE OSTILI							--
------------------------------------------------------------------------------

Config.IntCoords = {
	vector3(-1572.20, -3013.56, -75.41), -- nightclub
	vector3(950.51, 30.47, 76.99), -- casino diamond
	vector3( 335.85, -915.12, 28.26),	-- cyberbar
	vector3( 117.1389, -1286.0043, 28.2677), --vanilla unicorn
	
	vector3(71.2305, -1387.5620, 29.3761), -- Discount Store Strawberry 1
	vector3(-703.9425, -152.1906, 37.4151), -- Ponsonbys Rockford hills 2
	vector3(-167.8990, -298.9961, 39.7491), -- Ponsonbys LasLagunas 3 
	vector3(429.7215, -811.5334, 29.4911), -- Binco Sinner Street 4
	vector3(-820.0143, -1067.1887, 11.3281), -- Binco South Rockford 5
	vector3(-1447.8, -242.5, 49.8), -- Ponsonbys MorningWood 6
	vector3(3.7203, 6505.8765, 31.8778), -- Discount Store Paleto Bay 7
	vector3(118.2942, -231.9961, 54.5578), -- Suburban Vinewood 8
	vector3(1698.9185, 4818.0366, 42.0631), -- Discount Store Grapeseed 9
	vector3(617.6230, 2773.4614, 42.0881), -- Suburban Harmony 10 
	vector3(1201.9445, 2714.4443, 38.2226), -- Discount Store GranSenora 11 
	vector3(-1182.4548, -764.9772, 17.3261), -- Suburban DelPerro 12 
	vector3(-3178.4453, 1036.1544, 20.8632), -- Suburban Chumash 13
	vector3(-1100.3809, 2717.0298, 19.1078), -- Discount Store Zancudo 14
}

------------------------------------------------------------------------------
--								PEDS										--
------------------------------------------------------------------------------
--> !	http://ragepluginhook.net/PedModels.aspx-- 															! <--
--> ! ATTENZIONE ! Impostare sempre su 'null' i campi di weapon, animdict, anim, e useprop non utilizzati	! <--
--> ! INSERIRE SEMPRE COORDINATE E MODELLO nei nuovi campi inseriti	!										! <--
--> 																										! <--
--> ! INFORMAZIONI AGGIUNTIVE SUL CAMPO variations DEI SINGOLI PED (Impostazioni di caratteristiche definite del ped)															! <--
--> ! Lasciare vuoto il campo variations per far spawnare il ped con caratteristiche casuali																					! <--
--> MP Freemode list of components --> 0: Face, 1: Mask, 2: Hair, 3: Torso, 4: Leg, 5: Parachute/bag, 6: Shoes, 7: Accessory, 8: Undershirt, 9: Kevlar, 10: Badge, 11: Torso 2 	  <--
--> Riferirsi a https://docs.fivem.net/natives/?_0x262B14F48D29DE80 per informazioni																							  <--
--> Inserire i Component Variations a gruppi di 4 numeri tra parentesi graffe separate da virgole. Esempio -> variations = {{1,1,1,1},{2,2,2,2},{3,3,3,3}} <-					  <--
  
Config.Peds = { 

-- Some Shop & Interior NPCs
	{ x = 262.43,    y = -1360.00, z = 23.55,  h = 47.15,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Central Hospital Main
	{ x = 265.91,    y = -1358.64, z = 23.55,  h = 316.30, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Central Hospital Main 2
	{ x = 440.85,    y = -978.41,  z = 29.69,  h = 165.95, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- PD Main Welcome
	{ x = 458.97,    y = -1017.28, z = 27.16,  h = 93.50,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- PD Main Garage
	{ x = -1117.15,  y = -503.20,  z = 34.81,  h = 294.48, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Moneywash Moveact
	{ x = -705.93,   y = -914.33,  z = 18.22,  h = 81.50,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- LT Gasoline1
	{ x = -47.14,    y = -1758.82, z = 28.42,  h = 46.58,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- LT Gasoline2
	{ x = 2678.57,   y = 3278.88,  z = 54.24,  h = 337.70, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- 24/7 Freeway
	{ x = 1960.20,   y = 3739.33,  z = 31.34,  h = 296.50, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- 24/7 Sandy Shores
	{ x = -1196.19,  y = -892.78,  z = 13.00,  h = 300.42, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Burgershot
	{ x = -32.94,    y = -1103.65, z = 25.42,  h = 77.25,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Cardealer1
	{ x = 1224.68,   y = 2728.74,  z = 37.01,  h = 178.82, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Cardealer2
	{ x = 1133.87,   y = -983.21,  z = 45.42,  h = 274.80, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- EL Rancho Robs Li
	{ x = 85.88,     y = -1959.85, z = 20.12,  h = 27.20,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Grove Str Cannabis Dealer
	{ x = 6.80,      y = 6468.32,  z = 30.43,  h = 51.28,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Paleto Bay Meth Dealer
	{ x = -3155.14,  y = 1126.35,  z = 19.86,  h = 42.10,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Cusmash opium Dealer
	{ x = 959.31,    y = -121.22,  z = 73.96,  h = 185.45, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Vinewood Coke Dealer
	{ x = 24.20,     y = -1347.60, z = 28.50,  h = 271.32, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Strawberry 24/7
	{ x = 1165.09,   y = -323.51,  z = 69.21,  h = 93.72,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- LT Gasoline3
	{ x = -1486.41,  y = -377.33,  z = 39.16,  h = 138.12, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Morningwood Robs Li
	{ x = 1165.15,   y = 2711.11,  z = 37.16,  h = 176.58, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Route 68 Robs Li
	{ x = 2557.46,   y = 380.49,   z = 107.62, h = 4.25,   model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Mountains Freeway 24/7
	{ x = 1391.82,   y = 3606.29,  z = 33.98,  h = 204.25, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Sandy Shores ACE
	{ x = 549.27,    y = 2671.82,  z = 41.16,  h = 100.35, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Sandy Shores 24/7
	{ x = 1697.35,   y = 4923.32,  z = 41.06,  h = 332.42, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Sandy Shores LT Gasoline4
	{ x = 1727.62,   y = 6415.18,  z = 34.04,  h = 241.98, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Chilliad Freeway 24/7
	{ x = -3241.96,  y = 999.86,   z = 11.83,  h = 4.68,   model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- cumash Freeway 24/7
	{ x = -3038.68,  y = 584.38,   z = 6.91,   h = 24.72,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Ocean Freeway 24/7
	{ x = -2966.12,  y = 391.35,   z = 14.04,  h = 77.04,  model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Ocean Freeway LT Gasoline5
	{ x = -1819.51,  y = 793.72,   z = 137.08, h = 134.72, model = 'a_m_y_business_03', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },    -- Ocean Freeway LT Gasoline5

-- Bartender
	{ x = 129.32,     y = -1283.91, z = 28.25,  h = 126.63, model = 's_f_y_bartender_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },	-- Bartender Strip	

-- Guards
	{ x = 123.57,     y = -1290.38, z = 28.29,  h = 240.82, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Vanilla1
	{ x = 107.82,     y = -1298.90, z = 27.77,  h = 172.95, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Vanilla2
	{ x = 462.81,     y = -992.30,  z = 23.91,  h = 349.60, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- LSPD Prison1
	{ x = 462.89,     y = -1003.08, z = 23.91,  h = 347.88, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- LSPD Prison2
	{ x = 470.40,     y = -1015.15, z = 25.39,  h = 154.75, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- LSPD Prison3


------------------------------------BIKER DLC------------------------------------------
-- Biker Guards
	{ x = 1090.08,   y = -3191.25, z = -39.99, h = 22.10,  model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard1 Coca
	{ x = 1087.06,   y = -3187.90, z = -39.99, h = 212.00, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard2
	{ x = 1097.42,   y = -3198.71, z = -39.99, h = 61.72,  model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard3
	{ x = 1065.86,   y = -3185.16, z = -40.16, h = 55.12,  model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard4 Weed
	{ x = 1053.91,   y = -3192.39, z = -40.16, h = 236.00, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard5
	{ x = 1039.30,   y = -3196.09, z = -39.17, h = 237.02, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard6
	{ x = 2436.27,   y = 4976.72,  z = 45.57,  h = 55.40,  model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard7 Opium
	{ x = 2432.61,   y = 4961.56,  z = 45.82,  h = 277.35, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard8
	{ x = 997.14,    y = -3201.97, z = -37.39, h = 322.08, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard9 Meth
	{ x = 1001.31,   y = -3197.73, z = -39.99, h = 293.75, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard10
	{ x = 1014.44,   y = -3201.72, z = -39.99, h = 36.63,  model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guard11

-- Biker Meth Cook
	{ x = 1005.75,   y = -3200.32, z = -39.52, h = 178.83, model = 'g_m_m_chemwork_01', weapon = 'null', animdict = 'anim@amb@business@meth@meth_monitoring_cooking@cooking@', anim = 'look_around_v8_cooker', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Cook

-- Meth Worker
	{ x = 1006.33,   y = -3197.67, z = -39.99, h = 265.40, model = 'g_m_m_chemwork_01', weapon = 'null', animdict = 'anim@amb@business@meth@meth_monitoring_cooking@monitoring@', anim = 'check_guages_monitor', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Worker
	{ x = 1011.74,   y = -3196.86, z = -39.99, h = 145.00, model = 'g_m_m_chemwork_01', weapon = 'null', animdict = 'anim@amb@business@meth@meth_monitoring_cooking@monitoring@', anim = 'check_guages_monitor', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Worker

-- Coca & Opium Worker
	{ x = 1091.35,   y = -3196.83, z = -39.99, h = 359.28, model = 'g_m_m_chemwork_01', weapon = 'null', animdict = 'anim@amb@business@meth@meth_monitoring_cooking@monitoring@', anim = 'check_guages_v1_monitor', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Worker
	{ x = 1101.37,   y = -3194.05, z = -39.99, h = 6.90,   model = 'g_m_m_chemwork_01', weapon = 'null', animdict = 'anim@amb@business@meth@meth_monitoring_cooking@monitoring@', anim = 'check_guages_v1_monitor', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Worker
	{ x = 2431.59,   y = 4971.02,  z = 41.35,  h = 37.75,  model = 'g_m_m_chemwork_01', weapon = 'null', animdict = 'anim@amb@business@meth@meth_monitoring_cooking@monitoring@', anim = 'check_guages_v1_monitor', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Worker
	{ x = 2435.69,   y = 4965.52,  z = 41.35,  h = 221.82, model = 'g_m_m_chemwork_01', weapon = 'null', animdict = 'anim@amb@business@meth@meth_monitoring_cooking@monitoring@', anim = 'check_guages_v1_monitor', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Worker

-- Biker Weed Worker
	{ x = 1055.29,   y = -3198.18, z = -40.16, h = 298.92, model = 'a_m_m_farmer_01', weapon = 'null', animdict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', anim = 'weed_stand_checkingleaves_kneeling_01_inspector', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Worker
	{ x = 1063.62,   y = -3192.31, z = -40.10, h = 210.30, model = 'a_m_m_farmer_01', weapon = 'null', animdict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', anim = 'weed_stand_checkingleaves_kneeling_01_inspector', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Worker
	{ x = 1058.15,   y = -3202.37, z = -40.05, h = 44.00,  model = 'a_m_m_farmer_01', weapon = 'null', animdict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', anim = 'weed_stand_checkingleaves_kneeling_01_inspector', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Worker
	{ x = 1050.60,   y = -3204.92, z = -40.12, h = 213.05, model = 'a_m_m_farmer_01', weapon = 'null', animdict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', anim = 'weed_stand_checkingleaves_kneeling_01_inspector', useprop = 'null', scenario = 'null', variations = {} },	-- Biker Worker
	
-- Cops Men LSPD
	{ x = 431.19,   y = -978.44, z = 29.71, h = 206.50, model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_a_idle', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 431.75,   y = -979.22, z = 29.71, h = 34.40,  model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_a_idle', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 443.30,   y = -981.24, z = 29.69, h = 0.70,   model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_a_idle', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 454.05,   y = -980.02, z = 29.69, h = 90.25,  model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_a_idle', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 456.33,   y = -988.56, z = 29.69, h = 2.66,   model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_a_idle', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 459.73,   y = -989.61, z = 23.91, h = 264.81, model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_a_idle', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 467.73,   y = -1016.14,z = 25.45, h = 276.80, model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_a_idle', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	--Sandy--
	{ x = 1852.67,  y = 3688.85,z = 33.27, h = 204.98,  model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_a_idle', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	--PB--
	{ x = -448.19,  y = 6012.36,z = 30.72, h = 310.80,  model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_a_idle', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	
-- Cops Men LSPD2
	{ x = 440.24,   y = -975.67, z = 29.69, h = 24.28,  model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_b_reaction', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 437.07,   y = -996.31, z = 29.69, h = 30.02,  model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_b_reaction', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 459.84,   y = -988.52, z = 23.91, h = 230.57, model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_b_reaction', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	--Sandy--
	{ x = 1853.15,  y = 3690.16, z = 33.27, h = 304.32, model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_b_reaction', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	--PB--
	{ x = -449.49,  y = 6012.42, z = 30.72, h = 69.25,  model = 's_m_y_cop_01', weapon = 'null', animdict = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_b_reaction', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	
-- Cops Girl LSPD3
	{ x = 437.68,   y = -979.22, z = 29.69, h = 245.80, model = 's_f_y_cop_01', weapon = 'null', animdict = 'amb@world_human_cop_idles@female@idle_b', anim = 'idle_d', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 430.80,   y = -979.18, z = 29.71, h = 277.25, model = 's_f_y_cop_01', weapon = 'null', animdict = 'amb@world_human_cop_idles@female@idle_b', anim = 'idle_d', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 420.30,   y = -989.65, z = 29.71, h = 208.18, model = 's_f_y_cop_01', weapon = 'null', animdict = 'amb@world_human_cop_idles@female@idle_b', anim = 'idle_d', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	{ x = 452.85,   y = -988.00, z = 25.67, h = 348.15, model = 's_f_y_cop_01', weapon = 'null', animdict = 'amb@world_human_cop_idles@female@idle_b', anim = 'idle_d', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	--Sandy--
	{ x = 1854.39,  y = 3688.27, z = 33.27, h = 97.55,  model = 's_f_y_cop_01', weapon = 'null', animdict = 'amb@world_human_cop_idles@female@idle_b', anim = 'idle_d', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	--PB--
	{ x = -441.35,  y = 6016.41, z = 30.70, h = 342.40, model = 's_f_y_cop_01', weapon = 'null', animdict = 'amb@world_human_cop_idles@female@idle_b', anim = 'idle_d', useprop = 'null', scenario = 'null', variations = {} },	-- Cops
	
-- Guards Weapons 
	{ x = 448.64,   y = -988.45,  z = 29.69,  h = 43.60,  model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- LSPDGuards
	{ x = 436.02,   y = -978.95,  z = 29.69,  h = 216.95, model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- LSPDGuards
	{ x = 1064.35,  y = -3187.37, z = -40.13, h = 140.85, model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- GuardsWeed
	{ x = 1055.62,  y = -3191.79, z = -40.15, h = 178.32, model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- GuardsWeed
	{ x = 1035.94,  y = -3206.06, z = -39.17, h = 284.78, model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- GuardsWeed
	{ x = 1042.39,  y = -3194.08, z = -39.16, h = 180.62, model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- GuardsWeed
	{ x = 999.07,   y = -3198.55, z = -37.39, h = 264.22, model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- GuardsMeth
	{ x = 1016.91,  y = -3198.42, z = -39.99, h = 122.70, model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- GuardsMeth
	{ x = 2433.71,  y = 4975.68,  z = 45.57,  h = 16.02,  model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guardsopium
	{ x = 2437.40,  y = 4966.65,  z = 41.35,  h = 66.08,  model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- Guardsopium
	{ x = 1089.90,  y = -3187.78, z = -39.99, h = 158.60, model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- GuardsCoca
	{ x = 1099.33,  y = -3199.25, z = -39.99, h = 347.42, model = 'u_m_m_jewelsec_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- GuardsCoca
	
-- Vehicle Impounds
	{ x = 407.41,   y = -1624.64, z = 28.29, h = 219.45, model = 's_f_y_cop_01', weapon = 'weapon_pistol', animdict = 'amb@world_human_leaning@male@wall@back@foot_up@idle_a', anim = 'idle_a', useprop = 'null', scenario = 'null', variations = {} }, -- Vehicle Impound
	
-------------------------------NIGHTCLUB(esx_nightclub)---------------------------------
-- NC Welcome
	{ x = -1572.20,   y = -3013.56, z = -75.41, h = 272.63, model = 's_f_y_bartender_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },	-- NCWelcome
	{ x = -1568.17,   y = -3015.47, z = -75.41, h = 39.15,  model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- NCWelcome
	
-- Nightclub Girls1
	{ x = -1593.89,   y = -3008.52, z = -80.01, h = 209.22, model = 'a_f_y_juggalo_01', weapon = 'null', animdict = 'mini@strip_club@idles@stripper', anim = 'stripper_idle_01', useprop = 'null', scenario = 'null', variations = {} },	-- NClub1
	{ x = -1587.04,   y = -3005.37, z = -80.01, h = 137.55, model = 'a_f_y_juggalo_01', weapon = 'null', animdict = 'mini@strip_club@idles@stripper', anim = 'stripper_idle_01', useprop = 'null', scenario = 'null', variations = {} },	-- NClub2
	{ x = -1576.61,   y = -3014.49, z = -80.01, h = 168.78, model = 'a_f_y_juggalo_01', weapon = 'null', animdict = 'mini@strip_club@idles@stripper', anim = 'stripper_idle_01', useprop = 'null', scenario = 'null', variations = {} },	-- NClub3
	{ x = -1590.54,   y = -3018.24, z = -77.00, h = 317.10, model = 'a_f_y_juggalo_01', weapon = 'null', animdict = 'mini@strip_club@idles@stripper', anim = 'stripper_idle_01', useprop = 'null', scenario = 'null', variations = {} },	-- NClub4
	{ x = -1585.82,   y = -3008.32, z = -77.00, h = 218.75, model = 'a_f_y_juggalo_01', weapon = 'null', animdict = 'mini@strip_club@idles@stripper', anim = 'stripper_idle_01', useprop = 'null', scenario = 'null', variations = {} },	-- NClub5
	{ x = -1599.40,   y = -3000.15, z = -76.81, h = 233.95, model = 'a_f_y_juggalo_01', weapon = 'null', animdict = 'mini@strip_club@idles@stripper', anim = 'stripper_idle_01', useprop = 'null', scenario = 'null', variations = {} },	-- NClub6


-- Nightclub Girls Cheering
	{ x = -1594.81,   y = -3014.21, z = -80.01, h = 71.46,  model = 'a_f_y_beach_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_cheering_female_c', useprop = 'null', scenario = 'null', variations = {} },	-- NClub1
	{ x = -1597.48,   y = -3010.60, z = -80.01, h = 104.40, model = 'a_f_y_beach_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_cheering_female_c', useprop = 'null', scenario = 'null', variations = {} },	-- NClub2
	{ x = -1595.69,   y = -3015.98, z = -78.81, h = 7.77,   model = 'a_f_y_beach_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_cheering_female_c', useprop = 'null', scenario = 'null', variations = {} },	-- NClub3
	{ x = -1590.34,   y = -3012.13, z = -77.00, h = 92.40,  model = 'a_f_y_beach_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_cheering_female_c', useprop = 'null', scenario = 'null', variations = {} },	-- NClub4
	{ x = -1605.82,   y = -3011.27, z = -78.80, h = 244.36, model = 'a_f_y_beach_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_cheering_female_c', useprop = 'null', scenario = 'null', variations = {} },	-- NClub5


-- Nightclub Girls Partying
	{ x = -1597.33,   y = -3009.50, z = -80.01, h = 170.30, model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_partying_female_partying_beer_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub1
	{ x = -1588.78,   y = -3017.87, z = -77.01, h = 65.83,  model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_partying_female_partying_beer_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub2
	{ x = -1597.09,   y = -3000.30, z = -76.81, h = 145.02, model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_partying_female_partying_beer_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub3
	{ x = -1577.94,   y = -3014.36, z = -80.01, h = 225.58, model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_partying_female_partying_beer_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub4


-- Nightclub Girls Slow
	{ x = -1596.56,   y = -3013.57, z = -80.01, h = 65.55,  model = 'a_f_y_genhot_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'mini_strip_club_private_dance_idle_priv_dance_idle', useprop = 'null', scenario = 'null', variations = {} },	-- NClub1
	{ x = -1591.78,   y = -3010.03, z = -80.01, h = 116.30, model = 'a_f_y_genhot_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'mini_strip_club_private_dance_idle_priv_dance_idle', useprop = 'null', scenario = 'null', variations = {} },	-- NClub2
	{ x = -1587.04,   y = -3011.44, z = -77.00, h = 101.45, model = 'a_f_y_genhot_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'mini_strip_club_private_dance_idle_priv_dance_idle', useprop = 'null', scenario = 'null', variations = {} },	-- NClub3
	{ x = -1598.90,   y = -3006.84, z = -77.00, h = 268.78, model = 'a_f_y_genhot_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'mini_strip_club_private_dance_idle_priv_dance_idle', useprop = 'null', scenario = 'null', variations = {} },	-- NClub4
	{ x = -1575.12,   y = -3006.97, z = -80.01, h = 157.70, model = 'a_f_y_genhot_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'mini_strip_club_private_dance_idle_priv_dance_idle', useprop = 'null', scenario = 'null', variations = {} },	-- NClub5


-- Nightclub Girls Tops
	{ x = -1598.59,   y = -3015.69, z = -79.21, h = 282.30, model = 'a_f_m_beach_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'mini_strip_club_lap_dance_ld_girl_a_song_a_p1', useprop = 'null', scenario = 'null', variations = {} },	-- NCTop1
	{ x = -1596.21,   y = -3007.97, z = -79.21, h = 151.05, model = 'a_f_m_beach_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'mini_strip_club_lap_dance_ld_girl_a_song_a_p1', useprop = 'null', scenario = 'null', variations = {} },	-- NCTop2


-- Nightclub Mens1
	{ x = -1599.30,   y = -3012.06, z = -80.01, h = 316.20, model = 'ig_claypain', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_partying_male_partying_beer_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub1
	{ x = -1587.75,   y = -3007.00, z = -80.01, h = 354.15, model = 'ig_claypain', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_partying_male_partying_beer_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub2
	{ x = -1575.79,   y = -3008.55, z = -80.01, h = 324.48, model = 'ig_claypain', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_partying_male_partying_beer_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub3


-- Nightclub Mens2
	{ x = -1592.69,   y = -3008.70, z = -80.01, h = 133.05, model = 'ig_ramp_mex', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_drinking_beer_male_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub1
	{ x = -1606.27,   y = -3014.39, z = -78.80, h = 337.85, model = 'ig_ramp_mex', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_drinking_beer_male_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub2
	{ x = -1575.75,   y = -3012.27, z = -80.01, h = 135.35, model = 'ig_ramp_mex', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_drinking_beer_male_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub3
	{ x = -1588.74,   y = -3011.59, z = -77.00, h = 277.38, model = 'ig_ramp_mex', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_drinking_beer_male_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub4
	{ x = -1599.36,   y = -3002.17, z = -76.81, h = 325.15, model = 'ig_ramp_mex', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_drinking_beer_male_base', useprop = 'beer', scenario = 'null', variations = {} },	-- NClub5


-- Nightclub Mens3
	{ x = -1597.49,   y = -3006.86, z = -77.00, h = 93.60,  model = 'u_m_y_babyd', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_hang_out_street_male_c_base', useprop = 'null', scenario = 'null', variations = {} },	-- NClub1
	{ x = -1596.35,   y = -3011.46, z = -80.01, h = 107.00, model = 'u_m_y_babyd', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_hang_out_street_male_c_base', useprop = 'null', scenario = 'null', variations = {} },	-- NClub2
	{ x = -1611.66,   y = -3009.90, z = -80.01, h = 119.85, model = 'u_m_y_babyd', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_hang_out_street_male_c_base', useprop = 'null', scenario = 'null', variations = {} },	-- NClub3


-- Nightclub Bartender
	{ x = -1584.95,   y = -3012.60, z = -77.01, h = 92.70,  model = 's_f_y_bartender_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },	-- NClub1
	{ x = -1577.97,   y = -3016.80, z = -80.01, h = 359.28, model = 's_f_y_bartender_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },	-- NClub2
		


-- Nightclub Guards
	{ x = -1576.46,   y = -3010.37, z = -80.01, h = 79.00,  model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- NClub1
	{ x = -1588.06,   y = -3014.43, z = -80.01, h = 349.75, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- NClub2
	{ x = -1585.96,   y = -3016.78, z = -77.00, h = 136.40, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- NClub3
	{ x = -1605.85,   y = -3013.04, z = -78.80, h = 288.05, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- NClub4
	{ x = -1614.12,   y = -3009.50, z = -76.21, h = 119.75, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- NClub5
--	{ x = 194.45,     y = -3165.86, z = 4.79,   h = 115.62, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- NCOut
	{ x = 871.46,     y = -2101.53, z = 29.48,   h = 55.78, model = 's_m_m_chemsec_01', weapon = 'null', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },	-- NCOut
	

-- Nightclub Solomun
--	{ x = -1604.01,   y = -3011.99, z = -78.80, h = 266.30, model = 'CSB_Sol', weapon = 'null', animdict = 'anim@amb@nightclub@djs@solomun@', anim = 'sol_dance_a_sol', useprop = 'null', scenario = 'null', variations = {} },	-- NCSolomun


 -- Nightclub Dixon
 { x = -1604.01,   y = -3011.99, z = -78.80, h = 266.30, model = 'CSB_Dix', weapon = 'null', animdict = 'anim@amb@nightclub@djs@solomun@', anim = 'sol_dance_a_sol', useprop = 'null', scenario = 'null', variations = {} },	-- NCDixon


-------------------------------CASINO (MLO Custom)---------------------------------
-- Casinò
	{ x = 960.62, y = 24.32,   z = 75.49, h = 60.53,  model = 'MaiLuxury', weapon = 'null', animdict = 'amb@code_human_in_bus_passenger_idles@female@sit@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },    -- Rececptionist Casinò
	{ x = 963.49, y = 51.91,    z = 74.05,  h = 149.95, model = 'ronin', weapon = 'null', animdict = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz', useprop = 'null', scenario = 'null', variations = {{0,2,2,2}, {2,1,2,0}, {3,0,0,0}, {4,1,0,0}} },    -- Bartender Casinò	
	{ x = 959.11, y = 55.51,    z = 74.11,  h = 104.46, model = 's_m_y_waiter_01', weapon = 'null', animdict = 'timetable@floyd@clean_kitchen@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {{3,0,0,0}, {4,0,0,0}} },    -- Bartender Casinò	
	{ x = 969.99, y = 51.15,    z = 74.11,  h = 259.18, model = 's_m_y_waiter_01', weapon = 'null', animdict = 'timetable@floyd@clean_kitchen@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {{3,0,0,0}, {4,0,0,0}} },    -- Bartender Casinò		
	{ x = 962.43, y = 57.16,    z = 74.99,  h = 337.37, model = 's_m_y_waiter_01', weapon = 'null', animdict = 'timetable@floyd@clean_kitchen@base', anim = 'base', useprop = 'null', scenario = 'PROP_HUMAN_BUM_SHOPPING_CART', variations = {{3,0,0,0}, {4,0,0,0}} },    -- Bartender Casinò		

-- Secretary
	{ x = 928.25, y = 34.40,   z = 79.76, h = 343.95, model = 'mp_f_boatstaff_01', weapon = 'null', animdict = 'amb@code_human_in_bus_passenger_idles@female@sit@base', anim = 'base', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_COMPUTER_LOW', variations = {{0,2,2,2}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },    -- Secretary Casinò
	{ x = 926.3,  y = 35.30,    z = 78.75, h = 320.15, model = 'mp_f_boatstaff_01', weapon = 'null', animdict = 'amb@code_human_in_bus_passenger_idles@female@sit@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },    -- Secretary Casinò
	{ x = 944.34, y = 7.69,    z = 74.2,  h = 353.4,  model = 'mp_f_boatstaff_01', weapon = 'null', animdict = 'amb@code_human_in_bus_passenger_idles@female@sit@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },    -- Secretary Casinò	
 
-- BarSeatPeople
	{ x = 965.75, y = 48.65, z = 74.50, h = 328.25, model = 'cs_movpremmale', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {} },
    { x = 960.58, y = 52.45, z = 74.20, h = 145.64, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@heists@prison_heist', anim = 'ped_b_loop_a', useprop = 'null', scenario = 'null', variations = {} },	
    { x = 961.15, y = 51.7, z = 74.99, h = 28.03, model = 'cs_movpremmale', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE', variations = {{0,2,2,2}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },
	{ x = 963.77, y = 49.85, z = 75.03, h = 328.25, model = 'cs_milton', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_BUM_SHOPPING_CART', variations = {} },	
	{ x = 970.59, y = 48.94, z = 74.44, h = 57.06, model = 'a_f_y_business_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{4,2,1,1}} },	
	{ x = 964.65, y = 57.2, z = 75.0, h = 159.68, model = 'a_f_y_business_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_BUM_SHOPPING_CART', variations = {{0,3,3,3}, {2,2,2,2}, {0,2,2,2}, {1,3,2,2}} },	
	{ x = 965.25, y = 57.04, z = 74.50, h = 159.97, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK', variations = {{0,3,3,3}, {2,2,2,2}, {0,2,2,2}, {1,3,2,2}} },	
	{ x = 969.20, y = 54.38, z = 74.50, h = 151.87, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 968.37, y = 55.62, z = 74.99, h = 67.96, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE', variations = {} },	
	{ x = 967.34, y = 56.24, z = 74.99, h = 226.92, model = 'mp_f_boatstaff_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE', variations = {} },	 
 	{ x = 958.88, y = 58.46, z = 74.99, h = 220.22, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'WORLD_HUMAN_STAND_MOBILE_UPRIGHT', variations = {} },	 

 
-- GuardiaCasino
	{ x = 941.82, y = 11.3,    z = 74.74, h = 2.7,    model = 's_m_y_cop_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },   -- GuardiaCasino	
	{ x = 962.54, y = 70.28,   z = 74.99, h = 182.12, model = 's_m_y_cop_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },   -- GuardiaCasino	
	{ x = 950.24, y = 64.15,   z = 74.99, h = 188.69, model = 's_m_y_cop_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },   -- GuardiaCasino	
	{ x = 984.19, y = 67.93,   z = 74.99, h = 144.82, model = 's_m_y_cop_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },   -- GuardiaCasino	
	{ x = 983.87, y = 51.11,   z = 74.99, h = 56.84,  model = 's_m_y_cop_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },  -- GuardiaCasino
	{ x = 922.85, y = 14.94,   z = 74.75, h = 276.08, model = 's_m_y_cop_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },   -- GuardiaCasino	
	{ x = 921.0,  y = 41.66,    z = 80.1,  h = 64.8,   model = 's_m_y_cop_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },   -- GuardiaCasino
	{ x = 927.92, y = 52.37,   z = 80.1,  h = 63.64,  model = 's_m_y_cop_01', weapon = 'weapon_pistol', animdict = 'anim@amb@nightclub@peds@', anim = 'amb_world_human_stand_guard_male_base', useprop = 'null', scenario = 'null', variations = {} },   -- GuardiaCasino	
		
-- GirlDrink
	{ x = 953.05, y = 48.3,    z = 75.74, h = 214.95, model = 'a_f_y_bevhills_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET', variations = {} },    -- GirlDrink
	{ x = 953.42, y = 47.83,   z = 75.74, h = 36.75,  model = 'a_f_y_bevhills_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET', variations = {} },    -- GirlDrink
	{ x = 978.32, y = 49.08,   z = 75.99, h = 5.3,   model = 'a_f_y_bevhills_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE', variations = {} },    -- GirlDrink
	{ x = 959.51, y = 70.1,    z = 75.99, h = 88.82,  model = 's_f_y_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'WORLD_HUMAN_MOBILE_FILM_SHOCKING', variations = {} },    -- GirlDrink	
	{ x = 959.45, y = 71.19,   z = 74.99, h = 110.82, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'champagne', scenario = 'null', variations = {} },   -- GirlDrink	
	{ x = 963.85, y = 42.89,   z = 75.74, h = 159.82, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE', variations = {} },   -- GirlDrink	
	{ x = 978.37, y = 49.71,   z = 75.99, h = 184.3, model = 'mp_f_boatstaff_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE', variations = {} },   -- GirlDrink	
	{ x = 952.95, y = 65.0,   z = 75.99, h = 351.65, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'WORLD_HUMAN_TOURIST_MOBILE', variations = {} },   -- GirlDrink	
	{ x = 955.51, y = 65.34,   z = 75.99, h = 29.93, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'WORLD_HUMAN_TOURIST_MOBILE', variations = {} },   -- GirlDrink	
	
-- GirlClassyDrink
	{ x = 951.82, y = 64.83,   z = 74.99, h = 356.99, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'champagne', scenario = 'null', variations = {} },   -- GirlClassyDrink	
	{ x = 924.94, y = 22.43,   z = 74.74, h = 302.03, model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'champagne', scenario = 'null', variations = {} },   -- GirlClassyDrink	
	{ x = 948.89, y = 10.79,   z = 74.74, h = 31.5,   model = 's_f_y_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'champagne', scenario = 'null', variations = {} },   -- GirlClassyDrink	
	{ x = 948.7,  y = 15.28,    z = 74.74, h = 289.97, model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'champagne', scenario = 'null', variations = {} },   -- GirlClassyDrink	
	{ x = 947.36, y = 27.24,   z = 75.99, h = 29.94,  model = 's_f_y_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'champagne', scenario = 'null', variations = {} },	-- GirlClassyDrink
	{ x = 948.79, y = 34.4,    z = 75.99, h = 145.31, model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_female@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'null', variations = {} },   -- GirlClassyDrink
	{ x = 956.79, y = 30.56,   z = 75.99, h = 92.3,   model = 's_f_y_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'champagne', scenario = 'null', variations = {} },   -- GirlClassyDrink	
	
-- ManCasinò
	{ x = 948.52, y = 34.04,   z = 75.99, h = 326.13, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'null', variations = {} },   -- ManCasinò	
	{ x = 948.6,  y = 11.19,    z = 74.74, h = 221.17, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },   -- ManCasinò	
	{ x = 958.36, y = 68.12,   z = 74.99, h = 72.53, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },   -- ManCasinò	
	{ x = 954.13, y = 64.32,   z = 75.99, h = 375.99, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'WORLD_HUMAN_CHEERING', variations = {} },   -- ManCasinò	
	{ x = 955.9, y = 31.08,   z = 75.99, h = 224.1, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'null', variations = {} },   -- ManCasinò	
	{ x = 955.8, y = 30.09,   z = 76.99, h = 316.67, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET', variations = {} },   -- ManCasinò	
	{ x = 946.86, y = 27.8,   z = 75.99, h = 216.79, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'null', variations = {} },   -- ManCasinò	
	
	
-- Slots
	{ x = 969.99, y = 65.58,   z = 75.44, h = 26.36, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_COMPUTER_LOW', variations = {} },   -- SlotDonna	
	{ x = 979.28, y = 68.84,   z = 75.44, h = 163.68, model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null',  scenario = 'PROP_HUMAN_SEAT_COMPUTER_LOW',variations = {} }, 	-- SlotDonna
    { x = 968.20, y = 66.25,   z = 75.44, h = 294.07, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_COMPUTER_LOW',variations = {} }, 	-- SlotDonna
	{ x = 974.23, y = 65.32,   z = 75.44, h = 192.68, model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_COMPUTER_LOW', variations = {} }, 	-- SlotDonna
	{ x = 969.8, y = 71.65,   z = 75.44, h = 310.68, model = 'cs_movpremmale', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_COMPUTER_LOW', variations = {} }, 	-- SlotDonna
	{ x = 971.77, y = 71.55,   z = 75.44, h = 47.8, model = 'a_f_y_business_02', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_COMPUTER_LOW',  variations = {} }, 	-- SlotDonna
	{ x = 969.18, y = 72.18,   z = 74.74, h = 253.37, model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'misscarsteal4@actor', anim = 'actor_berating_loop', useprop = 'null', scenario = 'null',  variations = {} }, 	-- SlotDonna
	--{ x = 971.77, y = 71.55,   z = 75.44, h = 47.8, model = 'a_f_y_business_02', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_COMPUTER_LOW',  variations = {} }, 	-- SlotDonna
	
-- PeopleSitting
	{ x = 937.90, y = 18.10, z = 75.0, h = 103.92, model = 'cs_movpremmale', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {} },
	{ x = 936.90, y = 16.87, z = 75.0, h = 7.32, model = 'cs_movpremmale', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_ARMCHAIR', variations = {{0,2,2,2}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },	
	{ x = 935.50, y = 17.79, z = 74.96, h = 271.65, model = 'a_f_y_business_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK', variations = {{0,2,2,2}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },
	{ x = 939.14, y = 16.06, z = 74.86, h = 185.13, model = 'a_f_y_business_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK', variations = {{0,3,3,3}, {2,2,2,2}, {0,2,2,2}, {1,3,2,2}} },	
	{ x = 940.39, y = 15.01, z = 74.96, h = 103.13, model = 'a_f_y_business_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {{0,3,3,3}, {3,2,2,2}, {3,0,0,0}, {4,0,0,0}} }, 
	{ x = 938.07, y = 14.71, z = 75.0, h = 276.46, model = 'cs_milton', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,3,2,2}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },	
	{ x = 934.19, y = 13.74, z = 75.02, h = 276.46, model = 'cs_movpremmale', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,3,2,2}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },	
	{ x = 936.4, y = 14.01, z = 75.02, h = 93.6, model = 'cs_movpremmale', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,4,2,2}, {2,0,0,0}, {3,1,0,0}, {4,0,0,0}} },	
	{ x = 935.18, y = 15.12, z = 74.96, h = 179.91, model = 'a_f_y_business_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {{0,4,2,2}, {3,1,2,2}, {3,0,0,0}, {4,0,0,0}} },	
	{ x = 935.46, y = 12.67, z = 74.96, h = 5.45, model = 'a_f_y_business_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,3,2,2}, {1,1,1,1}, {3,0,0,0}, {4,0,0,0}} },	
	{ x = 932.26, y = 15.01, z = 75.00, h = 102.02, model = 'cs_movpremmale', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,2,0,0}, {1,1,0,0}, {3,0,0,0}, {4,0,0,0}} },	
	{ x = 931.19, y = 13.59, z = 74.92, h = 10.99, model = 'a_f_y_business_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,2,0,0}, {1,1,0,0}, {3,0,0,0}, {4,0,0,0}} },
	{ x = 931.42, y = 10.41, z = 75.00, h = 283.03, model = 'a_f_y_business_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {{0,2,0,0}, {1,1,0,0}, {3,0,0,0}, {4,0,0,0}} },	
	{ x = 933.84, y = 10.78, z = 75.00, h = 94.87, model = 'a_f_y_business_02', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,2,0,0}, {1,1,0,0}, {3,0,0,0}, {4,0,0,0}} },	
	{ x = 932.48, y = 11.85, z = 75.00, h = 191.02, model = 'a_f_y_business_02', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,2,0,0}, {1,1,0,0}, {3,0,0,0}, {4,0,0,0}} },		
	{ x = 932.82, y = 9.32, z = 75.00, h = 10.12, model = 'a_f_y_business_02', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,2,0,0}, {1,1,0,0}, {3,0,0,0}, {4,0,0,0}} },
	{ x = 932.35, y = 17.93, z = 75.10, h = 9.81, model = 'cs_movpremmale', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,2,0,0}, {1,1,0,0}, {3,0,0,0}, {4,0,0,0}} },	
	{ x = 933.39, y = 19.37, z = 75.00, h = 96.69, model = 'a_f_y_business_02', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', variations = {{0,2,0,0}, {1,1,0,0}, {3,0,0,0}, {4,0,0,0}} },	
	{ x = 970.47, y = 36.31, z = 75.38, h = 128.93, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 969.07, y = 34.1, z = 75.38, h = 349.43, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 970.99, y = 32.26, z = 75.38, h = 260.99, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 973.42, y = 32.82, z = 75.38, h = 127.88, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 968.94, y = 31.60, z = 75.38, h = 81.11, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 966.52, y = 30.99, z = 75.38, h = 310.35, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 972.23, y = 35.87, z = 75.38, h = 314.52, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 974.77, y = 36.51, z = 75.38, h = 74.66, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 973.61, y = 38.03, z = 75.38, h = 166.95, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 976.17, y = 32.71, z = 75.38, h = 350.31, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 975.57, y = 29.84, z = 75.38, h = 259.4, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 978.16, y = 29.47, z = 75.38, h = 76.1, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 970.6, y = 28.01, z = 75.38, h = 78.92, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 968.03, y = 28.41, z = 75.38, h = 258.93, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR', variations = {} },	
	{ x = 968.35, y = 30.72, z = 75.51, h = 35.7, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BAR', variations = {} },	
	{ x = 972.65, y = 33.41, z = 75.51, h = 168.99, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BAR', variations = {} },	
	{ x = 973.69, y = 31.88, z = 75.51, h = 82.49, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BAR', variations = {} },	
	{ x = 969.57, y = 36.75, z = 75.38, h = 170.55, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'timetable@ron@ig_5_p3', anim = 'ig_5_p3_base', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 968.32, y = 34.71, z = 75.38, h = 309.97, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 970.63, y = 35.31, z = 75.38, h = 77.91, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 968.09, y = 35.69, z = 75.38, h = 263.74, model = 'a_c_chimp', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 968.6, y = 36.61, z = 75.38, h = 221.61, model = 'mp_f_boatstaff_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 970.14, y = 34.41, z = 75.38, h = 39.51, model = 'cs_dale', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 972.01, y = 36.93, z = 75.38, h = 259.08, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 974.42, y = 37.53, z = 75.38, h = 128.91, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 974.13, y = 35.61, z = 75.38, h = 44.14, model = 's_f_y_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 973.13, y = 35.39, z = 75.38, h = 346.38, model = 's_m_m_fiboffice_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 972.64, y = 37.77, z = 75.38, h = 219.75, model = 's_m_m_fiboffice_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 977.23, y = 32.74, z = 75.38, h = 33.34, model = 's_m_m_fiboffice_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 970.34, y = 28.99, z = 75.38, h = 133.56, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	
	{ x = 968.19, y = 27.38, z = 75.38, h = 310.86, model = 's_m_m_movprem_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FACILITY', variations = {} },	

-- Bartender
	{ x = 937.88, y = 8.40, z = 74.52, h = 29.02, model = 'mp_f_boatstaff_01', weapon = 'null', animdict = 'anim@amb@clubhouse@bar@drink@idle_a', anim = 'idle_a_bartender', useprop = 'null', scenario = 'null', variations = {{0,2,0,0}, {1,1,0,0}, {3,0,0,0}, {4,0,0,0}} },				

--	{ x = 979.23, y = 68.54,   z = 74.74, h = 163.68, model = 'a_f_y_bevhills_04', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', variations = {} }, 	-- SlotDonna	
	
-------------------------------BahamaMama (MLO Custom)---------------------------------	
-- Girl
	{ x = -1381.21, y = -632.29,   z = 29.98, h = 303.8,  model = 'HarleySS', weapon = 'null', animdict = 'amb@prop_human_bum_shopping_cart@male@idle_a', anim = 'idle_c', useprop = 'null', scenario = 'null', variations = {} },   -- Harley	
--	{ x = -1377.43, y = -629.15,   z = 29.82, h = 30.93,  model = 'LaraA', weapon = 'null', animdict = 'anim@amb@clubhouse@bar@drink@idle_a', anim = 'idle_a_bartender', useprop = 'null' , variations = {} }, 	-- Bartender
-------------------------------Weapon Shops--------------------------------------------	
	{ x = 842.53,   y = -1035.22,  z = 27.16, h = 358.86, model = 'CindyA', weapon = 'null', animdict = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz', useprop = 'null', scenario = 'null', variations = {} },   -- Cindy
	{ x = -662.49,  y = -933.61,   z = 20.80, h = 185.71, model = 'CindyA', weapon = 'null', animdict = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz', useprop = 'null', scenario = 'null', variations = {} },   -- Cindy
	{ x = 810.58,   y = -2159.01,  z = 28.69, h = 8.19,   model = 'a_f_m_prolhost_01', weapon = 'null', animdict = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz', useprop = 'null', scenario = 'null', variations = {} },   -- JacketGirl
	{ x = 1691.89,  y = 3760.49,   z = 33.69, h = 230.05, model = 'CindyB', weapon = 'null', animdict = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz', useprop = 'null', scenario = 'null', variations = {} },	-- Cindy
	{ x = -331.69,  y = 6083.25,   z = 30.97, h = 222.53, model = 'CindyB', weapon = 'null', animdict = 'timetable@ron@ig_3_couch', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Cindy	
	{ x = 253.95,   y = -50.13,    z = 68.94, h = 67.54,  model = 'a_m_m_eastsa_02', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },   -- AmmuVendor		
	{ x = 22.3,     y = -1105.39,  z = 28.8, h = 167.62,  model = 'a_m_m_eastsa_02', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },	-- AmmuVendor		
	{ x = 2568.23,  y = 292.62,    z = 107.82, h = 6.7,   model = 'a_f_m_prolhost_01', weapon = 'null', animdict = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz', useprop = 'null', scenario = 'null', variations = {} },   -- JacketGirl		
	{ x = -1119.6,  y = 2700.19,   z = 17.55, h = 221.05, model = 'u_m_o_taphillbilly', weapon = 'null', animdict = 'anim@amb@business@bgen@bgen_no_work@', anim = 'stand_phone_phoneputdown_idle_nowork', useprop = 'null', scenario = 'null', variations = {} },   -- OldMan	
	{ x = -1303.99, y = -393.92,   z = 35.7, h = 71.68,   model = 's_m_m_ammucountry', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },   -- AmmuCountry		
	{ x = -3173.76, y = 1088.01,   z = 19.84, h = 240.36, model = 's_m_m_marine_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} },   -- CarabiniereGenerale				

-------------------------------Tattoo Shops--------------------------------------------	
	{ x = 1324.54,  y = -1650.3,   z = 51.28, h = 125.84,  model = 'u_m_y_tattoo_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {{0,0,0,0}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Tattoo
	{ x = -1152.15, y = -1423.83,  z = 3.95, h = 128.12,   model = 'u_m_y_tattoo_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {{0,1,0,0}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Tattoo
	{ x = 323.9,    y = 181.2,     z = 102.82, h = 120.78, model = 'u_m_y_tattoo_01', weapon = 'null', animdict = 'timetable@tracy@ig_14@', anim = 'ig_14_base_tracy', useprop = 'null', scenario = 'null', variations = {} },   -- Tattoo
	{ x = -3167.11, y = 1075.16,   z = 19.85, h = 250.66,  model = 'u_m_y_tattoo_01', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'cig', scenario = 'null', variations = {{0,0,0,0}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Tattoo
	{ x = 1862.44,  y = 3748.45,   z = 32.09, h = 24.95,   model = 'u_f_y_bikerchic', weapon = 'null', animdict = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz', useprop = 'null', scenario = 'null', variations = {} },   -- Tattoo
	{ x = -292.08,  y = 6199.78,   z = 30.49, h = 241.13,  model = 'u_m_y_tattoo_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Tattoo	

---------------------------Barber Shops--------------------------------------------	
	{ x = -278.15,  y = 6230.34,   z = 30.7, h = 48.62,   model = 'a_f_y_eastsa_03', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Barber
	{ x = -823.26,  y = -184.09,   z = 36.57, h = 210.93, model = 'a_f_y_business_04', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {{0,0,0,0}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Office
	{ x = -810.85,  y = -182.84,   z = 37.57, h = 109.47, model = 'a_f_y_business_04', weapon = 'null', animdict = 'anim@heists@heist_corona@team_idles@female_a', anim = 'idle', useprop = 'null', scenario = 'WORLD_HUMAN_STAND_MOBILE', variations = {{0,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Barber
	{ x = 134.8,    y = -1708.14,  z = 28.29, h = 156.54, model = 'a_f_y_eastsa_03', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Barber
	{ x = -1284.23, y = -1115.52,  z = 5.99, h = 95.51,   model = 'a_f_y_business_04', weapon = 'null', animdict = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz', useprop = 'null', scenario = 'null', variations = {} },   -- Barber
	{ x = 1211.47,  y = -470.75,   z = 65.21, h = 85.55,  model = 'a_m_y_gay_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Barber
	{ x = 1930.95,  y = 3728.23,   z = 31.84, h = 220.5,  model = 'a_m_y_gay_01', weapon = 'null', animdict = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz', useprop = 'null', scenario = 'null', variations = {} },   -- Barber		
    { x = -30.97,    y = -151.66,  z = 56.08, h = 341, model = 'a_f_y_eastsa_03', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Barber
--SitPeople
    { x = 1935.29, y = 3728.33,   z = 31.84, h = 122.76, model = 'u_f_y_poppymich', weapon = 'null', animdict = 'timetable@reunited@ig_10', anim = 'base_amanda', useprop = 'null', scenario = 'null', variations = {} },   -- Sit		
    { x = -1286.6, y = -1119.29,  z = 5.96, h = 2.87,   model = 'a_f_y_vinewood_02', weapon = 'null', animdict = 'timetable@reunited@ig_10', anim = 'base_amanda', useprop = 'null', scenario = 'null', variations = {} },   -- Sit	
    { x = -819.75, y = -190.08,   z = 36.50, h = 305.65, model = 'a_f_y_business_01', weapon = 'null', animdict = 'timetable@reunited@ig_10', anim = 'base_amanda', useprop = 'null', scenario = 'null', variations = {} },   -- Sit	

---------------------------Clothes Shops--------------------------------------------	
	{ x = 73.94, y = -1393.01,    z = 28.38, h = 271.7, model = 'a_f_y_hipster_02', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 71.72, y = -1391.85,    z = 28.38, h = 12.36, model = 'a_f_y_hipster_02', weapon = 'null', animdict = 'amb@world_human_leaning@female@wall@back@hand_up@idle_a', anim = 'idle_a', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 78.03, y = -1400.04,    z = 28.38, h = 219.75, model = 'a_m_y_skater_02', weapon = 'null', animdict = 'misscarsteal4@aliens', anim = 'rehearsal_base_idle_director', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = -708.25, y = -152.76,   z = 36.42, h = 116.69, model = 'MaiLuxury2', weapon = 'null', animdict = 'friends@fra@ig_1', anim = 'base_idle', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = -713.76, y = -147.73,   z = 36.38, h = 290.81, model = 'a_m_m_business_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = -706.78, y = -160.13,   z = 36.39, h = 184.57, model = 'a_m_m_business_01', weapon = 'null', animdict = 'misscarsteal4@aliens', anim = 'rehearsal_base_idle_director', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = -713.51, y = -159.36,   z = 36.38, h = 112.79, model = 'a_f_y_business_04', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {{0,0,0,0}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Clothes
	{ x = -716.21, y = -151.43,   z = 36.38, h = 289.78, model = 'a_f_y_business_04', weapon = 'null', animdict = 'misscarsteal4@aliens', anim = 'rehearsal_base_idle_director', useprop = 'null', scenario = 'null', variations = {{0,0,0,0}, {3,1,1,0}, {4,0,0,0}} },   -- Clothes
	{ x = -705.89, y = -151.12,   z = 36.38, h = 201.28, model = 'a_f_y_hipster_02', weapon = 'null', animdict = 'mp_clothing@female@trousers', anim = 'try_trousers_neutral_a', useprop = 'null', scenario = 'null', variations = {} },  -- Clothes
	{ x = -704.10, y = -153.53,   z = 36.40, h = 37.8, model = 'a_m_y_vindouche_01', weapon = 'null', animdict = 'timetable@ron@ig_5_p3', anim = 'ig_5_p3_base', useprop = 'null', scenario = 'null', variations = {{6,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Clothes
	{ x = -164.6, y = -301.92,   z = 38.73, h = 257.12, model = 'MaiLuxury2', weapon = 'null', animdict = 'friends@fra@ig_1', anim = 'base_idle', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = -158.79, y = -296.58,   z = 38.72, h = 330.38, model = 'a_m_m_business_01', weapon = 'null', animdict = 'misscarsteal4@aliens', anim = 'rehearsal_base_idle_director', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -157.82, y = -296.66,   z = 38.72, h = 8.81, model = 'a_f_y_hipster_02', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -164.79, y = -306.78,   z = 38.73, h = 79.91, model = 'a_f_y_business_04', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {{0,0,0,0}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Clothes	
	{ x = 427.06, y = -806.37,   z = 28.49, h = 90.67, model = 'a_f_y_hipster_02', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 428.72, y = -803.29,   z = 28.49, h = 175.13, model = 'a_f_y_skater_01', weapon = 'null', animdict = 'mp_clothing@female@shirt', anim = 'try_shirt_positive_a', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = 422.79, y = -800.35,   z = 28.49, h = 94.77, model = 'a_m_y_skater_02', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -822.99, y = -1072.17,   z = 10.33, h = 203.07, model = 'LaraB', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -822.33, y = -1080.55,   z = 10.33, h = 215.38, model = 'a_m_y_skater_01', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -826.7, y = -1072.42,   z = 10.33, h = 303.11, model = 'a_m_y_skater_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Office
	{ x = -1449.51, y = -238.76,   z = 48.85, h = 43.15, model = 'MaiLuxury', weapon = 'null', animdict = 'friends@fra@ig_1', anim = 'base_idle', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = -1446.65, y = -245.91,   z = 48.83, h = 230.38, model = 'a_m_m_business_01', weapon = 'null', animdict = 'misscarsteal4@aliens', anim = 'rehearsal_base_idle_director', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -1447.53, y = -244.55,   z = 48.82, h = 320.72, model = 'a_m_m_business_01', weapon = 'null', animdict = 'timetable@ron@ig_5_p3', anim = 'ig_5_p3_base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = -1455.13, y = -238.39,   z = 49.82, h = 46.91, model = 'a_f_y_business_04', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'WORLD_HUMAN_STAND_MOBILE', variations = {{0,0,0,0}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Clothes
	{ x = -1193.44, y = -766.53,   z = 17.32, h = 215.0, model = 'a_m_y_beachvesp_01', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'WORLD_HUMAN_STAND_MOBILE', variations = {} },   -- Clothes	
	{ x = -1188.59, y = -766.58,   z = 16.32, h = 183.7, model = 'a_m_y_hipster_01', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -1186.56, y = -770.78,   z = 16.32, h = 215.7, model = 'a_f_y_hipster_03', weapon = 'null', animdict = 'mp_clothing@female@trousers', anim = 'try_trousers_neutral_a', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -1192.68, y = -777.36,   z = 16.32, h = 217.47, model = 'a_m_y_hipster_01', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -1202.31, y = -772.46,   z = 16.32, h = 48, model = 'a_m_y_hipster_02', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -1183.44, y = -766.79,   z = 16.32, h = 44.52, model = 'a_f_y_hipster_01', weapon = 'null', animdict = 'amb@world_human_leaning@female@wall@back@hand_up@idle_a', anim = 'idle_a', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = -1205.59, y = -777.55,   z = 17.30, h = 351.55, model = 'a_f_y_hipster_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'WORLD_HUMAN_WINDOW_SHOP_BROWSE', variations = {} },   -- Office
	{ x = 5.93, y = 6511.43,   z = 31.88, h = 48.32, model = 'a_f_y_rurmeth_01', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'WORLD_HUMAN_STAND_MOBILE', variations = {} },   -- Clothes		
    { x = 0.92, y = 6511.75,   z = 31.88, h = 303.79, model = 'a_f_y_rurmeth_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'WORLD_HUMAN_SMOKING', variations = {} },   -- Clothes
	{ x = 126.7, y = -224.97,   z = 53.56, h = 80.89, model = 'a_f_y_hipster_02', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
    { x = 120.2, y = -225.8,   z = 53.56, h = 99.29, model = 'a_f_m_soucentmc_01', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = 124.63, y = -215.55,   z = 53.57, h = 72.3, model = 'a_f_y_hipster_02', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Office
	{ x = 1695.38, y = 4823.01,   z = 41.06, h = 100.12, model = 'a_m_y_gay_01', weapon = 'null', animdict = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 1696.96, y = 4826.46,   z = 41.06, h = 158.15, model = 'a_f_y_hipster_02', weapon = 'null', animdict = 'mp_clothing@female@shoes', anim = 'try_shoes_positive_a', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 1696.26, y = 4826.5,   z = 41.06, h = 203.31, model = 'a_f_y_indian_01', weapon = 'null', animdict = 'mp_clothing@female@trousers', anim = 'try_trousers_neutral_a', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = 1694.26, y = 4820.82,   z = 41.06, h = 333.58, model = 'a_f_y_scdressy_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Office
	{ x = 1689.55, y = 4818.61,   z = 41.53, h = 15.77, model = 'LaraB', weapon = 'null', animdict = 'timetable@ron@ig_3_couch', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 1691.53, y = 4825.6,   z = 41.06, h = 287.1, model = 'a_f_y_hipster_02', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 1196.65, y = 2711.71,   z = 38.22, h = 186.61, model = 'a_f_y_skater_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'WORLD_HUMAN_STAND_MOBILE', variations = {} },   -- Clothes	
	{ x = 1193.06, y = 2704.78,   z = 37.22, h = 180.79, model = 'a_f_y_skater_01', weapon = 'null', animdict = 'mp_clothing@female@shoes', anim = 'try_shoes_positive_a', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 1189.45, y = 2707.78,   z = 37.22, h = 60.4, model = 'a_m_y_hipster_02', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = -3169.37, y = 1043.17,   z = 19.86, h = 60.31, model = 'a_f_y_indian_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -3175.87, y = 1048.4,   z = 19.85, h = 202.00, model = 'a_m_m_farmer_01', weapon = 'null', animdict = 'timetable@ron@ig_3_couch', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Office
	{ x = -3175.87, y = 1046.44,   z = 19.86, h = 98.68, model = 'a_f_m_fatwhite_01', weapon = 'null', animdict = 'mp_clothing@female@shoes', anim = 'try_shoes_positive_a', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = -1102.37, y = 2711.74,   z = 18.11, h = 225.05, model = 'a_f_y_rurmeth_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Office
	{ x = 612.53,   y = 2762.63,   z = 42.09, h = 278.34, model = 'a_f_y_rurmeth_01', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'WORLD_HUMAN_STAND_MOBILE', variations = {} }, -- Clothes	
	{ x = 620.40, y = 2766.69,   z = 41.09, h = 272.40, model = 'a_f_y_hipster_03', weapon = 'null', animdict = 'mp_clothing@female@trousers', anim = 'try_trousers_neutral_a', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes

-------------------------------- CYBERBAR ARCADE ----------------------------------

	{ x = 335.85, y =  -915.12,  z = 28.26, h = 187.05, model = 'cybergirl_a', weapon = 'null', animdict = 'null', anim = 'null', useprop = 'null', scenario = 'null', variations = {} }, -- cybertender girl
	{ x = 337.45, y = -923.21,   z = 28.23, h = 97.83, model = 'a_m_y_hipster_01', weapon = 'null', animdict = 'timetable@ron@ig_5_p3', anim = 'ig_5_p3_base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 336.32, y = -921.97,   z = 28.21, h = 179.76, model = 'a_f_y_hipster_04', weapon = 'null', animdict = 'timetable@reunited@ig_10', anim = 'base_amanda', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 332.6,  y = -919.65,   z = 28.23, h = 65.82, model = 'a_m_y_hipster_01', weapon = 'null', animdict = 'timetable@ron@ig_5_p3', anim = 'ig_5_p3_base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 332.74, y = -911.03,   z = 29.25, h = 268.03, model = 'LaraB', weapon = 'null', animdict = 'friends@fra@ig_1', anim = 'base_idle', useprop = 'null', scenario = 'WORLD_HUMAN_STAND_MOBILE', variations = {} },   -- Clothes
	{ x = 339.27, y = -908.35,   z = 29.25, h = 97.19, model = 'LaraB', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'WORLD_HUMAN_STAND_MOBILE', variations = {} },   -- Clothes
	{ x = 327.87, y = -911.5,    z = 29.25, h = 354.93, model = 'LaraA', weapon = 'null', animdict = 'misscarsteal4@aliens', anim = 'rehearsal_base_idle_director', useprop = 'null', scenario = 'WORLD_HUMAN_MUSICIAN', variations = {} },   -- Clothes
	{ x = 329.2,  y = -920.32,   z = 29.25, h = 185.55, model = 'momia', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'WORLD_HUMAN_MAID_CLEAN', variations = {{0,0,0,0}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Clothes
	{ x = 340.23, y = -911.55,   z = 29.25, h = 220.27, model = 'a_m_y_skater_01', weapon = 'null', animdict = 'misscarsteal4@aliens', anim = 'rehearsal_base_idle_director', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE', variations = {} },   -- Clothes
	{ x = 340.88, y = -912.17,   z = 29.25, h = 43.31, model = 'a_f_y_skater_01', weapon = 'null', animdict = 'mp_clothing@female@trousers', anim = 'try_trousers_neutral_a', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET', variations = {} },  -- Clothes
	{ x = 338.95, y = -931.77,   z = 29.25, h = 273.93, model = 'a_m_y_indian_01', weapon = 'null', animdict = 'timetable@ron@ig_5_p3', anim = 'ig_5_p3_base', useprop = 'null', scenario = 'WORLD_HUMAN_LEANING', variations = {} },   -- Clothes
	{ x = 336.75, y = -907.7,    z = 28.26, h = 355.45, model = 'a_m_y_stwhi_02', weapon = 'null', animdict = 'timetable@floyd@clean_kitchen@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
	{ x = 321.15, y = -908.29,   z = 28.22, h = 92.46, model = 'a_m_y_hipster_01', weapon = 'null', animdict = 'timetable@reunited@ig_10', anim = 'base_amanda', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	{ x = 319.94, y = -903.41,    z = 28.72, h = 139.66, model = 'a_m_y_hipster_01', weapon = 'null', animdict = 'anim@amb@casino@hangout@ped_male@stand@02b@idles', anim = 'idle_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_ARMCHAIR', variations = {} },   -- Clothes	
	{ x = 329.52, y = -914.34,   z = 28.74, h = 221.95, model = 'a_m_y_soucent_01', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_ARMCHAIR', variations = {{0,0,0,0}, {2,0,0,0}, {3,0,0,0}, {4,0,0,0}} },   -- Clothes	
	{ x = 330.26, y = -916.73,   z = 28.74, h = 0.53, model = 'a_m_m_genfat_02', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FOOD', variations = {} },   -- Clothes
	{ x = 327.63, y = -916.98,   z = 28.74, h = 213.13, model = 'a_m_y_beachvesp_01', weapon = 'null', animdict = 'mp_clothing@female@shirt', anim = 'try_shirt_positive_a', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER', variations = {} },   -- Clothes	
	{ x = 333.19, y = -915.76,   z = 29.12, h = 318.25, model = 'a_m_y_skater_02', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BAR', variations = {} },   -- Clothes	
	{ x = 338.78, y = -915.71,   z = 29.10, h = 57.07, model = 'a_f_y_indian_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BAR', variations = {} },   -- Clothes	
	{ x = 329.07, y = -907.35,   z = 29.25, h = 224.27, model = 'a_m_y_skater_01', weapon = 'null', animdict = 'misscarsteal4@aliens', anim = 'rehearsal_base_idle_director', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE', variations = {} },   -- Clothes
	{ x = 329.76, y = -908.07,   z = 29.25, h = 50.58, model = 'a_f_y_skater_01', weapon = 'null', animdict = 'mp_clothing@female@trousers', anim = 'try_trousers_neutral_a', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET', variations = {} },  -- Clothes
	{ x = 342.72, y = -924.46,   z = 29.25, h = 107.33, model = 'a_m_y_hipster_01', weapon = 'null', animdict = 'misscarsteal4@aliens', anim = 'rehearsal_base_idle_director', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE', variations = {} },   -- Clothes
	{ x = 342.12, y = -924.61,   z = 29.25, h = 286.25, model = 'a_f_y_hipster_04', weapon = 'null', animdict = 'mp_clothing@female@trousers', anim = 'try_trousers_neutral_a', useprop = 'null', scenario = 'WORLD_HUMAN_HANG_OUT_STREET', variations = {} },  -- Clothes
	{ x = 316.50, y = -907.49,   z = 28.74, h = 265.52, model = 'a_m_m_genfat_02', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_BENCH_FOOD', variations = {} },   -- Clothes
	{ x = 311.61, y = -903.09,   z = 28.74, h = 195.53, model = 'a_f_y_skater_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER', variations = {} },   -- Clothes
	--{ x = -822.33, y = -1080.55,   z = 10.33, h = 215.38, model = 'a_m_y_skater_01', weapon = 'null', animdict = 'timetable@tracy@ig_8@base', anim = 'base', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes	
	--{ x = -826.7, y = -1072.42,   z = 10.33, h = 303.11, model = 'a_m_y_skater_01', weapon = 'null', animdict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss', useprop = 'null', scenario = 'null', variations = {} },   -- Office
	--{ x = -1449.51, y = -238.76,   z = 48.85, h = 43.15, model = 'MaiLuxury', weapon = 'null', animdict = 'friends@fra@ig_1', anim = 'base_idle', useprop = 'null', scenario = 'null', variations = {} },   -- Clothes
}



------------------------------------------------------------------------------
--							PROPS (non modificare)							--
------------------------------------------------------------------------------
--0
Config.suitcase = { animdict = 'missheistdocksprep1hold_cellphone', anim = 'static', prop = 'prop_ld_suitcase_01', bone = 57005, off1 = 0.39, off2 = 0.0, off3 = 0.0, rot1 = 0.0, rot2 = 266.0, rot3 = 60.0}
--1
Config.suitcase2 = { animdict = 'missheistdocksprep1hold_cellphone', anim = 'static', prop = 'prop_security_case_01', bone = 57005, off1 = 0.10, off2 = 0.0, off3 = 0.0, rot1 = 0.0, rot2 = 280.0, rot3 = 53.0}
--2
Config.coffee = { animdict = 'amb@world_human_drinking@coffee@male@idle_a', anim = 'idle_c', prop = 'p_amb_coffeecup_01', bone = 28422, off1 = 0.0, off2 = 0.0, off3 = 0.0, rot1 = 0.0, rot2 = 0.0, rot3 = 0.0}
--3
Config.whiskey = { animdict = 'amb@world_human_drinking@coffee@male@idle_a', anim = 'idle_c', prop = 'prop_drink_whisky', bone = 28422, off1 = 0.01, off2 = -0.01, off3 = -0.06, rot1 = 0.0, rot2 = 0.0, rot3 = 0.0}
--4
Config.cup = { animdict = 'amb@world_human_drinking@coffee@male@idle_a', anim = 'idle_c', prop = 'prop_plastic_cup_02', bone = 28422, off1 = 0.0, off2 = 0.0, off3 = 0.0, rot1 = 0.0, rot2 = 0.0, rot3 = 0.0}
--5
Config.donut = { animdict = 'mp_player_inteat@burger', anim = 'mp_player_int_eat_burger', prop = 'prop_amb_donut', bone = 18905, off1 = 0.13, off2 = 0.05, off3 = 0.02, rot1 = -50.0, rot2 = 16.0, rot3 = 60.0}
--6
Config.burger = { animdict = 'mp_player_inteat@burger', anim = 'mp_player_int_eat_burger', prop = 'prop_cs_burger_01', bone = 18905, off1 = 0.13, off2 = 0.05, off3 = 0.02, rot1 = -50.0, rot2 = 16.0, rot3 = 60.0}
--7
Config.sandwich = { animdict = 'mp_player_inteat@burger', anim = 'mp_player_int_eat_burger', prop = 'prop_sandwich_01', bone = 18905, off1 = 0.13, off2 = 0.05, off3 = 0.02, rot1 = -50.0, rot2 = 16.0, rot3 = 60.0}
--8
Config.soda = { animdict = 'amb@world_human_drinking@coffee@male@idle_a', anim = 'idle_c', prop = 'prop_ecola_can', bone = 28422, off1 = 0.0, off2 = 0.0, off3 = 0.0, rot1 = 0.0, rot2 = 0.0, rot3 = 130.0}
--9
Config.wine = { animdict = 'anim@heists@humane_labs@finale@keycards', anim = 'ped_a_enter_loop', prop = 'prop_drink_redwine', bone = 18905, off1 = 0.10, off2 = -0.03, off3 = 0.03, rot1 = -100.0, rot2 = 266.0, rot3 = -10.0}
--10
Config.flute = { animdict = 'anim@heists@humane_labs@finale@keycards', anim = 'ped_a_enter_loop', prop = 'prop_champ_flute', bone = 18905, off1 = 0.10, off2 = -0.03, off3 = 0.03, rot1 = -100.0, rot2 = 266.0, rot3 = -10.0}
--11
Config.champagne = { animdict = 'anim@heists@humane_labs@finale@keycards', anim = 'ped_a_enter_loop', prop = 'prop_drink_champ', bone = 18905, off1 = 0.10, off2 = -0.03, off3 = 0.03, rot1 = -100.0, rot2 = 266.0, rot3 = -10.0}
--12
Config.beer = { animdict = 'anim@heists@humane_labs@finale@keycards', anim = 'ped_a_enter_loop', prop = 'prop_amb_beer_bottle', bone = 28422, off1 = 0.0, off2 = 0.0, off3 = 0.0, rot1 = 0.0, rot2 = 0.0, rot3 = 0.0}
--13
Config.cig = { animdict = 'amb@world_human_aa_smoke@male@idle_a', anim = 'idle_c', prop = 'prop_cs_ciggy_01', bone = 28422, off1 = 0.0, off2 = 0.0, off3 = 0.0, rot1 = 0.0, rot2 = 0.0, rot3 = 0.0}

-- ATTENZIONE AD AGGIUNGERE ULTRIORI PROP! il nome del prop in Config.[nome del prop] deve corrispondere a useprop nei singoli ped per funzionare! Verificare i valori di offset e bone (da ricavare o estrapolare)
