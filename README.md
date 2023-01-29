# FiveM **NEW** NPC Addon by Tigre652 e Nickyimbo

**Requirements:**
[IPL Pack] https://github.com/Bob74/bob74_ipl (or other to load DLC Interiors)

**aggiungi a server.cfg**
```
start NPCPeds
```

*Optional (ESX JOB):*
[esx_nightclub] https://github.com/SFL-Master/esx_nightclub

**Config Options:**
```
Config.Debug 			Modalità debug per verificare da consolle se i ped spawnano correttamente

Config.Enable			Attiva la creazione dinamica dei ped segnati in Config.Locations
Config.SpawnDistance 		Valore di distanza entro cui spawnare e poi eliminare i ped singoli una volta usciti. Evita che il gioco entri in errore per saturazione della PedPool.
Config.LockInteraction		Rimuove le interazioni ostili all'interno dei singoli spazi interni alle coordinate segnate in Config.IntCoords

Config.Reduce			Attiva la riduzione di ped e veicoli per non incorrere nella saturazione della PedPool di gioco.
Config.PedMultiplier 		Moltiplicatore densità di ped ambientali. Valore da 0 per rimuovere a 1 per ripristinare proporzionalmente i ped.
Config.VehicleMultiplier	Moltiplicatore densità di veicoli ambientali. Valore da 0 per rimuovere a 1 per ripristinare proporzionalmente i veicoli.
Config.IntCoords		Coordinate degli interiors in cui rimuovere le interazioni ostili --> vec3(Coordinata X, Coordinata Y, Coordinata Z)
Config.Peds			Coordinate e parametri dei peds da creare
				x,y,z		Coordinate punto di creazione (valore float scrivere sempre i decimali es: y = 10.00 e non 10)
				h 		Rotazione Ped (valore float scrivere sempre i decimali es: h = 10.00 e non 10)
				model		Nome del modello di ped (valore stringa es: model = 'a_m_y_business_03')
				weapon		Nome dell'arma da assegnare al ped (valore stringa es: weapon = 'weapon_pistol'). Lasciare weapon = 'null' per disarmare il Ped
				animdict	Dizionario dell'animazione da utilizzare. Per ped non animati lasciare su animdict = 'null'
				anim		Nome dell'animazione da utilizzare, per utilizzare riportare prima il dizionario in animdict. Per ped non animati lasciare su anim = 'null' 
				useprop		Prop da assegnare al ped. Se i campi animdict e anim sono 'null' verrà eseguita l'animazione predefinita del prop. Per non utilizzare prop lasciare useprop = 'null'
				scenario	Nome dello scenario da assegnare al ped. Se non utilizzato lasciare scenario = 'null'
				variations	Variazioni dell'aspetto del ped. Inserire gruppi di 4 numeri tra parentesi graffe separate da virgole. Esempio -> variations = {{1,1,1,1},{2,2,2,2},{3,3,3,3}}
