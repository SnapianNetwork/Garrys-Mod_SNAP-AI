This is a a SNAP Labs experiment that aims to **(hopefully)** bring a bit more intelligence and dynamics to NPC battles - namely between Rebels and Combine. It was heavily inspired by the “[Combat Intelligence AI](https://steamcommunity.com/sharedfiles/filedetails/?id=3760260083)” mod - though I personally found it a bit lackluster in what it promises, which is what inspired me to make this. 

You can see much of the behaviors by putting “**developer 1**” in console.
# Prerequisites
1. It’s highly recommended that your map includes both AI nodes and a nav mesh. Check out these tools (use Navmesh Optimizer to make the mesh and Nodegraph Editor+ to generate the nodes afterwards):
	1. https://steamcommunity.com/sharedfiles/filedetails/?id=2878197619
	2. https://steamcommunity.com/sharedfiles/filedetails/?id=3387089606
2. It should go without saying, but any other AI mods may cause problems.
# Installation
Simply place "Expanded HL2 NPC Behaviors (Edit)" in your addons folder (steamapps\common\GarrysMod\garrysmod\addons\Expanded HL2 NPC Behaviors (Edit)
# Features
## OODA / CECA Chess Engine
NPCs execute a multi-phase decision loop. Dynamically calculates cover, high-ground advantages, enfilade (side) angles, and retreat lines. Assesses squad morale, crossfire traps, incoming threat vectors, and enemy profiles (rushers, snipers, RPG threats). Simulates multiple tactical candidate moves and evaluates them against predicted enemy counter-actions. Executes coordinated actions with non-blocking movement schedules and smooth path transitions.
## Target Prioritization
Prioritizes enemies with critical health to secure fast eliminations, immediately coordinates focus on enemies wielding high-threat weapons (RPGs, Rocket Launchers, close-range Shotguns).
## Spatial Danger & Area Intelligence Mapping
A real-time NavMesh tactical heat-mapping system with expanded tracking (up to 1,024 concurrent NavAreas). Records friendly/enemy death locations and bullet impacts, causing NPCs to avoid known kill zones. NavAreas dynamically update line-of-sight exposure against hostile factions. Area search radiuses scale up or down based on combat intensity and active combatant count.
## Ballistics, Projectiles & Weapon Safety
Combine and Metrocops simulate grenade bounces and timers for more deadly... grenading. NPCs detect incoming missiles/grenades in mid-air and try to head to cover as soon as possible.
# Expanded HL2 NPC Behaviors
This mod - as you can probably tell from the folder name - was built off the “[Expanded HL2 NPC Behaviors](https://steamcommunity.com/sharedfiles/filedetails/?id=3213785831)”. It’s a bit jury rigged at the moment so don’t expect the settings in the spawn menu to work reliably. Currently, this does affect other AI types, such as VJ Base.