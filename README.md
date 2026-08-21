This is a a SNAP Labs experiment that aims to **(hopefully)** bring a bit more intelligence and dynamics to NPC battles - namely between Rebels and Combine. It was heavily inspired by the “[Combat Intelligence AI](https://steamcommunity.com/sharedfiles/filedetails/?id=3760260083)” mod - I personally found it a bit lackluster in what it promises, which is what inspired me to make this. 

This mod - as you can probably tell from the folder name - was built off the “[Expanded HL2 NPC Behaviors](https://steamcommunity.com/sharedfiles/filedetails/?id=3213785831)”. It’s a bit jury rigged at the moment so don’t expect the settings in the spawn menu to work reliably.

You can see much of the behaviors by putting “**developer 1**” in console.
# Prerequisites
1. It’s highly recommended that your map includes both AI nodes and a nav mesh. Check out these tools (use Navmesh Optimizer to make the mesh and Nodegraph Editor+ to generate the nodes afterwards):
	1. https://steamcommunity.com/sharedfiles/filedetails/?id=2878197619
	2. https://steamcommunity.com/sharedfiles/filedetails/?id=3387089606
2. It should go without saying, but any other AI mods may cause problems.
# Installation
Simply place "Expanded HL2 NPC Behaviors (Edit)" in your addons folder (steamapps\common\GarrysMod\garrysmod\addons\Expanded HL2 NPC Behaviors (Edit)
# Features
## Core Tactical Cognitive AI (CECA / OODA Loop)
The mod replaces standard linear NPC decision-making with a continuous **CECA (Critique-Explore-Compare-Adapt)** and **OODA (Observe-Orient-Decide-Act)** cognitive loop:
* **Real-Time Environmental Observation:** Monitors health ratios, distance, elevation disparities, incoming fire, player crosshairs, aerial threats, explosive weapons (RPGs), and active hostiles.
* **Chess-Engine Utility Evaluator:** Evaluates multiple candidate actions (`HOLD_AND_ATTACK`, `SUPPRESSIVE_FIRE`, `SQUAD_BOUNDING_ADVANCE`, `FLANK_MANEUVER`, `TAKE_COVER_SHOOTING_POS`, `KITE_RETREAT`, `BREAK_CROSSFIRE`, etc.) and selects the move with the highest projected outcome.
* **Predictive Enemy Counter-Modeling:** Predicts enemy reactions (e.g., enemy reloading, rushing, holding high ground, launching rockets, or pinned by suppression) and chooses tactics to exploit or counter them.
* **Tactical Learning & Attribution Scoring:** Tracks damage dealt vs. damage taken per decision, rewarding successful maneuvers and penalizing ineffective strategies (e.g., failed flanks or stagnant long-range holding).
## Squad Tactics & Theater Orchestration
* **Dynamic Squad Clustering:** Automatically groups active combatants within range into coordinated fireteams (Combine fireteams, Metrocop squads, Resistance clusters).
* **Role Assignment:** Squad members are assigned complementary battlefield roles:
  * `SUPPRESS`: Pins down the enemy with high-rate automatic fire.
  * `ASSAULT` / `BOUNDING ADVANCE`: Pushes up under covering fire.
  * `FLANK`: Moves along lateral vectors to create crossfire angles.
  * `OVERWATCH`: Takes elevated ground or vantage points.
  * `SECURE`: Secures key terrain and chokepoints.
* **Squad Morale & Routing System:** Non-Combine NPCs experience morale loss based on casualties and firepower deficits; broken squads execute coordinated fallback or group routs.
* **Wounded Fallback to Medics (Rebels only):** Severely injured NPCs route to friendly medics or position themselves behind healthy squadmates for cover.
## NavMesh Analysis & Spatial Tactical Positioning
* **Dynamic Area Danger & Avoidance Scoring:**
  * Analyzes NavMesh areas in real-time, assigning avoidance ratings based on recent deaths, incoming bullet fire, and enemy line of sight.
  * NPCs try to steer clear of designated "killzones" and heavy fire funnels.
* **High Ground & Counter-Elevation Seeking:** Evaluates vantage points, cliffs, and ridges to gain a height advantage or contest an enemy holding the high ground.
* **Enfilade & Flanking Exploitation:** Identifies positions perpendicular or behind an enemy’s aiming cone to exploit blind spots.
* **Fatal Funnel & Crossfire Escape:** Detects when an NPC is pincered or trapped in narrow doorways/chokepoints and forces lateral escape maneuvers.
* **Anti-Zombie Kiting / Standoff Positioning:** Automatically identifies and tries to maintain a safe standoff distance against melee zombies and headcrabs.
## Advanced Grenades & Rocket (RPG) Mechanics
* **Physics & Ballistic Trajectory Simulation:**
  * Calculates real-time 3D ballistic arcs including gravity and wall/floor bounce physics (up to 2 bounces).
  * Automatically calculates direct throws, drop/roll throws, wall-bounce bank shots, and place throws.
* **Smart Grenade Targeting:**
  * Prioritizes enemy clusters (2+ hostiles within blast radius) or enemies concealed behind hard cover.
* **RPG Line-of-Sight Clearance Check:**
  * If obstructed, the NPC repositions to find a clean firing angle.
* **Anti-Air RPG Prioritization:** Rocket-equipped NPCs automatically prioritize gunships, helicopters, and dropships.
* **Rocket & Grenade Evasion:** NPCs detect incoming missiles or nearby live grenades.
## Debugging, UI & Localization
### Real-Time 2D/3D Developer Visualizer (`developer 1`)
* **Overhead NPC Tactical Tags:** Displays Entity ID, Class, HP, Current Schedule, Squad ID, Active OODA Decision, Projected Utility, Predicted Enemy Action, and Damage Attribution.
* **HUD Tactical Dashboard:** Displays active squads, fireteam roles, casualty counters, missile tracking, and lethal danger zones on the screen corner.
* **3D World Overlays:**
  * **Simulated Grenade Arcs:** Green (valid), Red (invalid), Cyan (direct hit), with yellow bounce spheres and blast radii.
  * **NavMesh Area Ratings:** Color-coded wireframe boxes for avoidance/danger, orange spheres for flank paths, cyan boxes for ridge overlooks.
  * **Lethal Danger Zones:** Translucent red danger spheres marking active artillery/explosive impact areas.
  * **Movement Destination Lines:** Green vectors showing current `ForcedGo` pathing goals.