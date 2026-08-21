if not SERVER then
	return
end

if not ConVarExists("NPC_AVOID_PLAYER_CROSSHAIR") then
	CreateConVar("NAPC_Debug_AreaScores", 0, FCVAR_ARCHIVE)
	CreateConVar("NPC_AVOID_PLAYER_CROSSHAIR", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_OODA", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_OODA_SquadTactics", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_OODA_Aggression", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("Combine_AVOID_PLAYER_CROSSHAIR", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("Metropolice_AVOID_PLAYER_CROSSHAIR", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("Citizen_AVOID_PLAYER_CROSSHAIR", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NPC_SHOOT_MORE_FREQUENTLY", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_CAN_JUMP", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_WeaponProficiency", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Combine_WeaponProficiency", 0, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Metropolice_WeaponProficiency", 0, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Citizen_WeaponProficiency", 0, FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_CUSTOM_HEALTH", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Combine_CUSTOM_HEALTH", 0, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Metropolice_CUSTOM_HEALTH", 0, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Citizen_CUSTOM_HEALTH", 0, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Hunter_CUSTOM_HEALTH", 0, FCVAR_ARCHIVE)
	CreateConVar("NAPC_ATTACK_TOGETHER", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_RUN_AND_SHOOT", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_WALK_AROUND", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_LookDistance", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Combine_LookDistance", 2048, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Metropolice_LookDistance", 2048, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Citizen_LookDistance", 2048, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Hunter_LookDistance", 2048, FCVAR_ARCHIVE)
	CreateConVar("NAPC_BETTER_SHOTGUNNERS", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_HIDE_FROM_DMG", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_SCALE_FRIENDLY_Dmg", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_CUSTOM_FRIENDLY_Dmg", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Combine_AR2_AltFire", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_IGNORE_PLAYER_Dmg", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_ScaleDmg_TO_PLAYERS", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Custom_NPCsDmg_TO_PLAYERS", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_LookFor_Attacker", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_RELOAD_PROTECTION", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_StriderCannon", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_StriderCn_AgainstPlayer", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_COWER_PROTECTION", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Zombine_FrequentRun", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_CombineHunter_Enhanced", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Hunter_TakingDmgSystem", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_EnemyNearby", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_QuickReloading", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_NoFlinch", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_FasterChasing", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_WorksOn_ANPlus", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Shotgunner_BigFlyFxxk", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_AimForHead", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_MustReloadNow", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Combine_Cloaking", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Turret_AccurateShot", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Metropolice_PistolReady", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Medic_Citizen", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_Stealth", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Faster_AR2Balls", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_AR2Balls_AOEDmg", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_StrikeBack", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_TakeCaution", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_CustomFOV", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Combine_CustomFOV", 361, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Metropolice_CustomFOV", 361, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Citizen_CustomFOV", 361, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Hunter_CustomFOV", 361, FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_RunFromGrenade", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Shotgunner_AltFire", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Shotgunner_Slug", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_AttackRange", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Combine_AttackRange", 1, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Metropolice_AttackRange", 1, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Citizen_AttackRange", 1, FCVAR_ARCHIVE)
	CreateConVar("NAPC_KeyNPCs_Protection", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_AimForExplosive", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_AR2_AltFire", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_MoveSpeed", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_Combine_MoveSpeed", 1, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Metropolice_MoveSpeed", 1, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Citizen_MoveSpeed", 1, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Zombie_MoveSpeed", 1, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Vortigaunt_MoveSpeed", 1, FCVAR_ARCHIVE)
	CreateConVar("NAPC_Combine_MoreGrenades", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_WalkAndShoot", 1, FCVAR_NOTIFY + FCVAR_ARCHIVE)
	CreateConVar("NAPC_NPCs_HealthRegen", 0, FCVAR_NOTIFY + FCVAR_ARCHIVE)
end

local NAPC = {}

NAPC.ConvarsBool = {
	["NPC_AVOID_PLAYER_CROSSHAIR"] = GetConVar("NPC_AVOID_PLAYER_CROSSHAIR"):GetBool(),
	["NAPC_NPCs_OODA"] = GetConVar("NAPC_NPCs_OODA"):GetBool(),
	["NAPC_OODA_SquadTactics"] = GetConVar("NAPC_OODA_SquadTactics"):GetBool(),
	["Combine_AVOID_PLAYER_CROSSHAIR"] = GetConVar("Combine_AVOID_PLAYER_CROSSHAIR"):GetBool(),
	["Metropolice_AVOID_PLAYER_CROSSHAIR"] = GetConVar("Metropolice_AVOID_PLAYER_CROSSHAIR"):GetBool(),
	["Citizen_AVOID_PLAYER_CROSSHAIR"] = GetConVar("Citizen_AVOID_PLAYER_CROSSHAIR"):GetBool(),
	["NPC_SHOOT_MORE_FREQUENTLY"] = GetConVar("NPC_SHOOT_MORE_FREQUENTLY"):GetBool(),
	["NAPC_NPCs_CAN_JUMP"] = GetConVar("NAPC_NPCs_CAN_JUMP"):GetBool(),
	["NAPC_NPCs_WeaponProficiency"] = GetConVar("NAPC_NPCs_WeaponProficiency"):GetBool(),
	["NAPC_NPCs_CUSTOM_HEALTH"] = GetConVar("NAPC_NPCs_CUSTOM_HEALTH"):GetBool(),
	["NAPC_ATTACK_TOGETHER"] = GetConVar("NAPC_ATTACK_TOGETHER"):GetBool(),
	["NAPC_RUN_AND_SHOOT"] = GetConVar("NAPC_RUN_AND_SHOOT"):GetBool(),
	["NAPC_WALK_AROUND"] = GetConVar("NAPC_WALK_AROUND"):GetBool(),
	["NAPC_NPCs_LookDistance"] = GetConVar("NAPC_NPCs_LookDistance"):GetBool(),
	["NAPC_BETTER_SHOTGUNNERS"] = GetConVar("NAPC_BETTER_SHOTGUNNERS"):GetBool(),
	["NAPC_NPCs_HIDE_FROM_DMG"] = GetConVar("NAPC_NPCs_HIDE_FROM_DMG"):GetBool(),
	["NAPC_NPCs_SCALE_FRIENDLY_Dmg"] = GetConVar("NAPC_NPCs_SCALE_FRIENDLY_Dmg"):GetBool(),
	["NAPC_Combine_AR2_AltFire"] = GetConVar("NAPC_Combine_AR2_AltFire"):GetBool(),
	["NAPC_NPCs_IGNORE_PLAYER_Dmg"] = GetConVar("NAPC_NPCs_IGNORE_PLAYER_Dmg"):GetBool(),
	["NAPC_NPCs_ScaleDmg_TO_PLAYERS"] = GetConVar("NAPC_NPCs_ScaleDmg_TO_PLAYERS"):GetBool(),
	["NAPC_NPCs_LookFor_Attacker"] = GetConVar("NAPC_NPCs_LookFor_Attacker"):GetBool(),
	["NAPC_NPCs_RELOAD_PROTECTION"] = GetConVar("NAPC_NPCs_RELOAD_PROTECTION"):GetBool(),
	["NAPC_StriderCannon"] = GetConVar("NAPC_StriderCannon"):GetBool(),
	["NAPC_StriderCn_AgainstPlayer"] = GetConVar("NAPC_StriderCn_AgainstPlayer"):GetBool(),
	["NAPC_NPCs_COWER_PROTECTION"] = GetConVar("NAPC_NPCs_COWER_PROTECTION"):GetBool(),
	["NAPC_Zombine_FrequentRun"] = GetConVar("NAPC_Zombine_FrequentRun"):GetBool(),
	["NAPC_CombineHunter_Enhanced"] = GetConVar("NAPC_CombineHunter_Enhanced"):GetBool(),
	["NAPC_Hunter_TakingDmgSystem"] = GetConVar("NAPC_Hunter_TakingDmgSystem"):GetBool(),
	["NAPC_NPCs_EnemyNearby"] = GetConVar("NAPC_NPCs_EnemyNearby"):GetBool(),
	["NAPC_NPCs_QuickReloading"] = GetConVar("NAPC_NPCs_QuickReloading"):GetBool(),
	["NAPC_NPCs_NoFlinch"] = GetConVar("NAPC_NPCs_NoFlinch"):GetBool(),
	["NAPC_NPCs_FasterChasing"] = GetConVar("NAPC_NPCs_FasterChasing"):GetBool(),
	["NAPC_WorksOn_ANPlus"] = GetConVar("NAPC_WorksOn_ANPlus"):GetBool(),
	["NAPC_Shotgunner_BigFlyFxxk"] = GetConVar("NAPC_Shotgunner_BigFlyFxxk"):GetBool(),
	["NAPC_NPCs_AimForHead"] = GetConVar("NAPC_NPCs_AimForHead"):GetBool(),
	["NAPC_NPCs_MustReloadNow"] = GetConVar("NAPC_NPCs_MustReloadNow"):GetBool(),
	["NAPC_Combine_Cloaking"] = GetConVar("NAPC_Combine_Cloaking"):GetBool(),
	["NAPC_Turret_AccurateShot"] = GetConVar("NAPC_Turret_AccurateShot"):GetBool(),
	["NAPC_Metropolice_PistolReady"] = GetConVar("NAPC_Metropolice_PistolReady"):GetBool(),
	["NAPC_Medic_Citizen"] = GetConVar("NAPC_Medic_Citizen"):GetBool(),
	["NAPC_NPCs_Stealth"] = GetConVar("NAPC_NPCs_Stealth"):GetBool(),
	["NAPC_Faster_AR2Balls"] = GetConVar("NAPC_Faster_AR2Balls"):GetBool(),
	["NAPC_AR2Balls_AOEDmg"] = GetConVar("NAPC_AR2Balls_AOEDmg"):GetBool(),
	["NAPC_NPCs_StrikeBack"] = GetConVar("NAPC_NPCs_StrikeBack"):GetBool(),
	["NAPC_NPCs_TakeCaution"] = GetConVar("NAPC_NPCs_TakeCaution"):GetBool(),
	["NAPC_NPCs_CustomFOV"] = GetConVar("NAPC_NPCs_CustomFOV"):GetBool(),
	["NAPC_NPCs_RunFromGrenade"] = GetConVar("NAPC_NPCs_RunFromGrenade"):GetBool(),
	["NAPC_Shotgunner_AltFire"] = GetConVar("NAPC_Shotgunner_AltFire"):GetBool(),
	["NAPC_Shotgunner_Slug"] = GetConVar("NAPC_Shotgunner_Slug"):GetBool(),
	["NAPC_NPCs_AttackRange"] = GetConVar("NAPC_NPCs_AttackRange"):GetBool(),
	["NAPC_KeyNPCs_Protection"] = GetConVar("NAPC_KeyNPCs_Protection"):GetBool(),
	["NAPC_NPCs_AimForExplosive"] = GetConVar("NAPC_NPCs_AimForExplosive"):GetBool(),
	["NAPC_NPCs_AR2_AltFire"] = GetConVar("NAPC_NPCs_AR2_AltFire"):GetBool(),
	["NAPC_NPCs_MoveSpeed"] = GetConVar("NAPC_NPCs_MoveSpeed"):GetBool(),
	["NAPC_Combine_MoreGrenades"] = GetConVar("NAPC_Combine_MoreGrenades"):GetBool(),
	["NAPC_NPCs_WalkAndShoot"] = GetConVar("NAPC_NPCs_WalkAndShoot"):GetBool(),
	["NAPC_NPCs_HealthRegen"] = GetConVar("NAPC_NPCs_HealthRegen"):GetBool(),
}

NAPC.Enable_ThisAddon = NAPC.ConvarsBool["NPC_AVOID_PLAYER_CROSSHAIR"]
NAPC.Enable_AvoidCrosshair = NAPC.ConvarsBool["Combine_AVOID_PLAYER_CROSSHAIR"]
	or NAPC.ConvarsBool["Metropolice_AVOID_PLAYER_CROSSHAIR"]
	or NAPC.ConvarsBool["Citizen_AVOID_PLAYER_CROSSHAIR"]

NAPC.ConvarsNum = {
	["NAPC_CUSTOM_FRIENDLY_Dmg"] = cvars.Number("NAPC_CUSTOM_FRIENDLY_Dmg"),
	["NAPC_Custom_NPCsDmg_TO_PLAYERS"] = cvars.Number("NAPC_Custom_NPCsDmg_TO_PLAYERS"),
	["NAPC_OODA_Aggression"] = cvars.Number("NAPC_OODA_Aggression"),
}

NAPC.Tables = {
	NPCClass_Main = {
		["npc_combine_s"] = true,
		["npc_metropolice"] = true,
		["npc_citizen"] = true,
	},
	NPCClass_FindAll = {
		["npc_grenade_frag"] = true,
		["npc_combine_s"] = true,
		["npc_metropolice"] = true,
		["npc_citizen"] = true,
		["npc_hunter"] = true,
		["npc_alyx"] = true,
		["npc_barney"] = true,
		["npc_monk"] = true,
		["npc_vortigaunt"] = true,
		["npc_headcrab"] = true,
		["npc_headcrab_fast"] = true,
		["npc_headcrab_black"] = true,
		["npc_headcrab_poison"] = true,
		["npc_zombine"] = true,
		["npc_strider"] = true,
		["npc_zombie"] = true,
		["npc_zombie_torso"] = true,
		["npc_cscanner"] = true,
		["npc_clawscanner"] = true,
	},
	BannedSchedule_List1 = {
		[-1] = true,
		[SCHED_NONE] = true,
		[SCHED_NPC_FREEZE] = true,
		[SCHED_WAIT_FOR_SCRIPT] = true,
		[SCHED_WAIT_FOR_SPEAK_FINISH] = true,
		[SCHED_AISCRIPT] = true,
		[SCHED_SCRIPTED_WALK] = true,
		[SCHED_SCRIPTED_RUN] = true,
		[SCHED_SCRIPTED_CUSTOM_MOVE] = true,
		[SCHED_SCRIPTED_WAIT] = true,
		[SCHED_DROPSHIP_DUSTOFF] = true,
		[142] = true,
	},
	BannedSchedule_List2 = {
		[SCHED_HIDE_AND_RELOAD] = true,
		[SCHED_RELOAD] = true,
		[92] = true,
	},
	BannedSchedule_List3 = {
		[SCHED_FORCED_GO] = true,
		[SCHED_FORCED_GO_RUN] = true,
	},
	ActiveCombatSchedules = {
		[SCHED_RANGE_ATTACK1] = true,
		[SCHED_RANGE_ATTACK2] = true,
		[SCHED_SPECIAL_ATTACK1] = true,
		[SCHED_SPECIAL_ATTACK2] = true,
		[SCHED_MELEE_ATTACK1] = true,
		[SCHED_MELEE_ATTACK2] = true,
		[SCHED_HIDE_AND_RELOAD] = true,
		[SCHED_RELOAD] = true,
		[SCHED_TAKE_COVER_FROM_ENEMY] = true,
		[SCHED_FORCED_GO] = true,
		[SCHED_FORCED_GO_RUN] = true,
		[SCHED_FLEE_FROM_BEST_SOUND] = true,
		[SCHED_COWER] = true,
	},
	BannedActivity_List = {
		[ACT_RANGE_ATTACK2] = true,
		[ACT_RAPPEL_LOOP] = true,
	},
	BannedHoldtype = {
		["melee"] = true,
		["rpg"] = true,
		["custom"] = true,
	},
	BannedWeaponClasses = {
		["weapon_rpg"] = true,
		["weapon_frag"] = true,
		["weapon_slam"] = true,
		["weapon_bugbait"] = true,
		["weapon_crowbar"] = true,
		["weapon_stunstick"] = true,
	},
	ValidNPCState = {
		[NPC_STATE_IDLE] = true,
		[NPC_STATE_ALERT] = true,
		[NPC_STATE_COMBAT] = true,
	},
	FriendlyDispos = {
		[D_LI] = true,
		[D_NU] = true,
	},
	NPCClass_CanJump = {
		["npc_combine_s"] = true,
		["npc_metropolice"] = true,
		["npc_citizen"] = true,
		["npc_hunter"] = true,
		["npc_alyx"] = true,
		["npc_barney"] = true,
		["npc_monk"] = true,
		["npc_vortigaunt"] = true,
		["npc_headcrab"] = true,
		["npc_headcrab_fast"] = true,
		["npc_headcrab_black"] = true,
		["npc_headcrab_poison"] = true,
	},
	SeeGrenade_Schedules = {
		[SCHED_FLEE_FROM_BEST_SOUND] = true,
		[SCHED_COWER] = true,
	},
	MeleeSchedule = {
		[SCHED_MELEE_ATTACK1] = true,
		[SCHED_MELEE_ATTACK2] = true,
	},
	NPCClass_BigDanger = {
		["npc_antlionguard"] = true,
		["npc_hunter"] = true,
		["npc_poisonzombie"] = true,
		["npc_zombine"] = true,
	},
	NPCClass_Banned = {
		["npc_headcrab_black"] = true,
		["npc_headcrab_poison"] = true,
		["npc_antlionguard"] = true,
	},
	NPCClass_KeyNPCs = {
		["npc_alyx"] = true,
		["npc_barney"] = true,
		["npc_monk"] = true,
	},
	NPCClass_Torso = {
		["npc_zombie_torso"] = true,
		["npc_fastzombie_torso"] = true,
	},
	NPCClass_Turret = {
		["npc_turret_ceiling"] = true,
		["npc_turret_floor"] = true,
		["npc_portal_turret_floor"] = true,
	},
	AR2BallSounds = {
		["weapons/physcannon/energy_bounce1.wav"] = true,
		["weapons/physcannon/energy_bounce2.wav"] = true,
		["weapons/physcannon/energy_disintegrate4.wav"] = true,
		["weapons/physcannon/energy_disintegrate5.wav"] = true,
		["weapons/physcannon/energy_sing_explosion2.wav"] = true,
	},
	TakeCaution_Schedules = {
		[SCHED_AMBUSH] = true,
		[SCHED_RUN_FROM_ENEMY_FALLBACK] = true,
		[SCHED_CHASE_ENEMY] = true,
		[SCHED_SHOOT_ENEMY_COVER] = true,
	},
	ExplosiveProps = {
		["models/props_c17/oildrum001_explosive.mdl"] = true,
		["models/props_junk/gascan001a.mdl"] = true,
		["models/props_junk/propane_tank001a.mdl"] = true,
	},
	NPCClass_TakingDmg = {
		["player"] = true,
		["npc_combine_s"] = true,
		["npc_metropolice"] = true,
		["npc_citizen"] = true,
		["npc_hunter"] = true,
		["npc_vortigaunt"] = true,
		["npc_alyx"] = true,
		["npc_barney"] = true,
		["npc_monk"] = true,
	},
	NAPC_FearSche = {
		[102] = true,
		[120] = true,
		[SCHED_TAKE_COVER_FROM_ENEMY] = true,
	},
}

local ACT_COMBINE_AR2_ALTFIRE = util.GetActivityIDByName("ACT_COMBINE_AR2_ALTFIRE")
if ACT_COMBINE_AR2_ALTFIRE and ACT_COMBINE_AR2_ALTFIRE ~= -1 then
	NAPC.Tables.BannedActivity_List[ACT_COMBINE_AR2_ALTFIRE] = true
end

local ACT_METROPOLICE_RELEASE_MANHACK = util.GetActivityIDByName("ACT_METROPOLICE_RELEASE_MANHACK")
if ACT_METROPOLICE_RELEASE_MANHACK and ACT_METROPOLICE_RELEASE_MANHACK ~= -1 then
	NAPC.Tables.BannedActivity_List[ACT_METROPOLICE_RELEASE_MANHACK] = true
end

NAPC.CurNPCList = {}
NAPC.CurTime_Tick = 0
NAPC.LethalDangerZones = {}
NAPC.RecentCasualties = {}
NAPC.TheaterSquads = {}
NAPC.ActiveMissiles = {}
NAPC.NextTheaterUpdate = 0
NAPC.NextDebugBroadcast = 0
NAPC.TickCount = 0
NAPC.Interval = 6
NAPC.ListCount = 0
NAPC.ListUpdateInterval = 10
NAPC.JumpHeight_S = Vector(0, 0, 250)
NAPC.S_Spread = Vector(20, 20, 0)
NAPC.T_Spread = Vector(15, 15, 0)
NAPC.ROCKET_CLEARANCE_MASK = bit.bor(MASK_SOLID, CONTENTS_GRATE, CONTENTS_DEBRIS, CONTENTS_HITBOX, CONTENTS_MONSTER)

NAPC.trRes = {}
NAPC.trData = { output = NAPC.trRes }

NAPC.hullTrRes = {}
NAPC.hullTrData = {
	mins = Vector(-16, -16, 0),
	maxs = Vector(16, 16, 60),
	mask = MASK_SOLID_BRUSHONLY,
	output = NAPC.hullTrRes,
}

NAPC.StepOffsets = {
	Vector(-64, 0, 0),
	Vector(64, 0, 0),
	Vector(0, -64, 0),
	Vector(0, 64, 0),
}

NAPC.AreaScoreRecords = {}
NAPC.AreaScore_Count = 0
NAPC.AreaScore_MaxRecords = 64
NAPC.AreaScore_TrackTime = 25
NAPC.AreaScore_VisionInterval = 2.0
NAPC.AreaScore_VisionRangeSqr = 2200 * 2200
NAPC.AreaScore_FireMemory = 20
NAPC.AreaScore_DeathDecay = 90
NAPC.AreaScore_InfluenceRadius = 200
NAPC.AreaScore_InfluenceRadiusSqr = NAPC.AreaScore_InfluenceRadius * NAPC.AreaScore_InfluenceRadius
NAPC.NextAreaSquadRoleUpdate = 0

NAPC.AreaScore_FactionOverrides = {
	npc_turret_floor = "combine",
	npc_turret_ceiling = "combine",
	npc_portal_turret_floor = "combine",
	npc_manhack = "combine",
	npc_cscanner = "combine",
	npc_clawscanner = "combine",
	npc_rollermine = "combine",
}

NAPC.AreaScore_Hostile = {
	combine = { resistance = true, zombie = true, other = true },
	resistance = { combine = true, zombie = true, other = true },
	zombie = { combine = true, resistance = true, other = true },
	other = { combine = true, resistance = true, zombie = true },
}

util.AddNetworkString("NAPC_DebugData")

function NAPC.IsRPGWeapon(wep)
	if not IsValid(wep) then
		return false
	end
	local class = wep:GetClass()
	if NAPC.Tables.BannedWeaponClasses[class] then
		return true
	end

	local hold = wep.GetHoldType and wep:GetHoldType()
	if hold == "rpg" or hold == "melee" then
		return true
	end

	local lowerClass = string.lower(class)
	if
		string.find(lowerClass, "rpg")
		or string.find(lowerClass, "rocket")
		or string.find(lowerClass, "missile")
		or string.find(lowerClass, "launcher")
	then
		return true
	end

	return false
end

function NAPC.IsRocketLauncher(wep)
	if not IsValid(wep) then
		return false
	end
	local class = wep:GetClass()
	if class == "weapon_rpg" then
		return true
	end

	local lowerClass = string.lower(class)
	if
		string.find(lowerClass, "rpg")
		or string.find(lowerClass, "rocket_launcher")
		or string.find(lowerClass, "missile_launcher")
		or string.find(lowerClass, "bazooka")
		or string.find(lowerClass, "at4")
		or string.find(lowerClass, "law")
	then
		return true
	end

	local hold = wep.GetHoldType and wep:GetHoldType()
	if
		hold == "rpg"
		and (
			string.find(lowerClass, "rocket")
			or string.find(lowerClass, "missile")
			or string.find(lowerClass, "launcher")
			or string.find(lowerClass, "heavy")
		)
	then
		return true
	end

	return false
end

function NAPC.WorksOnANP(npc)
	return NAPC.ConvarsBool["NAPC_WorksOn_ANPlus"] or not npc.IsANPlus or not npc:IsANPlus()
end

function NAPC.IsAvailable(npc, curSched, NPCState)
	if npc.GrenadeThrowEnd_NAPC and NAPC.CurTime_Tick < npc.GrenadeThrowEnd_NAPC then
		return false
	end

	if
		NAPC.Tables.BannedSchedule_List1[curSched]
		or NAPC.Tables.BannedActivity_List[npc:GetActivity()]
		or not NAPC.Tables.ValidNPCState[NPCState]
	then
		return false
	end

	if npc:GetClass() == "npc_metropolice" then
		if IsValid(npc:GetInternalVariable("m_hManhack")) then
			return false
		end
		for _, child in ipairs(npc:GetChildren()) do
			if IsValid(child) and child:GetClass() == "npc_manhack" then
				return false
			end
		end
		local seqName = npc:GetSequenceName(npc:GetSequence()) or ""
		if string.find(seqName, "manhack") or string.find(seqName, "deploy") then
			return false
		end
	end
	return true
end

function NAPC.IsFriendly(npc, target)
	return npc.Disposition and NAPC.Tables.FriendlyDispos[npc:Disposition(target)] or false
end

function NAPC.LogLethalDangerZone(pos, severity)
	severity = severity or 1
	local cur = NAPC.CurTime_Tick

	for i = #NAPC.LethalDangerZones, 1, -1 do
		if cur > NAPC.LethalDangerZones[i].expire then
			table.remove(NAPC.LethalDangerZones, i)
		end
	end

	if #NAPC.LethalDangerZones >= 12 then
		table.remove(NAPC.LethalDangerZones, 1)
	end

	NAPC.LethalDangerZones[#NAPC.LethalDangerZones + 1] = {
		pos = pos,
		radius = 160 + (severity * 40),
		expire = cur + (6 * severity),
		severity = severity,
	}
end

function NAPC.IsPosNearLethalDanger(pos, extraRadius)
	extraRadius = extraRadius or 0
	local cur = NAPC.CurTime_Tick
	for i = #NAPC.LethalDangerZones, 1, -1 do
		local zone = NAPC.LethalDangerZones[i]
		if cur > zone.expire then
			table.remove(NAPC.LethalDangerZones, i)
		else
			local maxDist = zone.radius + extraRadius
			if (zone.pos - pos):LengthSqr() <= (maxDist * maxDist) then
				return true, zone
			end
		end
	end
	return false, nil
end

function NAPC.OODA_EvaluateAttribution(npc, newDecision, reason)
	local ooda = npc.OODA or npc.CECA
	if not ooda then
		return
	end

	local prevDecision = ooda.LastDecision
	if not prevDecision or prevDecision == "NONE" then
		ooda.ActiveDecisionStartTime = NAPC.CurTime_Tick
		ooda.ActiveDecisionStartHP = npc:Health()
		ooda.ActiveDecisionDmgDealt = 0
		ooda.ActiveDecisionDmgTaken = 0
		return
	end

	local duration = NAPC.CurTime_Tick - (ooda.ActiveDecisionStartTime or NAPC.CurTime_Tick)
	local dmgTaken = ooda.ActiveDecisionDmgTaken or 0
	local dmgDealt = ooda.ActiveDecisionDmgDealt or 0
	local hpLost = math.max(0, (ooda.ActiveDecisionStartHP or npc:Health()) - npc:Health())
	local scoreDelta = 0

	if dmgDealt > 25 and dmgTaken < 15 then
		scoreDelta = scoreDelta + 1.5 + (dmgDealt / 35)
	elseif dmgDealt > 0 and dmgTaken == 0 and duration >= 1.5 then
		scoreDelta = scoreDelta + 1.0
	end

	if prevDecision == "SUPPRESSIVE_FIRE" and dmgTaken < 10 and duration > 2.0 then
		scoreDelta = scoreDelta + 0.8
	end

	if
		(
			prevDecision == "HOLD_AND_ATTACK"
			or prevDecision == "HIGH_GROUND_REINFORCE"
			or prevDecision == "TAKE_COVER_SHOOTING_POS"
		) and dmgDealt == 0
	then
		if duration > 3.0 then
			scoreDelta = scoreDelta - (1.0 + math.min(2.5, (duration - 3.0) * 0.4))
		end
	end

	if dmgTaken > 20 or hpLost > 20 then
		local penalty = 1.5 + (dmgTaken / 25)
		scoreDelta = scoreDelta - penalty

		if prevDecision == "FLANK_MANEUVER" or prevDecision == "SQUAD_COORDINATED_FLANK" then
			ooda.FailedFlankAttempts = (ooda.FailedFlankAttempts or 0) + 1
			ooda.FlankSide = -ooda.FlankSide
		elseif prevDecision == "SQUAD_BOUNDING_ADVANCE" or prevDecision == "SQUAD_ADVANCE_CLOSER" then
			NAPC.LogLethalDangerZone(npc:GetPos(), 2)
		end
	end

	local currentScore = ooda.TacticalScores[prevDecision] or 0
	ooda.TacticalScores[prevDecision] = math.Clamp((currentScore * 0.85) + scoreDelta, -5.0, 5.0)

	ooda.TacticalHistory[#ooda.TacticalHistory + 1] = {
		decision = prevDecision,
		duration = duration,
		dmgDealt = dmgDealt,
		dmgTaken = dmgTaken,
		hpLost = hpLost,
		scoreDelta = scoreDelta,
		reason = reason or "DECISION_CHANGE",
		time = NAPC.CurTime_Tick,
	}
	if #ooda.TacticalHistory > 8 then
		table.remove(ooda.TacticalHistory, 1)
	end

	ooda.ActiveDecisionStartTime = NAPC.CurTime_Tick
	ooda.ActiveDecisionStartHP = npc:Health()
	ooda.ActiveDecisionDmgDealt = 0
	ooda.ActiveDecisionDmgTaken = 0
end

function NAPC.OODA_UpdateEnemyProfile(npc, enemy, obs)
	if not IsValid(enemy) or not npc.OODA then
		return
	end
	local ooda = npc.OODA
	local eIdx = enemy:EntIndex()

	if not ooda.EnemyProfile[eIdx] then
		ooda.EnemyProfile[eIdx] = {
			firstSeen = NAPC.CurTime_Tick,
			lastSeen = NAPC.CurTime_Tick,
			lastPos = enemy:GetPos(),
			aggressionScore = 0,
			closingSpeed = 0,
			isRusher = false,
			isSniper = false,
			engagementCount = 0,
		}
	end

	local prof = ooda.EnemyProfile[eIdx]
	prof.lastSeen = NAPC.CurTime_Tick
	prof.engagementCount = prof.engagementCount + 1

	local curPos = enemy:GetPos()
	local toNpc = (npc:GetPos() - curPos):GetNormalized()
	local enemyVelocity = enemy:GetVelocity()
	local closingVel = enemyVelocity:Dot(toNpc)
	prof.closingSpeed = (prof.closingSpeed * 0.7) + (closingVel * 0.3)

	if prof.closingSpeed > 140 or (obs.enemyDist < 400 and (curPos - prof.lastPos):Length() > 60) then
		prof.aggressionScore = math.min(5.0, prof.aggressionScore + 0.45)
	else
		prof.aggressionScore = math.max(-2.0, prof.aggressionScore - 0.1)
	end

	prof.lastPos = curPos
	prof.isRusher = (prof.aggressionScore >= 1.6)
	prof.isSniper = (obs.enemyDist > 950 and prof.aggressionScore <= 0 and obs.isUnderFire)
end

function NAPC.IsPositionInWater(pos)
	if not pos then
		return false
	end

	local contents = util.PointContents(pos + Vector(0, 0, 16))
	if bit.band(contents, bit.bor(CONTENTS_WATER, CONTENTS_SLIME)) ~= 0 then
		return true
	end

	local contentsLow = util.PointContents(pos + Vector(0, 0, 4))
	if bit.band(contentsLow, bit.bor(CONTENTS_WATER, CONTENTS_SLIME)) ~= 0 then
		return true
	end

	if navmesh and navmesh.IsLoaded() and isfunction(navmesh.GetNearestNavArea) then
		local area = navmesh.GetNearestNavArea(pos, false, 120, false, true)
		if IsValid(area) and (area:IsUnderwater() or bit.band(area:GetAttributes(), NAV_MESH_WATER or 32) ~= 0) then
			return true
		end
	end

	return false
end

function NAPC.NavMeshPathExists(startPos, targetPos, maxSteps)
	if not (navmesh and navmesh.IsLoaded and navmesh.IsLoaded()) then
		return true
	end

	local startArea = navmesh.GetNearestNavArea(startPos, false, 400, false, true)
	local targetArea = navmesh.GetNearestNavArea(targetPos, false, 400, false, true)

	if not IsValid(startArea) or not IsValid(targetArea) then
		return false
	end

	if startArea == targetArea or (startArea.IsConnected and startArea:IsConnected(targetArea)) then
		return true
	end

	if targetArea:IsUnderwater() or (targetArea.IsBlocked and targetArea:IsBlocked(TEAM_ANY)) then
		return false
	end

	maxSteps = maxSteps or 45
	local openQueue = { startArea }
	local visited = { [startArea:GetID()] = true }
	local targetID = targetArea:GetID()
	local maxStepUp = 32
	local maxDrop = 240
	local steps = 0

	local head = 1
	while head <= #openQueue and steps < maxSteps do
		steps = steps + 1
		local current = openQueue[head]
		head = head + 1

		local curCenter = current:GetCenter()
		local adjs = current:GetAdjacentAreas()
		if istable(adjs) then
			for i = 1, #adjs do
				local neighbor = adjs[i]
				if IsValid(neighbor) then
					local nID = neighbor:GetID()
					if nID == targetID then
						return true
					end

					if
						not visited[nID]
						and not neighbor:IsUnderwater()
						and bit.band(neighbor:GetAttributes(), NAV_MESH_WATER or 32) == 0
					then
						if not (neighbor.IsBlocked and neighbor:IsBlocked(TEAM_ANY)) then
							local nCenter = neighbor:GetCenter()
							local zDelta = nCenter.z - curCenter.z
							if zDelta <= maxStepUp and zDelta >= -maxDrop then
								visited[nID] = true
								openQueue[#openQueue + 1] = neighbor
							end
						end
					end
				end
			end
		end
	end

	return false
end

function NAPC.GetAreaTacticalPos(area, refPos, enemyPos)
	if not IsValid(area) then
		return nil
	end

	local function VerifyAndSnap(pos)
		if not pos or not isvector(pos) or not util.IsInWorld(pos) then
			return nil
		end
		local tr = util.TraceLine({
			start = pos + Vector(0, 0, 32),
			endpos = pos - Vector(0, 0, 96),
			mask = MASK_SOLID_BRUSHONLY,
		})
		if tr.Hit and not tr.StartSolid and tr.HitNormal.z > 0.65 then
			return tr.HitPos
		end
		return nil
	end

	if area.GetHidingSpots then
		local spots = area:GetHidingSpots(1)
		if not spots or #spots == 0 then
			spots = area:GetHidingSpots(7)
		end
		if istable(spots) and #spots > 0 then
			local validSpots = {}
			for _, sp in ipairs(spots) do
				local snapped = VerifyAndSnap(sp)
				if snapped then
					validSpots[#validSpots + 1] = snapped
				end
			end
			if #validSpots > 0 then
				if #validSpots == 1 then
					return validSpots[1]
				end
				if isvector(enemyPos) then
					local bestSpot = validSpots[1]
					local bestDist = -1
					for _, sp in ipairs(validSpots) do
						local d = (sp - enemyPos):LengthSqr()
						if d > bestDist then
							bestDist = d
							bestSpot = sp
						end
					end
					return bestSpot
				elseif isvector(refPos) then
					local bestSpot = validSpots[1]
					local bestDist = math.huge
					for _, sp in ipairs(validSpots) do
						local d = (sp - refPos):LengthSqr()
						if d < bestDist then
							bestDist = d
							bestSpot = sp
						end
					end
					return bestSpot
				end
				return validSpots[1]
			end
		end
	end

	local center = area:GetCenter()
	local snappedCenter = VerifyAndSnap(center)
	local sizeX = area.GetSizeX and area:GetSizeX() or 0
	local sizeY = area.GetSizeY and area:GetSizeY() or 0

	if sizeX < 64 and sizeY < 64 then
		return snappedCenter or center
	end

	local bestCorner = nil
	local bestScore = -math.huge

	for cId = 0, 3 do
		local corner = area:GetCorner(cId)
		if corner then
			local distToCenter = (corner - center):Length()
			local insetFrac = math.Clamp(24 / math.max(1, distToCenter), 0.15, 0.35)
			local pos = LerpVector(insetFrac, corner, center)
			local snappedPos = VerifyAndSnap(pos)

			if snappedPos then
				local score = 0
				if isvector(enemyPos) then
					local tr = util.TraceLine({
						start = snappedPos + Vector(0, 0, 48),
						endpos = enemyPos + Vector(0, 0, 48),
						mask = MASK_SOLID_BRUSHONLY,
					})
					if tr.Hit then
						score = score + 50
					end
					score = score + ((snappedPos - enemyPos):Length() * 0.05)
				elseif isvector(refPos) then
					score = score - (snappedPos - refPos):Length()
				else
					score = math.random(1, 10)
				end

				if score > bestScore then
					bestScore = score
					bestCorner = snappedPos
				end
			end
		end
	end

	return bestCorner or snappedCenter or center
end

function NAPC.GetReachableNavCandidates(npc, maxRadius, minRadius, maxCount)
	if not (navmesh and navmesh.IsLoaded and navmesh.IsLoaded()) then
		return nil
	end

	maxRadius = maxRadius or 4000
	minRadius = minRadius or 300
	maxCount = maxCount or 10

	local npcPos = npc:GetPos()
	local cur = NAPC.CurTime_Tick

	if npc.CachedNavTime_NAPC and (cur - npc.CachedNavTime_NAPC < 2.5) and npc.CachedNavOrigin_NAPC then
		if (npcPos - npc.CachedNavOrigin_NAPC):LengthSqr() < 62500 and npc.CachedNavList_NAPC then
			return npc.CachedNavList_NAPC
		end
	end

	local candidates = {}
	local seenAreas = {}

	local sampleRings = { minRadius, (minRadius + maxRadius) * 0.5, maxRadius }
	local sampleAngles = { 0, 45, -45, 90, -90, 135, -135, 180 }
	local baseAng = npc:GetAngles().y

	for _, dist in ipairs(sampleRings) do
		if #candidates >= maxCount then
			break
		end
		for _, angOffset in ipairs(sampleAngles) do
			if #candidates >= maxCount then
				break
			end

			local rad = math.rad(baseAng + angOffset)
			local probePos = npcPos + Vector(math.cos(rad) * dist, math.sin(rad) * dist, 0)
			local area = navmesh.GetNearestNavArea(probePos, false, 400, false, true)

			if IsValid(area) and not seenAreas[area:GetID()] then
				seenAreas[area:GetID()] = true
				if not area:IsUnderwater() and bit.band(area:GetAttributes(), NAV_MESH_WATER or 32) == 0 then
					if not (area.IsBlocked and area:IsBlocked(TEAM_ANY)) then
						local addedFromArea = false

						if area.GetHidingSpots then
							local hidingSpots = area:GetHidingSpots(7)
							if istable(hidingSpots) and #hidingSpots > 0 then
								for _, hPos in ipairs(hidingSpots) do
									if #candidates >= maxCount then
										break
									end
									local dSqr = (hPos - npcPos):LengthSqr()
									if dSqr >= (minRadius * minRadius) and dSqr <= (maxRadius * maxRadius) then
										local tr = util.TraceLine({
											start = hPos + Vector(0, 0, 32),
											endpos = hPos - Vector(0, 0, 80),
											mask = MASK_SOLID_BRUSHONLY,
										})
										if tr.Hit and not tr.StartSolid and tr.HitNormal.z > 0.65 then
											candidates[#candidates + 1] = tr.HitPos
											addedFromArea = true
										end
									end
								end
							end
						end

						if #candidates < maxCount then
							local center = area:GetCenter()
							local sizeX = area.GetSizeX and area:GetSizeX() or 0
							local sizeY = area.GetSizeY and area:GetSizeY() or 0

							if sizeX >= 80 or sizeY >= 80 then
								for cId = 0, 3 do
									if #candidates >= maxCount then
										break
									end
									local corner = area:GetCorner(cId)
									if corner then
										local distToCenter = (corner - center):Length()
										local insetFrac = math.Clamp(24 / math.max(1, distToCenter), 0.15, 0.35)
										local cornerPos = LerpVector(insetFrac, corner, center)
										local dSqr = (cornerPos - npcPos):LengthSqr()
										if dSqr >= (minRadius * minRadius) and dSqr <= (maxRadius * maxRadius) then
											local tr = util.TraceLine({
												start = cornerPos + Vector(0, 0, 32),
												endpos = cornerPos - Vector(0, 0, 80),
												mask = MASK_SOLID_BRUSHONLY,
											})
											if tr.Hit and not tr.StartSolid and tr.HitNormal.z > 0.65 then
												candidates[#candidates + 1] = tr.HitPos
												addedFromArea = true
											end
										end
									end
								end
							elseif not addedFromArea then
								local dSqr = (center - npcPos):LengthSqr()
								if dSqr >= (minRadius * minRadius) and dSqr <= (maxRadius * maxRadius) then
									local tr = util.TraceLine({
										start = center + Vector(0, 0, 32),
										endpos = center - Vector(0, 0, 80),
										mask = MASK_SOLID_BRUSHONLY,
									})
									if tr.Hit and not tr.StartSolid and tr.HitNormal.z > 0.65 then
										candidates[#candidates + 1] = tr.HitPos
									end
								end
							end
						end
					end
				end
			end
		end
	end

	npc.CachedNavTime_NAPC = cur
	npc.CachedNavOrigin_NAPC = npcPos
	npc.CachedNavList_NAPC = candidates

	return candidates
end

function NAPC.GetSquadID(npc)
	if not IsValid(npc) then
		return nil
	end

	if npc.DynamicSquadID_NAPC then
		return npc.DynamicSquadID_NAPC
	end

	local squadName = npc:GetInternalVariable("m_SquadName")
	if isstring(squadName) and squadName ~= "" then
		return squadName
	end

	if NAPC.CurTime_Tick < (npc.NextSquadClusterEval_NAPC or 0) and npc.DynamicSquadID_NAPC then
		return npc.DynamicSquadID_NAPC
	end

	npc.NextSquadClusterEval_NAPC = NAPC.CurTime_Tick + 2.0
	local myPos = npc:GetPos()
	local clusterID = "cluster_" .. npc:EntIndex()
	local class = npc:GetClass()

	for ally, _ in pairs(NAPC.CurNPCList) do
		if IsValid(ally) and ally ~= npc and ally:IsNPC() and ally:Alive() and NAPC.IsFriendly(npc, ally) then
			local maxDistSqr = (class == "npc_combine_s" or class == "npc_metropolice") and 16000000 or 422500
			if (ally:GetPos() - myPos):LengthSqr() <= maxDistSqr then
				if ally.DynamicSquadID_NAPC then
					clusterID = ally.DynamicSquadID_NAPC
					break
				end
			end
		end
	end

	npc.DynamicSquadID_NAPC = clusterID
	return clusterID
end

function NAPC.BlacklistUnreachablePos(npc, pos, duration)
	if not IsValid(npc) or not pos then
		return
	end
	duration = duration or 5.0
	local expireTime = NAPC.CurTime_Tick + duration

	npc.UnreachableDestinations_NAPC = npc.UnreachableDestinations_NAPC or {}
	table.insert(npc.UnreachableDestinations_NAPC, {
		pos = pos,
		expire = expireTime,
	})
	if #npc.UnreachableDestinations_NAPC > 10 then
		table.remove(npc.UnreachableDestinations_NAPC, 1)
	end

	local mySquadID = NAPC.GetSquadID(npc)
	if mySquadID then
		for ally, _ in pairs(NAPC.CurNPCList) do
			if IsValid(ally) and ally ~= npc and ally:IsNPC() and ally:Alive() and NAPC.IsFriendly(npc, ally) then
				if NAPC.GetSquadID(ally) == mySquadID then
					ally.UnreachableDestinations_NAPC = ally.UnreachableDestinations_NAPC or {}
					table.insert(ally.UnreachableDestinations_NAPC, {
						pos = pos,
						expire = expireTime,
					})
					if #ally.UnreachableDestinations_NAPC > 10 then
						table.remove(ally.UnreachableDestinations_NAPC, 1)
					end
				end
			end
		end
	end
end

function NAPC.AreaAreHostile(a, b)
	if a == b then
		return false
	end
	local h = NAPC.AreaScore_Hostile[a]
	return h ~= nil and h[b] == true
end

function NAPC.AreaGetFactionOf(ent)
	if not IsValid(ent) then
		return "other"
	end
	if ent:IsPlayer() then
		return "resistance"
	end
	local class = ent:GetClass()
	return NAPC.AreaScore_FactionOverrides[class] or NAPC.GetFaction(class)
end

function NAPC.PlayerVisionIgnored(ply)
	if not IsValid(ply) or not ply:IsPlayer() then
		return false
	end
	if ply.GetNoTarget and ply:GetNoTarget() then
		return true
	end
	local cv = GetConVar("ai_ignoreplayers") or GetConVar("ignoreplayers")
	if cv and cv:GetBool() then
		return true
	end
	return false
end

function NAPC.AreaGetRecord(area)
	if not IsValid(area) then
		return nil
	end
	local id = area:GetID()
	local rec = NAPC.AreaScoreRecords[id]
	if not rec then
		if NAPC.AreaScore_Count >= NAPC.AreaScore_MaxRecords then
			return nil
		end
		rec = {
			id = id,
			area = area,
			pos = NAPC.GetAreaTacticalPos(area),
			deaths = {},
			firedBy = {},
			seenBy = {},
			flankDebug = 0,
			overlookDebug = 0,
			flankDebugTime = 0,
			overlookDebugTime = 0,
			trackedUntil = 0,
			lastVisionUpdate = 0,
			nextVisionUpdate = 0,
		}
		NAPC.AreaScoreRecords[id] = rec
		NAPC.AreaScore_Count = NAPC.AreaScore_Count + 1
	end
	rec.area = area
	return rec
end

function NAPC.AreaTouch(rec, now)
	rec.trackedUntil = math.max(rec.trackedUntil, now + NAPC.AreaScore_TrackTime)
end

function NAPC.AreaAddDeath(rec, faction, weight, now)
	local d = rec.deaths[faction]
	if not d then
		d = { count = 0, last = 0 }
		rec.deaths[faction] = d
	end
	d.count = d.count + weight
	d.last = now
	NAPC.AreaTouch(rec, now)
end

function NAPC.AreaRecordDeath(pos, faction)
	if not isvector(pos) or faction == "other" then
		return
	end
	if not (navmesh and navmesh.IsLoaded and navmesh.IsLoaded()) then
		return
	end
	local area = navmesh.GetNearestNavArea(pos, false, 220, false, true)
	if not IsValid(area) then
		return
	end
	local now = CurTime()
	local rec = NAPC.AreaGetRecord(area)
	if rec then
		NAPC.AreaAddDeath(rec, faction, 1, now)
	end
	local adjs = area:GetAdjacentAreas()
	if istable(adjs) then
		for _, adj in ipairs(adjs) do
			if IsValid(adj) then
				local r = NAPC.AreaGetRecord(adj)
				if r then
					NAPC.AreaAddDeath(r, faction, 0.5, now)
				end
			end
		end
	end
end

function NAPC.AreaAddFire(rec, shooterFaction, key, weight, now)
	local set = rec.firedBy[shooterFaction]
	if not set then
		set = {}
		rec.firedBy[shooterFaction] = set
	end
	local e = set[key]
	if e then
		e.t = now
		e.w = math.max(e.w, weight)
	else
		set[key] = { t = now, w = weight }
	end
	NAPC.AreaTouch(rec, now)
end

function NAPC.AreaDeathScore(rec, faction, now)
	local d = rec.deaths and rec.deaths[faction]
	if not d or d.count <= 0 then
		return 0
	end
	local fade = math.Clamp(1 - ((now - d.last) / NAPC.AreaScore_DeathDecay), 0, 1)
	return d.count * (0.3 + 0.7 * fade)
end

function NAPC.AreaFiredScore(rec, victimFaction, now)
	local total = 0
	if not rec.firedBy then
		return 0
	end

	for shooterFaction, set in pairs(rec.firedBy) do
		if NAPC.AreaAreHostile(victimFaction, shooterFaction) then
			for key, e in pairs(set) do
				local age = now - e.t
				if age > NAPC.AreaScore_FireMemory then
					set[key] = nil
				else
					total = total + e.w * math.Clamp(1 - (age / NAPC.AreaScore_FireMemory) * 0.75, 0.25, 1)
				end
			end
		end
	end
	return total
end

function NAPC.AreaSeenScore(rec, victimFaction, now)
	if (now - (rec.lastVisionUpdate or 0)) > 4.0 then
		return 0
	end
	return rec.seenBy and rec.seenBy[victimFaction] or 0
end

function NAPC.AreaDangerScore(rec, faction, now, enemy)
	if not rec or faction == "other" then
		return 0
	end
	now = now or CurTime()

	local deaths = NAPC.AreaDeathScore(rec, faction, now)
	local fired = NAPC.AreaFiredScore(rec, faction, now)
	local seen = NAPC.AreaSeenScore(rec, faction, now)

	local hazardScore = (deaths * 2.2) + (fired * 1.5) + (seen * 1.0)

	if IsValid(enemy) then
		local flank = NAPC.AreaScoreFlankPos(rec.pos, enemy)
		local overlook = NAPC.AreaScoreOverlookPos(rec.pos, enemy)
		rec.flankDebug = flank
		rec.overlookDebug = overlook

		local distToEnemySqr = (rec.pos - enemy:GetPos()):LengthSqr()
		if distToEnemySqr < 250000 then
			local prox = 1 - (math.sqrt(distToEnemySqr) / 500)
			hazardScore = hazardScore + (prox * 3.0)
		end
	end

	return math.max(0, hazardScore)
end

function NAPC.AreaGetDangerAtPos(pos, faction, now, enemy)
	if not isvector(pos) then
		return 0
	end
	now = now or CurTime()
	local worstAvoidance = 0

	for _, rec in pairs(NAPC.AreaScoreRecords) do
		local dSqr = rec.pos:DistToSqr(pos)
		if dSqr <= NAPC.AreaScore_InfluenceRadiusSqr then
			local w = 1 - (math.sqrt(dSqr) / NAPC.AreaScore_InfluenceRadius)
			local s = NAPC.AreaDangerScore(rec, faction, now, enemy) * w
			if s > worstAvoidance then
				worstAvoidance = s
			end
		end
	end

	return worstAvoidance
end

function NAPC.AreaScoreFlankPos(pos, enemy)
	if not isvector(pos) or not IsValid(enemy) then
		return 0
	end
	local enemyPos = enemy:GetPos()
	local dx = enemyPos.x - pos.x
	local dy = enemyPos.y - pos.y
	local dist = math.sqrt(dx * dx + dy * dy)
	if dist < 120 then
		return 0
	end

	local facing = enemy:GetForward()
	local facingLen = math.sqrt(facing.x * facing.x + facing.y * facing.y)
	if facingLen < 0.05 then
		return 0.5
	end

	local behindDot = ((pos.x - enemyPos.x) * facing.x + (pos.y - enemyPos.y) * facing.y) / (dist * facingLen)
	local behindness = math.Clamp((behindDot + 1) * 0.5, 0, 1)

	local distFactor = math.Clamp((dist - 200) / 300, 0, 1) * math.Clamp((4800 - dist) / 1200, 0, 1)

	return behindness * distFactor
end

function NAPC.IsDestinationValid(npc, targetPos, allowDirectBlocked)
	if not targetPos or not isvector(targetPos) or not IsValid(npc) then
		return false
	end

	if not util.IsInWorld(targetPos) then
		return false
	end

	if NAPC.IsPositionInWater(targetPos) then
		return false
	end

	if NAPC.IsPosNearLethalDanger(targetPos, 48) then
		return false
	end

	local trDown = util.TraceLine({
		start = targetPos + Vector(0, 0, 32),
		endpos = targetPos - Vector(0, 0, 96),
		mask = MASK_SOLID_BRUSHONLY,
		filter = npc,
	})
	if not trDown.Hit or trDown.StartSolid or trDown.HitNormal.z < 0.65 then
		return false
	end

	local trHull = util.TraceHull({
		start = trDown.HitPos + Vector(0, 0, 4),
		endpos = trDown.HitPos + Vector(0, 0, 58),
		mins = Vector(-14, -14, 0),
		maxs = Vector(14, 14, 60),
		mask = MASK_PLAYERSOLID_BRUSHONLY,
		filter = npc,
	})
	if trHull.StartSolid or trHull.Hit then
		return false
	end

	local npcPos = npc:GetPos()
	local straightDist = (targetPos - npcPos):Length()

	local elevDelta = targetPos.z - npcPos.z
	if elevDelta > 36 and straightDist < 500 then
		local trRamp = util.TraceLine({
			start = npcPos + Vector(0, 0, 20),
			endpos = targetPos + Vector(0, 0, 20),
			mask = MASK_PLAYERSOLID_BRUSHONLY,
			filter = npc,
		})
		if trRamp.Hit and (trRamp.HitPos - targetPos):LengthSqr() > 3600 then
			return false
		end
	end

	if navmesh and navmesh.IsLoaded and navmesh.IsLoaded() and isfunction(navmesh.GetNearestNavArea) then
		local cur = NAPC.CurTime_Tick
		if not npc.CachedNavArea_NAPC or (cur - (npc.CachedNavAreaTime_NAPC or 0) > 0.6) then
			npc.CachedNavArea_NAPC = navmesh.GetNearestNavArea(npcPos, false, 300, false, true)
			npc.CachedNavAreaTime_NAPC = cur
		end

		local startArea = npc.CachedNavArea_NAPC
		local targetArea = navmesh.GetNearestNavArea(trDown.HitPos, false, 180, false, true)

		if not IsValid(startArea) or not IsValid(targetArea) or targetArea:IsUnderwater() then
			return false
		end

		if targetArea.IsBlocked and targetArea:IsBlocked(TEAM_ANY) then
			return false
		end

		if math.abs(trDown.HitPos.z - targetArea:GetCenter().z) > 64 then
			return false
		end

		if math.abs(startArea:GetCenter().z - targetArea:GetCenter().z) > 60 then
			if not startArea:IsConnected(targetArea) and not targetArea:IsConnected(startArea) then
				local areAdjacent = false
				local adjAreas = startArea:GetAdjacentAreas()
				if istable(adjAreas) then
					for i = 1, #adjAreas do
						if adjAreas[i] == targetArea then
							areAdjacent = true
							break
						end
					end
				end
				if not areAdjacent and straightDist < 400 then
					return false
				end
			end
		end
	end

	return true
end

function NAPC.FindFlankPos(npc, enemy, allThreats)
	if not IsValid(npc) or not IsValid(enemy) then
		return nil
	end

	local cur = NAPC.CurTime_Tick
	local npcPos = npc:GetPos()
	local enemyPos = enemy:GetPos()

	if npc.CachedFlankTime_NAPC and (cur - npc.CachedFlankTime_NAPC < 1.5) and npc.CachedFlankPos_NAPC then
		if
			npc.CachedFlankEnemy_NAPC == enemy
			and (npcPos - (npc.CachedFlankOrigin_NAPC or npcPos)):LengthSqr() < 22500
		then
			return npc.CachedFlankPos_NAPC
		end
	end

	local ceca = npc.CECA or npc.OODA
	local enemyEye = enemy:EyePos()
	local toEnemy = (enemyPos - npcPos):GetNormalized()
	local flankSide = (ceca and ceca.FlankSide) or 1

	local bestPos = nil
	local bestScore = -99999

	local sampleAngles = { 55 * flankSide, 90 * flankSide, 135 * flankSide, 175, -70 * flankSide }
	local sampleDists = { 400, 680, 950 }

	for _, dist in ipairs(sampleDists) do
		for _, ang in ipairs(sampleAngles) do
			local dir = (toEnemy:Angle() + Angle(0, ang, 0)):Forward()
			local candidatePos = enemyPos + (dir * dist)
			local dToNPC = (candidatePos - npcPos):Length()

			if NAPC.IsDestinationValid(npc, candidatePos, false) then
				NAPC.trData.start = candidatePos + Vector(0, 0, 96)
				NAPC.trData.endpos = candidatePos - Vector(0, 0, 256)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)

				if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
					local groundPos = NAPC.trRes.HitPos
					if not NAPC.IsPositionInWater(groundPos) then
						local standEye = groundPos + Vector(0, 0, 64)

						NAPC.trData.start = standEye
						NAPC.trData.endpos = enemyEye
						NAPC.trData.filter = { npc, enemy }
						NAPC.trData.mask = MASK_SHOT
						util.TraceLine(NAPC.trData)

						local hasLOS = (NAPC.trRes.Fraction >= 0.88 or NAPC.trRes.Entity == enemy)

						NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
						NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
						NAPC.hullTrData.filter = nil
						util.TraceHull(NAPC.hullTrData)

						if not NAPC.hullTrRes.Hit then
							local toCand = (standEye - enemyEye):GetNormalized()
							local angleDisparity = enemy:GetAimVector():Dot(toCand)
							local blindAngleBonus = (1.0 - angleDisparity) * 50
							local avoidancePenalty =
								NAPC.AreaGetDangerAtPos(groundPos, NAPC.AreaGetFactionOf(npc), cur, enemy)

							local score = 70
								+ blindAngleBonus
								+ (hasLOS and 40 or 15)
								- (dToNPC * 0.04)
								- (avoidancePenalty * 15)

							if score > bestScore then
								bestScore = score
								bestPos = groundPos
							end
						end
					end
				end
			end
		end
	end

	if bestPos then
		npc.CachedFlankTime_NAPC = cur
		npc.CachedFlankPos_NAPC = bestPos
		npc.CachedFlankEnemy_NAPC = enemy
		npc.CachedFlankOrigin_NAPC = npcPos
	end

	return bestPos
end

function NAPC.AreaScoreOverlookPos(pos, enemy, rec)
	if not isvector(pos) or not IsValid(enemy) then
		return 0
	end
	local enemyPos = enemy:GetPos()
	local zDelta = pos.z - enemyPos.z
	if zDelta < 48 then
		return 0
	end

	NAPC.trData.start = pos + Vector(0, 0, 60)
	NAPC.trData.endpos = enemyPos + Vector(0, 0, 48)
	NAPC.trData.mask = MASK_SHOT
	NAPC.trData.filter = enemy
	util.TraceLine(NAPC.trData)
	if NAPC.trRes.Hit and NAPC.trRes.Entity ~= enemy then
		return 0
	end

	local score = math.Clamp((zDelta - 48) / 280, 0, 1)

	local isLedge = false
	if rec and rec.isLedge ~= nil then
		isLedge = rec.isLedge
	else
		local probe = Vector(pos.x + (enemyPos.x - pos.x) * 0.5, pos.y + (enemyPos.y - pos.y) * 0.5, pos.z + 16)
		NAPC.trData.start = probe
		NAPC.trData.endpos = probe - Vector(0, 0, 300)
		NAPC.trData.mask = MASK_SOLID_BRUSHONLY
		NAPC.trData.filter = nil
		util.TraceLine(NAPC.trData)

		isLedge = NAPC.trRes.Hit and (((probe.z - 16) - NAPC.trRes.HitPos.z) >= 110)
		if rec then
			rec.isLedge = isLedge
		end
	end

	if isLedge then
		score = score * 1.35
	end

	return math.min(score, 1.0)
end

function NAPC.AreaUpdateVisionForRecord(rec, now)
	local counts = { combine = 0, resistance = 0 }
	local target = rec.pos + Vector(0, 0, 48)

	local function noteObserver(eye, forward, observerFaction)
		if eye:DistToSqr(target) > NAPC.AreaScore_VisionRangeSqr then
			return
		end
		NAPC.trData.start = eye
		NAPC.trData.endpos = target
		NAPC.trData.mask = MASK_VISIBLE
		NAPC.trData.filter = nil
		util.TraceLine(NAPC.trData)

		if NAPC.trRes.Hit and NAPC.trRes.Fraction < 0.98 then
			return
		end

		local toArea = target - eye
		toArea:Normalize()
		local w = (toArea:Dot(forward) > 0.17) and 1.0 or 0.5
		for victim, hostiles in pairs(NAPC.AreaScore_Hostile) do
			if hostiles[observerFaction] then
				counts[victim] = (counts[victim] or 0) + w
			end
		end
	end

	for ent, _ in pairs(NAPC.CurNPCList) do
		if IsValid(ent) and ent:IsNPC() and ent:Alive() then
			local f = NAPC.AreaGetFactionOf(ent)
			if f ~= "other" then
				noteObserver(ent:EyePos(), ent:GetForward(), f)
			end
		end
	end

	for _, ply in ipairs(player.GetAll()) do
		if IsValid(ply) and ply:Alive() and not NAPC.PlayerVisionIgnored(ply) then
			noteObserver(ply:EyePos(), ply:GetForward(), "resistance")
		end
	end

	rec.seenBy.combine = counts.combine
	rec.seenBy.resistance = counts.resistance
	rec.lastVisionUpdate = now
end

function NAPC.AreaRegisterCombatAreas(now)
	if (NAPC.NextAreaRegBatch or 0) > now then
		return
	end
	NAPC.NextAreaRegBatch = now + 1.8

	local registered = 0
	for npc, _ in pairs(NAPC.CurNPCList) do
		if registered >= 16 then
			break
		end
		if IsValid(npc) and npc:IsNPC() and npc:Alive() and npc.GetEnemy then
			local enemy = npc:GetEnemy()
			if IsValid(enemy) then
				local skip = enemy:IsPlayer() and NAPC.PlayerVisionIgnored(enemy)
				if not skip then
					local areas = navmesh.Find(enemy:GetPos(), 1600, 140, 180)
					if istable(areas) then
						for i = 1, #areas do
							if registered >= 16 then
								break
							end
							local area = areas[i]
							if IsValid(area) and not area:IsUnderwater() then
								local rec = NAPC.AreaGetRecord(area)
								if rec then
									NAPC.AreaTouch(rec, now)
									registered = registered + 1
								end
							end
						end
					end
				end
			end
		end
	end
end

function NAPC.AreaUpdateSquadRoles(now)
	if not NAPC.ConvarsBool["NAPC_OODA_SquadTactics"] or now < NAPC.NextAreaSquadRoleUpdate then
		return
	end
	NAPC.NextAreaSquadRoleUpdate = now + 3.0

	local squads = {}
	local order = {}
	for npc, _ in pairs(NAPC.CurNPCList) do
		if
			IsValid(npc)
			and npc:IsNPC()
			and npc:Alive()
			and npc.OODA
			and NAPC.Tables.NPCClass_Main[npc:GetClass()]
			and NAPC.WorksOnANP(npc)
		then
			local sid = NAPC.GetSquadID(npc) or ("s_" .. npc:EntIndex())
			local sq = squads[sid]
			if not sq then
				sq = { members = {}, enemy = nil, enemyDistSqr = math.huge }
				squads[sid] = sq
				order[#order + 1] = sid
			end
			sq.members[#sq.members + 1] = npc

			local enemy = (npc.GetEnemy and npc:GetEnemy()) or nil
			if IsValid(enemy) and enemy:Alive() and not (enemy:IsPlayer() and NAPC.PlayerVisionIgnored(enemy)) then
				local d = enemy:GetPos():DistToSqr(npc:GetPos())
				if d < sq.enemyDistSqr then
					sq.enemyDistSqr = d
					sq.enemy = enemy
				end
			end
		end
	end

	for _, sid in ipairs(order) do
		local sq = squads[sid]
		local members = sq.members
		local count = #members
		local enemy = sq.enemy

		if not IsValid(enemy) then
			for _, m in ipairs(members) do
				if m.SquadRole_NAPC then
					m.SquadRole_NAPC.expire = math.min(m.SquadRole_NAPC.expire or 0, now + 1)
				end
			end
		else
			local enemyPos = enemy:GetPos()
			local faction = NAPC.AreaGetFactionOf(members[1])
			local flankCandidates = {}
			local bestOverwatch, bestOWScore = nil, 0.4

			for _, rec in pairs(NAPC.AreaScoreRecords) do
				if now <= rec.trackedUntil then
					local areaPos = NAPC.GetAreaTacticalPos(rec.area, members[1]:GetPos(), enemyPos) or rec.pos
					local d = areaPos:Distance(enemyPos)
					if d >= 200 and d <= 3000 then
						local danger = NAPC.AreaDangerScore(rec, faction, now, enemy)
						local flank = NAPC.AreaScoreFlankPos(areaPos, enemy)
						local fScore = (flank * 3.5) - (danger * 1.2) - (math.abs(d - 800) * 0.0005)

						if fScore > 0.25 then
							flankCandidates[#flankCandidates + 1] = { pos = areaPos, score = fScore }
						end

						if (areaPos.z - enemyPos.z) >= 48 then
							local ow = NAPC.AreaScoreOverlookPos(areaPos, enemy)
							local owScore = (ow * 3.2) - (danger * 1.4)
							if owScore > bestOWScore then
								bestOWScore = owScore
								bestOverwatch = areaPos
							end
						end
					end
				end
			end

			table.sort(flankCandidates, function(a, b)
				return a.score > b.score
			end)
			local bestFlank = flankCandidates[1] and flankCandidates[1].pos or nil

			for i, m in ipairs(members) do
				local role = "SUPPRESS"
				local targetPos = nil

				if i == 1 and bestFlank then
					role = "FLANK"
					targetPos = bestFlank
				elseif i == 2 and bestOverwatch then
					role = "OVERWATCH"
					targetPos = bestOverwatch
				end

				m.SquadRole_NAPC = {
					role = role,
					pos = targetPos,
					squadID = sid,
					expire = now + 4.5,
				}
			end
		end
	end
end

function NAPC.AreaBumpTactical(ooda, key, amount)
	ooda.TacticalScores[key] = math.Clamp((ooda.TacticalScores[key] or 0) + amount, -5, 5)
end

function NAPC.AreaInfluenceOODA(npc, now)
	local ooda = npc.OODA
	if not ooda then
		return
	end
	local faction = NAPC.AreaGetFactionOf(npc)
	local enemy = (npc.GetEnemy and npc:GetEnemy()) or nil

	for k, v in pairs(ooda.TacticalScores) do
		ooda.TacticalScores[k] = v * 0.96
	end

	local avoidance = NAPC.AreaGetDangerAtPos(npc:GetPos(), faction, now, enemy)
	if avoidance >= 2.5 then
		local enemyDistSqr = IsValid(enemy) and (enemy:GetPos() - npc:GetPos()):LengthSqr() or math.huge
		if enemyDistSqr > 90000 then
			NAPC.AreaBumpTactical(ooda, "TAKE_COVER_SHOOTING_POS", 1.4)
			NAPC.AreaBumpTactical(ooda, "INDIVIDUAL_RETREAT", 1.1)
			NAPC.AreaBumpTactical(ooda, "BREAK_CROSSFIRE", 0.9)
			NAPC.AreaBumpTactical(ooda, "HOLD_AND_ATTACK", -1.2)
			NAPC.AreaBumpTactical(ooda, "SQUAD_ADVANCE_CLOSER", -0.8)
			NAPC.AreaBumpTactical(ooda, "SQUAD_BOUNDING_ADVANCE", -0.6)
		else
			NAPC.AreaBumpTactical(ooda, "HOLD_AND_ATTACK", 0.8)
			NAPC.AreaBumpTactical(ooda, "BREAK_CROSSFIRE", 0.6)
		end
	elseif avoidance <= 0.6 then
		NAPC.AreaBumpTactical(ooda, "HOLD_AND_ATTACK", 0.3)
		NAPC.AreaBumpTactical(ooda, "SUPPRESSIVE_FIRE", 0.2)
	end

	if IsValid(enemy) and not (enemy:IsPlayer() and NAPC.PlayerVisionIgnored(enemy)) then
		if NAPC.AreaScoreOverlookPos(npc:GetPos(), enemy) > 0.45 then
			NAPC.AreaBumpTactical(ooda, "HIGH_GROUND_REINFORCE", 0.4)
		end
		if NAPC.AreaScoreFlankPos(npc:GetPos(), enemy) > 0.55 then
			NAPC.AreaBumpTactical(ooda, "FLANK_MANEUVER", 0.4)
		end
	end
end

function NAPC.AreaScoreCandidate(npc, pos, baseScore, enemy, purpose)
	local faction = NAPC.AreaGetFactionOf(npc)
	local now = CurTime()
	local avoidancePenalty = NAPC.AreaGetDangerAtPos(pos, faction, now, enemy)
	local score = baseScore - (avoidancePenalty * 25)

	if IsValid(enemy) and not (enemy:IsPlayer() and NAPC.PlayerVisionIgnored(enemy)) then
		if purpose == "flank" then
			score = score + (NAPC.AreaScoreFlankPos(pos, enemy) * 30)
		elseif purpose == "highground" then
			score = score + (NAPC.AreaScoreOverlookPos(pos, enemy) * 35)
		end
	end

	if purpose == "cover" then
		score = score - (avoidancePenalty * 20)
	end

	return score
end

function NAPC.AreaDebugNearestFaction(pos)
	local bestFaction, bestDistSqr = "combine", math.huge
	for npc, _ in pairs(NAPC.CurNPCList) do
		if IsValid(npc) and npc:Alive() and NAPC.Tables.NPCClass_Main[npc:GetClass()] then
			local d = npc:GetPos():DistToSqr(pos)
			if d < bestDistSqr then
				bestDistSqr = d
				bestFaction = NAPC.AreaGetFactionOf(npc)
			end
		end
	end
	return bestFaction
end

function NAPC.AreaDebugRender(now)
	local cv = GetConVar("NAPC_Debug_AreaScores")
	if not cv or not cv:GetBool() then
		return
	end

	for _, rec in pairs(NAPC.AreaScoreRecords) do
		if now <= rec.trackedUntil + 5 then
			local faction = NAPC.AreaDebugNearestFaction(rec.pos)
			local deaths = NAPC.AreaDeathScore(rec, faction, now)
			local fired = NAPC.AreaFiredScore(rec, faction, now)
			local seen = NAPC.AreaSeenScore(rec, faction, now)
			local danger = NAPC.AreaDangerScore(rec, faction, now)

			local col = Color(120, 255, 120)
			if danger >= 4 then
				col = Color(255, 60, 60)
			elseif danger >= 2 then
				col = Color(255, 160, 40)
			elseif danger >= 0.8 then
				col = Color(255, 255, 100)
			end

			debugoverlay.Cross(rec.pos + Vector(0, 0, 28), 10, 0.7, col, true)
			debugoverlay.Text(
				rec.pos + Vector(0, 0, 44),
				string.format(
					"[Area %d|%s] Avoidance: %.1f | Deaths: %.1f | SeenBy: %.1f | FiredAt: %.1f | Flank: %.2f | Ridge: %.2f",
					rec.id,
					faction,
					danger,
					deaths,
					seen,
					fired,
					rec.flankDebug or 0,
					rec.overlookDebug or 0
				),
				0.7,
				col,
				true
			)
		end
	end

	for npc, _ in pairs(NAPC.CurNPCList) do
		local role = npc.SquadRole_NAPC
		if IsValid(npc) and role and now < (role.expire or 0) then
			local col = Color(120, 180, 255)
			if role.role == "FLANK" then
				col = Color(255, 180, 0)
			elseif role.role == "OVERWATCH" then
				col = Color(0, 200, 255)
			elseif role.role == "SUPPRESS" then
				col = Color(180, 100, 255)
			end

			debugoverlay.Text(npc:GetPos() + Vector(0, 0, 84), "ROLE: " .. tostring(role.role), 0.7, col, true)
			if role.pos then
				debugoverlay.Line(npc:EyePos(), role.pos + Vector(0, 0, 28), 0.7, col, true)
				debugoverlay.Cross(role.pos + Vector(0, 0, 28), 14, 0.7, col, true)
			end
		end
	end
end

function NAPC.FindWaterEscapePos(npc)
	if not IsValid(npc) then
		return nil
	end
	local npcPos = npc:GetPos()

	if navmesh and navmesh.IsLoaded() and isfunction(navmesh.Find) then
		local areas = navmesh.Find(npcPos, 900, 32, 128)
		local bestAreaPos = nil
		local bestDist = math.huge

		if istable(areas) then
			for _, area in ipairs(areas) do
				if
					IsValid(area)
					and not area:IsUnderwater()
					and bit.band(area:GetAttributes(), NAV_MESH_WATER or 32) == 0
				then
					local pos = NAPC.GetAreaTacticalPos(area, npcPos)
					if not NAPC.IsPositionInWater(pos) and not NAPC.IsPosNearLethalDanger(pos, 48) then
						local d = (pos - npcPos):LengthSqr()
						if d < bestDist then
							bestDist = d
							bestAreaPos = pos
						end
					end
				end
			end
		end
		if bestAreaPos then
			return bestAreaPos
		end
	end

	local sampleAngles = { 0, 45, -45, 90, -90, 135, -135, 180 }
	local sampleDists = { 220, 380, 560, 780 }

	for _, dist in ipairs(sampleDists) do
		for _, ang in ipairs(sampleAngles) do
			local dir = (Angle(0, ang, 0) + npc:GetAngles()):Forward()
			local candidate = npcPos + (dir * dist)

			if not NAPC.IsPosNearLethalDanger(candidate, 48) and not NAPC.IsPositionInWater(candidate) then
				NAPC.trData.start = candidate + Vector(0, 0, 128)
				NAPC.trData.endpos = candidate - Vector(0, 0, 256)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)

				if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
					local groundPos = NAPC.trRes.HitPos
					if not NAPC.IsPositionInWater(groundPos) then
						NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
						NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
						NAPC.hullTrData.filter = nil
						util.TraceHull(NAPC.hullTrData)

						if not NAPC.hullTrRes.Hit then
							return groundPos
						end
					end
				end
			end
		end
	end

	return nil
end

function NAPC.FindHighGroundPos(npc, enemy, allThreats, minElevation)
	minElevation = minElevation or 48
	return NAPC.FindCounterHighGroundPos(npc, enemy, allThreats)
end

function NAPC.FindCounterHighGroundPos(npc, enemy, allThreats)
	if not IsValid(npc) or not IsValid(enemy) then
		return nil
	end

	local cur = NAPC.CurTime_Tick
	local npcPos = npc:GetPos()
	local enemyPos = enemy:GetPos()

	if
		npc.CachedHighGroundTime_NAPC
		and (cur - npc.CachedHighGroundTime_NAPC < 1.5)
		and npc.CachedHighGroundPos_NAPC
	then
		if
			npc.CachedHighGroundEnemy_NAPC == enemy
			and (npcPos - (npc.CachedHighGroundOrigin_NAPC or npcPos)):LengthSqr() < 22500
		then
			return npc.CachedHighGroundPos_NAPC
		end
	end

	local enemyEye = enemy:EyePos()
	local toEnemy = (enemyPos - npcPos):GetNormalized()

	local bestPos = nil
	local bestScore = -99999

	local sampleAngles = { -75, -45, -20, 0, 20, 45, 75 }
	local sampleDists = { 280, 520, 780, 1050 }

	for _, dist in ipairs(sampleDists) do
		for _, ang in ipairs(sampleAngles) do
			local dir = (toEnemy:Angle() + Angle(0, ang, 0)):Forward()
			local candidatePos = npcPos + (dir * dist)

			if NAPC.IsDestinationValid(npc, candidatePos, false) then
				NAPC.trData.start = candidatePos + Vector(0, 0, 500)
				NAPC.trData.endpos = candidatePos - Vector(0, 0, 300)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)

				if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
					local groundPos = NAPC.trRes.HitPos
					if not NAPC.IsPositionInWater(groundPos) then
						local elevationOverNPC = groundPos.z - npcPos.z
						local elevationVsEnemy = groundPos.z - enemyPos.z

						if elevationOverNPC >= 36 and elevationVsEnemy >= -24 then
							local standEye = groundPos + Vector(0, 0, 64)

							NAPC.trData.start = standEye
							NAPC.trData.endpos = enemyEye
							NAPC.trData.filter = { npc, enemy }
							NAPC.trData.mask = MASK_SHOT
							util.TraceLine(NAPC.trData)

							if NAPC.trRes.Fraction >= 0.88 or NAPC.trRes.Entity == enemy then
								NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
								NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
								NAPC.hullTrData.filter = nil
								util.TraceHull(NAPC.hullTrData)

								if not NAPC.hullTrRes.Hit then
									local heightScore = (elevationVsEnemy > 0) and (elevationVsEnemy * 2.5 + 45)
										or (elevationVsEnemy * 1.5)
									local score = heightScore + (elevationOverNPC * 0.8) - (dist * 0.04)

									if score > bestScore then
										bestScore = score
										bestPos = groundPos
									end
								end
							end
						end
					end
				end
			end
		end
	end

	if bestPos then
		npc.CachedHighGroundTime_NAPC = cur
		npc.CachedHighGroundPos_NAPC = bestPos
		npc.CachedHighGroundEnemy_NAPC = enemy
		npc.CachedHighGroundOrigin_NAPC = npcPos
	end

	return bestPos
end

function NAPC.FindLureRetreatPos(npc, enemy, allThreats)
	if not IsValid(npc) or not IsValid(enemy) then
		return nil
	end

	local npcPos = npc:GetPos()
	local enemyPos = enemy:GetPos()
	local enemyEye = enemy:EyePos()
	local awayFromEnemy = (npcPos - enemyPos):GetNormalized()
	awayFromEnemy.z = 0
	awayFromEnemy:Normalize()
	local awayAngle = awayFromEnemy:Angle()

	local bestPos = nil
	local bestScore = -99999

	local sampleAngles = { -70, -45, -20, 0, 20, 45, 70 }
	local sampleDists = { 400, 650, 900, 1200 }

	for _, dist in ipairs(sampleDists) do
		for _, ang in ipairs(sampleAngles) do
			local dir = (awayAngle + Angle(0, ang, 0)):Forward()
			local candidatePos = npcPos + (dir * dist)

			if NAPC.IsDestinationValid(npc, candidatePos, false) then
				NAPC.trData.start = candidatePos + Vector(0, 0, 64)
				NAPC.trData.endpos = candidatePos - Vector(0, 0, 256)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)

				if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
					local groundPos = NAPC.trRes.HitPos
					if not NAPC.IsPositionInWater(groundPos) then
						local eyePos = groundPos + Vector(0, 0, 64)

						NAPC.trData.start = eyePos
						NAPC.trData.endpos = enemyEye
						NAPC.trData.filter = { npc, enemy }
						NAPC.trData.mask = MASK_SHOT
						util.TraceLine(NAPC.trData)

						local isHiddenFromEnemy = (NAPC.trRes.Fraction < 1.0 and NAPC.trRes.Entity ~= enemy)

						if isHiddenFromEnemy then
							NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
							NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
							NAPC.hullTrData.filter = nil
							util.TraceHull(NAPC.hullTrData)

							if not NAPC.hullTrRes.Hit then
								local dToEnemy = (enemyPos - groundPos):Length()
								local score = 85 - math.abs(dToEnemy - 750) * 0.05

								if score > bestScore then
									bestScore = score
									bestPos = groundPos
								end
							end
						end
					end
				end
			end
		end
	end

	return bestPos
end

function NAPC.IsFlyingOrHovering(ent)
	if not IsValid(ent) then
		return false
	end

	local class = ent:GetClass()
	if
		class == "npc_gunship"
		or class == "npc_helicopter"
		or class == "npc_manhack"
		or class == "npc_cscanner"
		or class == "npc_clawscanner"
		or class == "npc_combinedropship"
	then
		return true
	end

	if ent.GetMoveType then
		local mv = ent:GetMoveType()
		if mv == MOVETYPE_FLY or mv == MOVETYPE_FLYGRAVITY or mv == MOVETYPE_NOCLIP then
			return true
		end
	end

	if ent.IsFlagSet and ent:IsFlagSet(FL_FLY) then
		return true
	end

	if ent.CapabilitiesGet and bit.band(ent:CapabilitiesGet(), CAP_MOVE_FLY) ~= 0 then
		return true
	end

	return false
end

function NAPC.FindShelterCoverPos(npc, enemy, allThreats)
	if not IsValid(npc) or not IsValid(enemy) then
		return nil
	end

	local cur = NAPC.CurTime_Tick
	local npcPos = npc:GetPos()

	if npc.CachedShelterTime_NAPC and (cur - npc.CachedShelterTime_NAPC < 1.5) and npc.CachedShelterPos_NAPC then
		if (npcPos - (npc.CachedShelterOrigin_NAPC or npcPos)):LengthSqr() < 22500 then
			return npc.CachedShelterPos_NAPC
		end
	end

	local enemyPos = enemy:GetPos()
	local enemyEye = enemy:EyePos()
	local toEnemy = (enemyPos - npcPos):GetNormalized()

	local bestPos = nil
	local bestScore = -99999

	local sampleAngles = { 0, 45, -45, 90, -90, 140, -140, 180 }
	local sampleDists = { 200, 420, 700 }

	for _, dist in ipairs(sampleDists) do
		for _, ang in ipairs(sampleAngles) do
			local dir = (toEnemy:Angle() + Angle(0, ang, 0)):Forward()
			local candidatePos = npcPos + (dir * dist)

			if NAPC.IsDestinationValid(npc, candidatePos, false) then
				NAPC.trData.start = candidatePos + Vector(0, 0, 128)
				NAPC.trData.endpos = candidatePos - Vector(0, 0, 200)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)

				if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
					local groundPos = NAPC.trRes.HitPos
					if not NAPC.IsPositionInWater(groundPos) then
						local standEye = groundPos + Vector(0, 0, 64)

						NAPC.trData.start = standEye
						NAPC.trData.endpos = standEye + Vector(0, 0, 420)
						NAPC.trData.mask = MASK_SOLID_BRUSHONLY
						NAPC.trData.filter = nil
						util.TraceLine(NAPC.trData)

						local hasOverheadCover = NAPC.trRes.Hit
							and (NAPC.trRes.HitNormal.z < -0.25 or NAPC.trRes.Fraction < 0.9)
						local ceilingHeight = NAPC.trRes.Hit and (NAPC.trRes.HitPos.z - groundPos.z) or 999

						if hasOverheadCover and ceilingHeight >= 72 and ceilingHeight <= 450 then
							NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
							NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
							NAPC.hullTrData.filter = nil
							util.TraceHull(NAPC.hullTrData)

							if not NAPC.hullTrRes.Hit then
								NAPC.trData.start = standEye
								NAPC.trData.endpos = enemyEye
								NAPC.trData.mask = MASK_SHOT
								NAPC.trData.filter = { npc, enemy }
								util.TraceLine(NAPC.trData)

								local hasLOS = (NAPC.trRes.Fraction >= 0.88 or NAPC.trRes.Entity == enemy)
								local score = 85 + (hasLOS and 30 or 15) - (dist * 0.05)

								if score > bestScore then
									bestScore = score
									bestPos = groundPos
								end
							end
						end
					end
				end
			end
		end
	end

	if bestPos then
		npc.CachedShelterTime_NAPC = cur
		npc.CachedShelterPos_NAPC = bestPos
		npc.CachedShelterOrigin_NAPC = npcPos
	end

	return bestPos
end

function NAPC.FindKeyTacticalArea(npc, enemy, groupCenter)
	return NAPC.FindHighGroundPos(npc, enemy, nil, 60)
end

function NAPC.CreateScannerLight(scanner)
	if not IsValid(scanner) or IsValid(scanner.Spotlight_NAPC) then
		return
	end

	local att = scanner:LookupAttachment("light")
	if not att or att <= 0 then
		att = scanner:LookupAttachment("eye")
	end

	local light = ents.Create("env_projectedtexture")
	if IsValid(light) then
		light:SetPos(scanner:GetPos())
		light:SetAngles(scanner:GetAngles())
		light:SetParent(scanner)
		if att and att > 0 then
			light:Fire("SetParentAttachment", att == scanner:LookupAttachment("light") and "light" or "eye")
		end
		light:SetKeyValue("enableshadows", "1")
		light:SetKeyValue("lightfov", "70")
		light:SetKeyValue("farz", "850")
		light:SetKeyValue("nearz", "12")
		light:SetKeyValue("lightcolor", "220 235 255 255")
		light:Spawn()
		light:Input("SpotlightLength", nil, nil, 600)
		scanner.Spotlight_NAPC = light
		scanner:DeleteOnRemove(light)
	end
end

function NAPC.IsZombieOrHeadcrab(ent)
	if not IsValid(ent) then
		return false
	end
	local class = ent:GetClass()
	if NAPC.GetFaction(class) == "zombie" or string.find(class, "zombie") or string.find(class, "headcrab") then
		return true
	end
	return false
end

function NAPC.FindKiteRetreatPos(npc, enemy, allThreats, minRange, maxRange)
	if not IsValid(npc) or not IsValid(enemy) then
		return nil
	end

	minRange = minRange or 450
	maxRange = maxRange or 850

	local npcPos = npc:GetPos()
	local enemyPos = enemy:GetPos()
	local enemyEye = enemy:EyePos()
	local awayDir = (npcPos - enemyPos):GetNormalized()
	awayDir.z = 0
	if awayDir:IsZero() then
		awayDir = -npc:GetForward()
		awayDir.z = 0
	end
	awayDir:Normalize()
	local awayAngle = awayDir:Angle()

	local bestPos = nil
	local bestScore = -99999

	local sampleAngles = { 0, -25, 25, -50, 50, -75, 75, 100, -100 }
	local sampleDists = { 260, 420, 620 }

	for _, dist in ipairs(sampleDists) do
		for _, ang in ipairs(sampleAngles) do
			local dir = (awayAngle + Angle(0, ang, 0)):Forward()
			local candidatePos = npcPos + (dir * dist)
			local dToEnemy = (candidatePos - enemyPos):Length()

			if dToEnemy >= minRange and dToEnemy <= maxRange and NAPC.IsDestinationValid(npc, candidatePos, false) then
				NAPC.trData.start = candidatePos + Vector(0, 0, 96)
				NAPC.trData.endpos = candidatePos - Vector(0, 0, 256)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)

				if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
					local groundPos = NAPC.trRes.HitPos
					if not NAPC.IsPositionInWater(groundPos) then
						local standEye = groundPos + Vector(0, 0, 64)

						NAPC.trData.start = standEye
						NAPC.trData.endpos = enemyEye
						NAPC.trData.filter = { npc, enemy }
						NAPC.trData.mask = MASK_SHOT
						util.TraceLine(NAPC.trData)

						local hasLOS = (NAPC.trRes.Fraction >= 0.88 or NAPC.trRes.Entity == enemy)

						NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
						NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
						NAPC.hullTrData.filter = nil
						util.TraceHull(NAPC.hullTrData)

						if not NAPC.hullTrRes.Hit then
							local distScore = math.Clamp(dToEnemy - minRange, 0, 300) * 0.2
							local travelPenalty = (candidatePos - npcPos):Length() * 0.04
							local score = (hasLOS and 70 or 25) + distScore - travelPenalty

							if score > bestScore then
								bestScore = score
								bestPos = groundPos
							end
						end
					end
				end
			end
		end
	end

	return bestPos
end

function NAPC.InitEnt(ent)
	if not ent.Initialized_NAPC then
		timer.Simple(0, function()
			if not IsValid(ent) or ent.Initialized_NAPC then
				return
			end
			ent.Initialized_NAPC = true

			if ent:IsWeapon() then
				local maxRange = ent:GetInternalVariable("m_fMaxRange1")
				if isnumber(maxRange) and maxRange > 0 then
					ent.WepAttackRange_NAPC = maxRange
				end
				return
			end

			local NPCClass = ent:GetClass()

			if NAPC.Tables.NPCClass_Main[NPCClass] then
				ent.NextAvoidTime_NAPC = 0
				ent.GreIsNearby_NAPC = false
				ent.Patience_NAPC = math.Rand(5, 10)
				ent.NextOpenFire_NAPC = 0
				ent.ShotgunAltFire_NAPC = true
				ent.AttackRangeScale_NAPC = 1
				ent.NextRunToWalk_NAPC = 0
				ent.NextGainHealth_NAPC = 0
				ent.DamageBuffer_NAPC = 0
				ent.LastDamageTime_NAPC = 0

				local cecaData = {
					NextCycle = CurTime() + math.Rand(0.1, 0.4),
					ReactionDelay = math.Rand(0.35, 0.65),
					DecisionTime = 0,
					MovementLockTime = 0,
					LastDecision = "NONE",
					FlankSide = (math.random(1, 2) == 1) and 1 or -1,
					FailedFlankAttempts = 0,
					NextDamageReeval = 0,
					NextSummonTime = 0,
					ActionApplied = false,
					PosStayTime = CurTime(),
					LastTrackPos = ent:GetPos(),
					PredictedEnemyReaction = "NONE",
					ProjectedMoveUtility = 0,
					ActiveDecisionStartTime = CurTime(),
					ActiveDecisionStartHP = ent:Health(),
					ActiveDecisionDmgDealt = 0,
					ActiveDecisionDmgTaken = 0,

					ConceptualModel = {
						DesiredState = "FIRE_SUPERIORITY",
						IdealRange = 450,
						RequiresOverheadCover = false,
						RequiresHighGround = false,
						RequiresCrossfireBreak = false,
						TargetMorale = 100,
					},
					SituationModel = {},
					InformationNeeds = {},
					ExploreCache = {},

					TacticalScores = {
						["HOLD_AND_ATTACK"] = 0,
						["SUPPRESSIVE_FIRE"] = 0,
						["SQUAD_BOUNDING_ADVANCE"] = 0,
						["SQUAD_COORDINATED_FLANK"] = 0,
						["SQUAD_ADVANCE_CLOSER"] = 0,
						["TAKE_COVER_SHOOTING_POS"] = 0,
						["SHELTERED_WARFARE"] = 0,
						["HIGH_GROUND_REINFORCE"] = 0,
						["COUNTER_HIGH_GROUND"] = 0,
						["BAIT_RETREAT"] = 0,
						["KITE_RETREAT"] = 0,
						["FLANK_MANEUVER"] = 0,
						["BREAK_CROSSFIRE"] = 0,
						["INDIVIDUAL_RETREAT"] = 0,
						["REPOSITION_LOF"] = 0,
						["SECURE_KEY_AREA"] = 0,
					},
					EnemyProfile = {},
					TacticalHistory = {},
				}

				ent.CECA = cecaData
				ent.OODA = cecaData

				if NPCClass == "npc_combine_s" then
					ent.NextCloaking_NAPC = 0
					ent.CanCloak_NAPC = true
					ent.NextThrowGre_NAPC = 0
				elseif NPCClass == "npc_metropolice" then
					ent.NextThrowGre_NAPC = 0
					ent.NumGrenades_NAPC = math.random(0, 2)
				end
			elseif NPCClass == "npc_strider" then
				ent.NextCannon_NAPC = 0
			end
		end)
	end
end

function NAPC.CanShootBack(target)
	if not IsValid(target) then
		return false
	end
	if target.IsRangedAttacker_NAPC then
		return true
	end

	if target:IsPlayer() then
		local wep = target:GetActiveWeapon()
		if not IsValid(wep) then
			return false
		end
		local class = wep:GetClass()
		return class ~= "weapon_crowbar" and class ~= "weapon_stunstick" and class ~= "weapon_bugbait"
	elseif target:IsNPC() then
		local wep = target:GetActiveWeapon()
		if IsValid(wep) then
			local hold = wep.GetHoldType and wep:GetHoldType()
			if hold ~= "melee" then
				return true
			end
		end
		local class = target:GetClass()
		return class == "npc_hunter"
			or class == "npc_strider"
			or class == "npc_turret_floor"
			or class == "npc_turret_ceiling"
	end
	return false
end

function NAPC.FindMedicRetreatPos(npc, medic, enemy)
	if not IsValid(npc) or not IsValid(medic) then
		return nil
	end

	local medicPos = medic:GetPos()
	local enemyPos = IsValid(enemy) and enemy:GetPos() or nil
	local awayDir = enemyPos and (medicPos - enemyPos):GetNormalized() or -medic:GetForward()

	local sampleOffsets = {
		awayDir * 120,
		(awayDir * 100) + (awayDir:Angle():Right() * 80),
		(awayDir * 100) - (awayDir:Angle():Right() * 80),
		medic:GetForward() * -90,
	}

	for _, offset in ipairs(sampleOffsets) do
		local candidatePos = medicPos + offset
		if NAPC.IsDestinationValid(npc, candidatePos) then
			NAPC.trData.start = candidatePos + Vector(0, 0, 64)
			NAPC.trData.endpos = candidatePos - Vector(0, 0, 200)
			NAPC.trData.mask = MASK_SOLID_BRUSHONLY
			NAPC.trData.filter = nil
			util.TraceLine(NAPC.trData)

			if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
				local groundPos = NAPC.trRes.HitPos
				if not NAPC.IsPositionInWater(groundPos) then
					NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
					NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
					NAPC.hullTrData.filter = nil
					util.TraceHull(NAPC.hullTrData)

					if not NAPC.hullTrRes.Hit then
						return groundPos
					end
				end
			end
		end
	end

	return nil
end

function NAPC.GetFaction(class)
	if class == "npc_combine_s" or class == "npc_metropolice" or class == "npc_hunter" or class == "npc_strider" then
		return "combine"
	elseif
		class == "npc_citizen"
		or class == "npc_alyx"
		or class == "npc_barney"
		or class == "npc_monk"
		or class == "npc_vortigaunt"
		or class == "player"
	then
		return "resistance"
	elseif string.find(class, "zombie") or string.find(class, "headcrab") then
		return "zombie"
	end
	return "other"
end

function NAPC.GetRecentCasualtiesNear(npcOrPos, posOrRadius, radiusOrTime, timeWindow)
	local npc, pos, radius, timeLimit

	if isvector(npcOrPos) then
		npc = nil
		pos = npcOrPos
		radius = isnumber(posOrRadius) and posOrRadius or 250
		timeLimit = isnumber(radiusOrTime) and radiusOrTime or 10
	else
		npc = npcOrPos
		pos = posOrRadius
		radius = isnumber(radiusOrTime) and radiusOrTime or 250
		timeLimit = isnumber(timeWindow) and timeWindow or 10
	end

	if not isvector(pos) then
		return 0
	end

	local cur = NAPC.CurTime_Tick
	local count = 0
	local rSqr = radius * radius
	local myFaction = (IsValid(npc) and npc.GetClass) and NAPC.GetFaction(npc:GetClass()) or nil

	for i = #NAPC.RecentCasualties, 1, -1 do
		local cas = NAPC.RecentCasualties[i]
		if not cas or not cas.time or (cur - cas.time > timeLimit) then
			table.remove(NAPC.RecentCasualties, i)
		elseif cas.pos and (cas.pos - pos):LengthSqr() <= rSqr then
			if not myFaction or cas.faction == myFaction then
				count = count + 1
			end
		end
	end
	return count
end

function NAPC.FindEnfiladeVantagePos(npc, enemy, allThreats)
	if not IsValid(npc) or not IsValid(enemy) then
		return nil
	end

	local npcPos = npc:GetPos()
	local enemyPos = enemy:GetPos()
	local enemyEye = enemy:EyePos()
	local enemyAim = enemy:GetAimVector()
	local enemyRight = enemyAim:Angle():Right()

	local bestPos = nil
	local bestScore = -99999

	local sampleVectors = {
		enemyRight * 420,
		-enemyRight * 420,
		(enemyRight * 350) - (enemyAim * 200),
		(-enemyRight * 350) - (enemyAim * 200),
		(enemyRight * 550) + (enemyAim * 150),
		(-enemyRight * 550) + (enemyAim * 150),
		(enemyRight * 750) - (enemyAim * 100),
		(-enemyRight * 750) - (enemyAim * 100),
	}

	for _, offset in ipairs(sampleVectors) do
		local candidatePos = enemyPos + offset
		local dToNPC = (candidatePos - npcPos):Length()

		if dToNPC <= 950 and NAPC.IsDestinationValid(npc, candidatePos, false) then
			NAPC.trData.start = candidatePos + Vector(0, 0, 96)
			NAPC.trData.endpos = candidatePos - Vector(0, 0, 200)
			NAPC.trData.mask = MASK_SOLID_BRUSHONLY
			NAPC.trData.filter = nil
			util.TraceLine(NAPC.trData)

			if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
				local groundPos = NAPC.trRes.HitPos
				if not NAPC.IsPositionInWater(groundPos) then
					local standEye = groundPos + Vector(0, 0, 64)

					NAPC.trData.start = standEye
					NAPC.trData.endpos = enemyEye
					NAPC.trData.filter = { npc, enemy }
					NAPC.trData.mask = MASK_SHOT
					util.TraceLine(NAPC.trData)

					if NAPC.trRes.Fraction >= 0.88 or NAPC.trRes.Entity == enemy then
						local toCandidate = (standEye - enemyEye):GetNormalized()
						local angleDisparity = enemyAim:Dot(toCandidate)

						if angleDisparity < 0.45 then
							NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
							NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
							NAPC.hullTrData.filter = nil
							util.TraceHull(NAPC.hullTrData)

							if not NAPC.hullTrRes.Hit then
								local blindAngleBonus = (1.0 - angleDisparity) * 45
								local elevationVsEnemy = math.Clamp((groundPos.z - enemyPos.z) * 0.3, -15, 30)
								local casualtyPenalty = NAPC.GetRecentCasualtiesNear(npc, groundPos, 220, 8) * 40
								local score = 80
									+ blindAngleBonus
									+ elevationVsEnemy
									- casualtyPenalty
									- (dToNPC * 0.04)

								if score > bestScore then
									bestScore = score
									bestPos = groundPos
								end
							end
						end
					end
				end
			end
		end
	end

	return bestPos
end

function NAPC.FindCoverBehindReinforcer(npc, reinforcer, enemyPos, enemy, allThreats)
	if not IsValid(npc) or not IsValid(reinforcer) then
		return nil
	end

	local refPos = reinforcer:GetPos()
	local ePos = isvector(enemyPos) and enemyPos or (IsValid(enemy) and enemy:GetPos() or refPos)
	local enemyEye = IsValid(enemy) and enemy:EyePos() or (ePos + Vector(0, 0, 64))
	local toEnemy = (ePos - refPos):GetNormalized()
	local rearDir = -toEnemy

	local bestPos = nil
	local bestScore = -9999

	local sampleAngles = { -60, -30, 0, 30, 60 }
	local sampleDists = { 180, 280, 420 }

	for _, dist in ipairs(sampleDists) do
		for _, ang in ipairs(sampleAngles) do
			local dir = (rearDir:Angle() + Angle(0, ang, 0)):Forward()
			local candidatePos = refPos + (dir * dist)

			if NAPC.IsDestinationValid(npc, candidatePos) then
				NAPC.trData.start = candidatePos + Vector(0, 0, 64)
				NAPC.trData.endpos = candidatePos - Vector(0, 0, 256)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)

				if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
					local groundPos = NAPC.trRes.HitPos
					if not NAPC.IsPositionInWater(groundPos) then
						local standEye = groundPos + Vector(0, 0, 64)
						local crouchEye = groundPos + Vector(0, 0, 36)

						NAPC.trData.start = standEye
						NAPC.trData.endpos = enemyEye
						NAPC.trData.filter = { npc, reinforcer, enemy }
						NAPC.trData.mask = MASK_SHOT
						util.TraceLine(NAPC.trData)

						local hasLOS = (NAPC.trRes.Fraction >= 0.92 or NAPC.trRes.Entity == enemy)

						NAPC.trData.start = crouchEye
						NAPC.trData.endpos = enemyEye
						NAPC.trData.filter = { npc, reinforcer, enemy }
						NAPC.trData.mask = MASK_SHOT
						util.TraceLine(NAPC.trData)
						local crouchCover = (NAPC.trRes.Fraction < 1.0 and NAPC.trRes.Entity ~= enemy)

						local concealedSteps = 0
						local threatShieldedSteps = 0

						for _, stepVec in ipairs(NAPC.StepOffsets) do
							local stepEye = standEye + stepVec

							NAPC.trData.start = stepEye
							NAPC.trData.endpos = enemyEye
							NAPC.trData.filter = { npc, reinforcer, enemy }
							NAPC.trData.mask = MASK_SHOT
							util.TraceLine(NAPC.trData)

							if NAPC.trRes.Fraction < 1.0 and NAPC.trRes.Entity ~= enemy then
								concealedSteps = concealedSteps + 1
								local safeFromThreats = true

								if allThreats then
									local checkCount = math.min(#allThreats, 2)
									for tIdx = 1, checkCount do
										local threat = allThreats[tIdx]
										if IsValid(threat) and threat ~= enemy then
											NAPC.trData.start = stepEye
											NAPC.trData.endpos = threat:EyePos()
											NAPC.trData.filter = { npc, reinforcer, threat }
											NAPC.trData.mask = MASK_SHOT
											util.TraceLine(NAPC.trData)

											if NAPC.trRes.Fraction >= 0.95 or NAPC.trRes.Entity == threat then
												safeFromThreats = false
												break
											end
										end
									end
								end

								if safeFromThreats then
									threatShieldedSteps = threatShieldedSteps + 1
								end
							end
						end

						NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
						NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
						NAPC.hullTrData.filter = nil
						util.TraceHull(NAPC.hullTrData)

						if not NAPC.hullTrRes.Hit then
							local dToEnemy = (ePos - groundPos):Length()
							local losBonus = hasLOS and 50 or -30
							local coverBonus = (concealedSteps * 30)
								+ (threatShieldedSteps * 25)
								+ (crouchCover and 40 or 0)
							local distScore = -math.abs(dToEnemy - 500) * 0.05

							local score = losBonus + coverBonus + distScore
							if score > bestScore then
								bestScore = score
								bestPos = groundPos
							end
						end
					end
				end
			end
		end
	end

	return bestPos
end

function NAPC.IntoCloaking(npc, weapon)
	npc:SetMaterial("Models/effects/vol_light001")
	npc:DrawShadow(false)
	if IsValid(weapon) then
		weapon:SetMaterial("Models/effects/vol_light001")
		weapon:DrawShadow(false)
	end
	npc:AddFlags(FL_NOTARGET)
end

function NAPC.UseCloaking(npc)
	if
		NAPC.ConvarsBool["NAPC_Combine_Cloaking"]
		and npc.CanCloak_NAPC
		and NAPC.CurTime_Tick > npc.NextCloaking_NAPC
	then
		npc.NextCloaking_NAPC = NAPC.CurTime_Tick + 11
		npc.IsUsingCloaking = true
		npc.CloakingTimerCount = 0

		NAPC.IntoCloaking(npc, npc:GetActiveWeapon())

		local timerName = "CloakingTimer_" .. npc:EntIndex()
		timer.Create(timerName, 0.5, 11, function()
			if not IsValid(npc) then
				timer.Remove(timerName)
				return
			end

			local weapon = npc:GetActiveWeapon()
			npc.CloakingTimerCount = npc.CloakingTimerCount + 1
			if npc.CloakingTimerCount > 9 then
				npc:SetMaterial("")
				npc:DrawShadow(true)
				npc.IsUsingCloaking = false
				npc:RemoveFlags(FL_NOTARGET)
				if IsValid(weapon) then
					weapon:SetMaterial("")
					weapon:DrawShadow(true)
				end
				timer.Remove(timerName)
				return
			end

			NAPC.IntoCloaking(npc, weapon)
		end)
	end
end

function NAPC.WepAttackRange(IsTickUse, npc, weapon)
	if NAPC.IsRPGWeapon(weapon) then
		return
	end
	if IsTickUse then
		local AttRange = weapon.WepAttackRange_NAPC
		if not AttRange then
			return
		end
		local AttRangeScale = npc.AttackRangeScale_NAPC
		if not AttRangeScale then
			weapon:SetSaveValue("m_fMaxRange1", AttRange)
			return
		end

		if npc.IsShotgunner_NAPC then
			AttRangeScale = 1
			if NAPC.ConvarsBool["NAPC_Shotgunner_Slug"] then
				AttRangeScale = 2
			elseif NAPC.ConvarsBool["NAPC_BETTER_SHOTGUNNERS"] then
				AttRangeScale = 1.33
			end
		end

		weapon:SetSaveValue("m_fMaxRange1", AttRange * AttRangeScale)
	elseif weapon.WepAttackRange_NAPC then
		weapon:SetSaveValue("m_fMaxRange1", weapon.WepAttackRange_NAPC)
	end
end

function NAPC.Tick_MovementSpeed(npc, mul)
	if not IsValid(npc) then
		return
	end

	local movespeed = npc.MovementSpeed_NAPC or 1
	mul = mul and (mul * movespeed) or movespeed

	if mul <= 0 then
		mul = 1
	end
	npc:SetPlaybackRate(mul)
end

function NAPC.Tick_ShouldReload(npc, ammoLack)
	if NAPC.ConvarsBool["NAPC_NPCs_MustReloadNow"] and ammoLack then
		local curSched = npc:GetCurrentSchedule()
		if curSched ~= SCHED_RELOAD and curSched ~= SCHED_HIDE_AND_RELOAD then
			npc:SetSchedule(SCHED_RELOAD)
			NAPC.UseCloaking(npc)
		end
		return true
	end
	return false
end

function NAPC.Tick_RunRandom(npc)
	if
		npc.NextAvoidTime_NAPC > NAPC.CurTime_Tick
		or (NAPC.ConvarsBool["NAPC_NPCs_FasterChasing"] and not npc.CanRangeAttack_NAPC)
		or (NAPC.ConvarsBool["NAPC_NPCs_EnemyNearby"] and npc:IsCurrentSchedule(SCHED_MOVE_AWAY))
	then
		return
	end
	npc:SetSchedule(SCHED_RUN_RANDOM)
	NAPC.Tick_MovementSpeed(npc, 1.5)
	npc.NextAvoidTime_NAPC = NAPC.CurTime_Tick + math.Rand(1.0, 2.0)
end

function NAPC.Tick_ShouldOpenFire(npc)
	local wep = npc:GetActiveWeapon()
	if IsValid(wep) and NAPC.IsRPGWeapon(wep) then
		return
	end
	if npc.CanRangeAttack_NAPC and npc.NextOpenFire_NAPC < NAPC.CurTime_Tick then
		npc.NextOpenFire_NAPC = NAPC.CurTime_Tick + math.Rand(0.3, 0.6)
		local curSched = npc:GetCurrentSchedule()
		if curSched ~= SCHED_RANGE_ATTACK1 and curSched ~= SCHED_RANGE_ATTACK2 and curSched ~= SCHED_MELEE_ATTACK1 then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	end
end

function NAPC.Tick_ClearForcedGo(npc, enemy, curSched)
	local forcedGoPos = npc.ForcedGoPos_NAPC
	if not forcedGoPos then
		npc.ForcedGoLastPos_NAPC = nil
		npc.ForcedGoLastMoveCheck_NAPC = nil
		npc.ForcedGoStuckTime_NAPC = nil
		npc.ForcedGoStartTime_NAPC = nil
		npc.ForcedGoMinDistSqr_NAPC = nil
		npc.ForcedGoJumpAttempted_NAPC = nil
		return
	end

	local isMovingSched = NAPC.Tables.BannedSchedule_List3[curSched]
		or curSched == SCHED_ESTABLISH_LINE_OF_FIRE
		or curSched == SCHED_TAKE_COVER_FROM_ENEMY
		or curSched == SCHED_RUN_FROM_ENEMY_FALLBACK

	local myPos = npc:GetPos()
	local distToDestSqr = (myPos - forcedGoPos):LengthSqr()
	local isArrived = distToDestSqr < 4900

	local isTimedOut = npc.ForcedGoTimeout_NAPC and (NAPC.CurTime_Tick > npc.ForcedGoTimeout_NAPC)
	local ceca = npc.CECA or npc.OODA
	local isRetreating = ceca
		and (
			ceca.LastDecision == "KITE_RETREAT"
			or ceca.LastDecision == "INDIVIDUAL_RETREAT"
			or ceca.LastDecision == "GROUP_ROUT"
			or ceca.LastDecision == "BAIT_RETREAT"
			or ceca.LastDecision == "BREAK_CROSSFIRE"
		)
	local enemyDistSqr = IsValid(enemy) and enemy:Alive() and (myPos - enemy:GetPos()):LengthSqr() or math.huge
	local isPointBlankMelee = not isRetreating
		and IsValid(enemy)
		and enemy:Alive()
		and enemyDistSqr < 10000
		and (npc:HasCondition(COND.CAN_MELEE_ATTACK1) or not NAPC.IsZombieOrHeadcrab(enemy))
	local isDestCompromised = NAPC.IsPosNearLethalDanger(forcedGoPos, 48) or NAPC.IsPositionInWater(forcedGoPos)

	local lastPos = npc.ForcedGoLastPos_NAPC or myPos
	local distMovedFromLastCheck = (myPos - lastPos):LengthSqr()

	if not npc.ForcedGoLastMoveCheck_NAPC or (NAPC.CurTime_Tick - npc.ForcedGoLastMoveCheck_NAPC >= 1.0) then
		if distMovedFromLastCheck > 576 or distToDestSqr < ((npc.ForcedGoMinDistSqr_NAPC or distToDestSqr) - 256) then
			npc.ForcedGoLastPos_NAPC = myPos
			npc.ForcedGoStuckTime_NAPC = NAPC.CurTime_Tick
			if not npc.ForcedGoMinDistSqr_NAPC or distToDestSqr < npc.ForcedGoMinDistSqr_NAPC then
				npc.ForcedGoMinDistSqr_NAPC = distToDestSqr
			end
		end
		npc.ForcedGoLastMoveCheck_NAPC = NAPC.CurTime_Tick
	end

	local isStuck = false
	if not isArrived and (NAPC.CurTime_Tick - (npc.ForcedGoStuckTime_NAPC or NAPC.CurTime_Tick) > 3.8) then
		isStuck = true
	end

	local pathRejected = false
	if
		npc.ForcedGoStartTime_NAPC
		and (NAPC.CurTime_Tick - npc.ForcedGoStartTime_NAPC > 3.0)
		and not isMovingSched
		and not isArrived
		and not isPointBlankMelee
		and distMovedFromLastCheck < 100
	then
		pathRejected = true
	end

	if isArrived or isTimedOut or isStuck or pathRejected or isPointBlankMelee or isDestCompromised then
		npc.ForcedGoPos_NAPC = nil
		npc.ForcedGoTimeout_NAPC = nil
		npc.ForcedGoStartTime_NAPC = nil
		npc.ForcedGoLastPos_NAPC = nil
		npc.ForcedGoLastMoveCheck_NAPC = nil
		npc.ForcedGoStuckTime_NAPC = nil
		npc.ForcedGoMinDistSqr_NAPC = nil
		npc.ForcedGoJumpAttempted_NAPC = nil

		if isMovingSched and not isArrived then
			npc:ClearSchedule()
		end

		if ceca then
			ceca.ActionApplied = isArrived
			ceca.DecisionTime = NAPC.CurTime_Tick + (isArrived and 1.2 or 0.6)
			ceca.MovementLockTime = 0
			ceca.NextCycle = NAPC.CurTime_Tick + 0.1
			if IsValid(enemy) and npc:Visible(enemy) then
				if
					npc:HasCondition(COND.CAN_MELEE_ATTACK1)
					and enemyDistSqr < 6400
					and not NAPC.IsZombieOrHeadcrab(enemy)
				then
					npc:SetSchedule(SCHED_MELEE_ATTACK1)
				else
					npc:SetSchedule(SCHED_RANGE_ATTACK1)
				end
			end
		end
	elseif
		not isMovingSched
		and not NAPC.Tables.BannedSchedule_List2[curSched]
		and not NAPC.Tables.BannedSchedule_List1[curSched]
	then
		npc:SetSaveValue("m_vecLastPosition", forcedGoPos)
		npc:SetSchedule(SCHED_FORCED_GO_RUN)
	end
end

function NAPC.IsPlayerIgnored(ply)
	if not IsValid(ply) or not ply:IsPlayer() then
		return false
	end
	local cv = GetConVar("ai_ignoreplayers")
	if cv and cv:GetBool() then
		return true
	end
	if ply:IsFlagSet(FL_NOTARGET) then
		return true
	end
	return false
end

function NAPC.Tick_SeenByPlayer(npc, enemy)
	if not IsValid(enemy) or NAPC.IsPlayerIgnored(enemy) then
		return false
	end
	return enemy.SeeingEnt_NAPC == npc
end

function NAPC.LogCasualty(pos, class)
	local cur = NAPC.CurTime_Tick
	for i = #NAPC.RecentCasualties, 1, -1 do
		if cur - NAPC.RecentCasualties[i].time > 15 then
			table.remove(NAPC.RecentCasualties, i)
		end
	end

	NAPC.RecentCasualties[#NAPC.RecentCasualties + 1] = {
		pos = pos,
		time = cur,
		class = class,
		faction = NAPC.GetFaction(class),
	}
end

function NAPC.GetFirepower(ent)
	if not IsValid(ent) then
		return 0
	end

	local base = 1.0
	local wep = ent:GetActiveWeapon()
	if IsValid(wep) then
		local class = wep:GetClass()
		if class == "weapon_ar2" or class == "weapon_shotgun" or class == "weapon_357" then
			base = 2.5
		elseif class == "weapon_smg1" or class == "weapon_pistol" then
			base = 1.5
		elseif class == "weapon_rpg" then
			base = 4.0
		else
			base = 2.0
		end
	end

	local maxHp = ent.GetMaxHealth and ent:GetMaxHealth() or 100
	local hpRatio = math.Clamp(ent:Health() / math.max(1, maxHp), 0.1, 1.0)

	if ent:IsPlayer() then
		base = base * 2.0
	end

	return base * hpRatio
end

function NAPC.ClusterUnitsIntoSquads(units, prefix, minSize, maxSize)
	local squads = {}
	local unassigned = {}
	for _, u in ipairs(units) do
		if IsValid(u) and u:Alive() then
			unassigned[#unassigned + 1] = u
		end
	end

	local total = #unassigned
	if total == 0 then
		return squads
	end

	if total <= maxSize then
		squads[1] = unassigned
		return squads
	end

	local numSquads = math.ceil(total / maxSize)
	while math.floor(total / numSquads) < minSize and numSquads > 1 do
		numSquads = numSquads - 1
	end

	local seeds = { unassigned[1]:GetPos() }
	while #seeds < numSquads do
		local bestCandidate = nil
		local bestDist = -1
		for _, u in ipairs(unassigned) do
			local uPos = u:GetPos()
			local minDistToSeeds = math.huge
			for _, sPos in ipairs(seeds) do
				local d = (uPos - sPos):LengthSqr()
				if d < minDistToSeeds then
					minDistToSeeds = d
				end
			end
			if minDistToSeeds > bestDist then
				bestDist = minDistToSeeds
				bestCandidate = uPos
			end
		end
		if bestCandidate then
			seeds[#seeds + 1] = bestCandidate
		else
			break
		end
	end

	for i = 1, #seeds do
		squads[i] = {}
	end

	local baseCap = math.floor(total / #seeds)
	local remainder = total % #seeds
	local caps = {}
	for i = 1, #seeds do
		caps[i] = baseCap + (i <= remainder and 1 or 0)
	end

	for _, u in ipairs(unassigned) do
		local uPos = u:GetPos()
		local bestSeedIdx = nil
		local bestDist = math.huge
		for sIdx, sPos in ipairs(seeds) do
			if #squads[sIdx] < caps[sIdx] then
				local d = (uPos - sPos):LengthSqr()
				if d < bestDist then
					bestDist = d
					bestSeedIdx = sIdx
				end
			end
		end
		if not bestSeedIdx then
			for sIdx = 1, #seeds do
				if #squads[sIdx] < maxSize then
					bestSeedIdx = sIdx
					break
				end
			end
			bestSeedIdx = bestSeedIdx or 1
		end
		table.insert(squads[bestSeedIdx], u)
	end

	for i = #squads, 1, -1 do
		if #squads[i] < minSize and #squads > 1 then
			local undersized = table.remove(squads, i)
			for _, u in ipairs(undersized) do
				table.sort(squads, function(a, b)
					return #a < #b
				end)
				table.insert(squads[1], u)
			end
		end
	end

	return squads
end

function NAPC.UpdateTheaterOrchestration()
	if NAPC.CurTime_Tick < NAPC.NextTheaterUpdate then
		return
	end
	NAPC.NextTheaterUpdate = NAPC.CurTime_Tick + 0.5

	local activeSquads = {}
	NAPC.TheaterSquads = {}

	local combineSoldiers = {}
	local metropoliceActive = {}
	local metropoliceBroken = {}
	local resistanceCombatants = {}
	local otherCombatants = {}

	for npc, _ in pairs(NAPC.CurNPCList) do
		if IsValid(npc) and npc:IsNPC() and npc:Alive() and npc:GetNPCState() == NPC_STATE_COMBAT then
			local enemy = npc:GetEnemy()
			if IsValid(enemy) and enemy:Alive() then
				local class = npc:GetClass()
				if class == "npc_combine_s" then
					combineSoldiers[#combineSoldiers + 1] = npc
				elseif class == "npc_metropolice" then
					local ooda = npc.OODA
					local isRouting = ooda
						and (ooda.LastDecision == "INDIVIDUAL_RETREAT" or ooda.LastDecision == "GROUP_ROUT")
					local isRecovered = (npc:Health() / math.max(1, npc:GetMaxHealth())) >= 0.75

					if isRouting and not isRecovered then
						metropoliceBroken[#metropoliceBroken + 1] = npc
					else
						metropoliceActive[#metropoliceActive + 1] = npc
					end
				elseif class == "npc_citizen" or NAPC.Tables.NPCClass_KeyNPCs[class] or class == "npc_vortigaunt" then
					resistanceCombatants[#resistanceCombatants + 1] = npc
				else
					otherCombatants[#otherCombatants + 1] = npc
				end
			end
		end
	end

	local combineSquadGroups = NAPC.ClusterUnitsIntoSquads(combineSoldiers, "combine_squad_", 3, 6)
	for sIdx, group in ipairs(combineSquadGroups) do
		local sqID = "combine_squad_" .. sIdx
		for _, member in ipairs(group) do
			member.DynamicSquadID_NAPC = sqID
		end
	end

	local metroSquadGroups = NAPC.ClusterUnitsIntoSquads(metropoliceActive, "metro_squad_", 3, 6)
	for sIdx, group in ipairs(metroSquadGroups) do
		local sqID = "metro_squad_" .. sIdx
		for _, member in ipairs(group) do
			member.DynamicSquadID_NAPC = sqID
		end
	end
	for _, brokenCop in ipairs(metropoliceBroken) do
		brokenCop.DynamicSquadID_NAPC = "metro_broken_" .. brokenCop:EntIndex()
	end

	for _, reb in ipairs(resistanceCombatants) do
		local myPos = reb:GetPos()
		local assignedID = nil
		for _, mate in ipairs(resistanceCombatants) do
			if mate ~= reb and mate.DynamicSquadID_NAPC and (mate:GetPos() - myPos):LengthSqr() <= 422500 then
				assignedID = mate.DynamicSquadID_NAPC
				break
			end
		end
		reb.DynamicSquadID_NAPC = assignedID or ("rebel_sq_" .. reb:EntIndex())
	end

	for _, other in ipairs(otherCombatants) do
		other.DynamicSquadID_NAPC = other.DynamicSquadID_NAPC or ("other_sq_" .. other:EntIndex())
	end

	for npc, _ in pairs(NAPC.CurNPCList) do
		if IsValid(npc) and npc:IsNPC() and npc:Alive() and npc:GetNPCState() == NPC_STATE_COMBAT then
			local enemy = npc:GetEnemy()
			if IsValid(enemy) and enemy:Alive() then
				local sqID = NAPC.GetSquadID(npc)
				if sqID then
					if not activeSquads[sqID] then
						activeSquads[sqID] = {
							id = sqID,
							members = {},
							center = Vector(0, 0, 0),
							target = enemy,
							class = npc:GetClass(),
							totalFirepower = 0,
							canSuppressCount = 0,
							isFiringCount = 0,
						}
					end

					local sq = activeSquads[sqID]
					table.insert(sq.members, npc)
					sq.center = sq.center + npc:GetPos()
					sq.totalFirepower = sq.totalFirepower + NAPC.GetFirepower(npc)
					if npc:HasCondition(COND.CAN_RANGE_ATTACK1) and npc:Visible(enemy) then
						sq.canSuppressCount = sq.canSuppressCount + 1
					end
					if npc:GetCurrentSchedule() == SCHED_RANGE_ATTACK1 then
						sq.isFiringCount = sq.isFiringCount + 1
					end
				end
			end
		end
	end

	for sqID, sq in pairs(activeSquads) do
		if IsValid(sq.target) and sq.target:Alive() then
			for _, member in ipairs(sq.members) do
				if IsValid(member) and member:Alive() then
					local curE = member:GetEnemy()
					if not IsValid(curE) or not curE:Alive() then
						member:SetEnemy(sq.target)
						member:UpdateEnemyMemory(sq.target, sq.target:GetPos())
					end
				end
			end
		end
	end

	local enemyEngagementTheaters = {}
	for sqID, sq in pairs(activeSquads) do
		local count = #sq.members
		if count > 0 then
			sq.center = sq.center / count
			local targetEnt = sq.target
			if not enemyEngagementTheaters[targetEnt] then
				enemyEngagementTheaters[targetEnt] = {}
			end
			table.insert(enemyEngagementTheaters[targetEnt], sq)
		end
	end

	for targetEnemy, squadList in pairs(enemyEngagementTheaters) do
		local targetPos = targetEnemy:GetPos()
		local numSquads = #squadList

		if numSquads == 1 then
			local sq = squadList[1]
			if sq.class == "npc_combine_s" then
				sq.role = (sq.canSuppressCount > 0 and sq.totalFirepower >= 5.0) and "SQUAD_ROLE_SUPPRESS"
					or "SQUAD_ROLE_ASSAULT"
			else
				sq.role = "AUTONOMOUS"
			end
			sq.isCoveringAllies = false
			NAPC.TheaterSquads[sq.id] = sq
		else
			table.sort(squadList, function(a, b)
				return (a.center - targetPos):LengthSqr() > (b.center - targetPos):LengthSqr()
			end)

			local suppressSquad = squadList[1]
			suppressSquad.role = "SQUAD_ROLE_SUPPRESS"
			suppressSquad.isCoveringAllies = (suppressSquad.canSuppressCount > 0 or suppressSquad.isFiringCount > 0)
			NAPC.TheaterSquads[suppressSquad.id] = suppressSquad

			local assaultSquad = squadList[#squadList]
			assaultSquad.role = "SQUAD_ROLE_ASSAULT"
			assaultSquad.hasCoveringFire = suppressSquad.isCoveringAllies
			assaultSquad.isCoveringAllies = false
			assaultSquad.suppressSquadCentroid = suppressSquad.center
			NAPC.TheaterSquads[assaultSquad.id] = assaultSquad

			for i = 2, numSquads - 1 do
				local sideSquad = squadList[i]

				if i == 2 and numSquads >= 3 then
					sideSquad.role = "SQUAD_ROLE_SECURE"
					sideSquad.hasCoveringFire = suppressSquad.isCoveringAllies
					sideSquad.isCoveringAllies = false
					NAPC.TheaterSquads[sideSquad.id] = sideSquad
				else
					sideSquad.role = "SQUAD_ROLE_FLANK"
					sideSquad.hasCoveringFire = suppressSquad.isCoveringAllies
					sideSquad.isCoveringAllies = false

					local dirToTarget = (targetPos - suppressSquad.center)
					dirToTarget.z = 0
					if dirToTarget:IsZero() then
						dirToTarget = suppressSquad.center:GetNormalized()
					else
						dirToTarget = dirToTarget:GetNormalized()
					end

					sideSquad.flankVector = dirToTarget:Angle():Right() * ((i % 2 == 0) and 1 or -1)
					NAPC.TheaterSquads[sideSquad.id] = sideSquad
				end
			end
		end
	end
end

function NAPC.BroadcastDebugInfo()
	if NAPC.CurTime_Tick < NAPC.NextDebugBroadcast then
		return
	end
	NAPC.NextDebugBroadcast = NAPC.CurTime_Tick + 0.1

	local devPlayers = {}
	for _, ply in player.Iterator() do
		if IsValid(ply) and ply:GetInfoNum("developer", 0) > 0 then
			table.insert(devPlayers, ply)
		end
	end

	if #devPlayers == 0 and GetConVar("developer"):GetInt() <= 0 then
		return
	end

	local cur = NAPC.CurTime_Tick
	local debugData = {
		npcs = {},
		squads = {},
		dangerZones = {},
		grenadeArcs = {},
		areaScores = {},
		casualties = #NAPC.RecentCasualties,
		missiles = 0,
	}

	for missile, _ in pairs(NAPC.ActiveMissiles) do
		if IsValid(missile) then
			debugData.missiles = debugData.missiles + 1
		end
	end

	for _, rec in pairs(NAPC.AreaScoreRecords) do
		if cur <= (rec.trackedUntil + 5) then
			local faction = NAPC.AreaDebugNearestFaction(rec.pos)
			table.insert(debugData.areaScores, {
				id = rec.id,
				faction = faction,
				pos = rec.pos,
				danger = math.Round(NAPC.AreaDangerScore(rec, faction, cur), 1),
				deaths = math.Round(NAPC.AreaDeathScore(rec, faction, cur), 1),
				seen = math.Round(NAPC.AreaSeenScore(rec, faction, cur), 1),
				fired = math.Round(NAPC.AreaFiredScore(rec, faction, cur), 1),
				flank = math.Round(rec.flankDebug or 0, 2),
				overlook = math.Round(rec.overlookDebug or 0, 2),
			})
		end
	end

	for i = 1, #NAPC.LethalDangerZones do
		local z = NAPC.LethalDangerZones[i]
		if z and z.expire > cur then
			table.insert(debugData.dangerZones, {
				pos = z.pos,
				radius = z.radius,
				severity = z.severity,
				timeLeft = math.Round(z.expire - cur, 1),
			})
		end
	end

	for i = #NAPC.DebugGrenadeArcs, 1, -1 do
		local arc = NAPC.DebugGrenadeArcs[i]
		if not arc or cur > arc.expire then
			table.remove(NAPC.DebugGrenadeArcs, i)
		else
			table.insert(debugData.grenadeArcs, {
				path = arc.path,
				bounces = arc.bounces,
				finalPos = arc.finalPos,
				valid = arc.valid,
				hitEnemy = arc.hitEnemy,
			})
		end
	end

	for sqID, sq in pairs(NAPC.TheaterSquads) do
		local memberIndices = {}
		for _, m in ipairs(sq.members) do
			if IsValid(m) then
				table.insert(memberIndices, m:EntIndex())
			end
		end

		debugData.squads[sqID] = {
			id = sqID,
			role = sq.role or "AUTONOMOUS",
			center = sq.center,
			hasCoveringFire = sq.hasCoveringFire or false,
			isCoveringAllies = sq.isCoveringAllies or false,
			totalFirepower = math.Round(sq.totalFirepower or 0, 1),
			targetIdx = IsValid(sq.target) and sq.target:EntIndex() or nil,
			targetPos = IsValid(sq.target) and sq.target:GetPos() or nil,
			members = memberIndices,
		}
	end

	for npc, _ in pairs(NAPC.CurNPCList) do
		if IsValid(npc) and npc:IsNPC() and npc:Alive() then
			local ooda = npc.OODA or npc.CECA
			local enemy = npc:GetEnemy()
			local wep = npc:GetActiveWeapon()

			local topTactics = {}
			if ooda and ooda.TacticalScores then
				for k, v in pairs(ooda.TacticalScores) do
					if math.abs(v) > 0.1 then
						table.insert(topTactics, { name = k, score = math.Round(v, 2) })
					end
				end
				table.sort(topTactics, function(a, b)
					return a.score > b.score
				end)
			end

			table.insert(debugData.npcs, {
				entIdx = npc:EntIndex(),
				class = npc:GetClass(),
				pos = npc:GetPos(),
				eyePos = npc:EyePos(),
				health = npc:Health(),
				maxHealth = npc:GetMaxHealth(),
				sched = npc:GetCurrentSchedule(),
				state = npc:GetNPCState(),
				squadID = NAPC.GetSquadID(npc),
				weapon = IsValid(wep) and wep:GetClass() or "none",
				enemyIdx = IsValid(enemy) and enemy:EntIndex() or nil,
				enemyClass = IsValid(enemy) and enemy:GetClass() or "none",
				enemyDist = IsValid(enemy) and math.Round((enemy:GetPos() - npc:GetPos()):Length(), 0) or 0,
				hasLOS = IsValid(enemy) and npc:Visible(enemy) or false,
				forcedGo = npc.ForcedGoPos_NAPC,
				isCloaked = npc.IsUsingCloaking or false,
				ooda = ooda and {
					decision = ooda.LastDecision or "NONE",
					predictedReaction = ooda.PredictedEnemyReaction or "NONE",
					utility = math.Round(ooda.ProjectedMoveUtility or 0, 1),
					dmgDealt = math.Round(ooda.ActiveDecisionDmgDealt or 0, 0),
					dmgTaken = math.Round(ooda.ActiveDecisionDmgTaken or 0, 0),
					nextCycle = math.max(0, math.Round(ooda.NextCycle - cur, 2)),
					lockTime = math.max(0, math.Round((ooda.MovementLockTime or 0) - cur, 2)),
					topScores = topTactics,
				} or nil,
			})
		end
	end

	net.Start("NAPC_DebugData")
	net.WriteTable(debugData)
	if #devPlayers > 0 then
		net.Send(devPlayers)
	else
		net.Broadcast()
	end
end

function NAPC.NotifyThreat(sourceNpc, enemy, enemyPos, alertRadius)
	if not IsValid(sourceNpc) or not IsValid(enemy) or not enemy:Alive() then
		return
	end

	alertRadius = alertRadius or 3500
	local alertRadiusSqr = alertRadius * alertRadius
	local myPos = sourceNpc:GetPos()
	local ePos = enemyPos or enemy:GetPos()
	local mySquadID = NAPC.GetSquadID(sourceNpc)
	local isAirTarget = NAPC.IsFlyingOrHovering(enemy)

	for ally, _ in pairs(NAPC.CurNPCList) do
		if
			IsValid(ally)
			and ally ~= sourceNpc
			and ally:IsNPC()
			and ally:Alive()
			and NAPC.IsFriendly(sourceNpc, ally)
		then
			local allyWep = ally:GetActiveWeapon()
			local canEngageAir = NAPC.IsRocketLauncher(allyWep) or not isAirTarget

			if canEngageAir then
				local allyPos = ally:GetPos()
				local distSqr = (allyPos - myPos):LengthSqr()
				local isSameSquad = mySquadID and (NAPC.GetSquadID(ally) == mySquadID)

				if isSameSquad or distSqr <= alertRadiusSqr then
					ally:UpdateEnemyMemory(enemy, ePos)

					local currentEnemy = ally:GetEnemy()
					local needsTarget = not IsValid(currentEnemy) or not currentEnemy:Alive()

					if needsTarget or (isSameSquad and currentEnemy ~= enemy and not ally:Visible(currentEnemy)) then
						ally:SetEnemy(enemy)
						if ally:GetNPCState() ~= NPC_STATE_COMBAT then
							ally:SetNPCState(NPC_STATE_COMBAT)
						end
					end

					if
						ally.OODA
						and ally.OODA.LastDecision ~= "INDIVIDUAL_RETREAT"
						and ally.OODA.LastDecision ~= "GROUP_ROUT"
					then
						local isIdle = ally.OODA.LastDecision == "NONE" or ally.OODA.LastDecision == "HOLD_AND_ATTACK"
						if isIdle or NAPC.CurTime_Tick > (ally.OODA.NextCycle or 0) then
							ally.OODA.NextCycle = NAPC.CurTime_Tick + math.Rand(0.05, 0.25)
							ally.OODA.DecisionTime = 0
							ally.OODA.ActionApplied = false
						end
					end
				end
			end
		end
	end
end

function NAPC.CallForSupport(npc, enemy)
	if not IsValid(npc) or not IsValid(enemy) then
		return
	end
	NAPC.NotifyThreat(npc, enemy, enemy:GetPos(), 3800)
end

function NAPC.FindHighGroundRear(groupCenter, enemyPos, minElev, enemy, allThreats)
	return NAPC.FindHighGroundPos(enemy and enemy:GetEnemy() or NULL, enemy, allThreats, minElev)
end

function NAPC.IsRocketEntity(ent)
	if not IsValid(ent) then
		return false
	end
	local class = ent:GetClass()
	return class == "rpg_missile"
		or class == "apc_missile"
		or string.find(class, "missile") ~= nil
		or string.find(class, "rocket") ~= nil
end

function NAPC.FindExplosiveEvadePos(npc, dangerPos, dangerVel, dangerEnt)
	if not IsValid(npc) or not dangerPos then
		return nil, dangerPos
	end

	local npcPos = npc:GetPos()
	local enemy = npc.GetEnemy and npc:GetEnemy() or nil
	local enemyPos = IsValid(enemy) and enemy:GetPos() or nil
	local blastCenter = dangerPos
	local vel = isvector(dangerVel) and dangerVel or (IsValid(dangerEnt) and dangerEnt:GetVelocity() or Vector(0, 0, 0))
	local speed = vel:Length()

	if speed > 100 then
		local trImpact = util.TraceLine({
			start = dangerPos,
			endpos = dangerPos + (vel:GetNormalized() * math.min(1500, speed * 1.5)),
			mask = MASK_SOLID,
			filter = { npc, dangerEnt },
		})
		if trImpact.Hit then
			blastCenter = trImpact.HitPos
		else
			blastCenter = dangerPos + (vel * 0.4)
		end
	end

	local awayFromBlast = npcPos - blastCenter
	awayFromBlast.z = 0
	if awayFromBlast:LengthSqr() < 16 then
		awayFromBlast = -npc:GetForward()
		awayFromBlast.z = 0
	end
	awayFromBlast:Normalize()

	local candidatePositions = {}
	local navCandidates = NAPC.GetReachableNavCandidates(npc, 950, 250, 10)
	if navCandidates and #navCandidates > 0 then
		for _, cPos in ipairs(navCandidates) do
			candidatePositions[#candidatePositions + 1] = cPos
		end
	end

	local sampleAngles = { 0, 35, -35, 70, -70, 90, -90, 120, -120 }
	local sampleDists = { 320, 550, 850 }
	local baseAngle = awayFromBlast:Angle()

	for _, dist in ipairs(sampleDists) do
		for _, ang in ipairs(sampleAngles) do
			local dir = (baseAngle + Angle(0, ang, 0)):Forward()
			candidatePositions[#candidatePositions + 1] = npcPos + (dir * dist)
		end
	end

	local bestPos = nil
	local bestScore = -99999

	for _, candPos in ipairs(candidatePositions) do
		if NAPC.IsDestinationValid(npc, candPos, false) then
			NAPC.trData.start = candPos + Vector(0, 0, 80)
			NAPC.trData.endpos = candPos - Vector(0, 0, 180)
			NAPC.trData.mask = MASK_SOLID_BRUSHONLY
			NAPC.trData.filter = nil
			util.TraceLine(NAPC.trData)

			if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
				local groundPos = NAPC.trRes.HitPos

				if not NAPC.IsPositionInWater(groundPos) and not NAPC.IsPosNearLethalDanger(groundPos, 32) then
					local distToBlast = (groundPos - blastCenter):Length()

					if distToBlast >= 260 then
						local standEye = groundPos + Vector(0, 0, 64)
						local crouchEye = groundPos + Vector(0, 0, 36)
						local blastEye = blastCenter + Vector(0, 0, 20)

						NAPC.trData.start = standEye
						NAPC.trData.endpos = blastEye
						NAPC.trData.mask = MASK_SOLID_BRUSHONLY
						NAPC.trData.filter = nil
						util.TraceLine(NAPC.trData)
						local isBehindHardCover = NAPC.trRes.Hit and (NAPC.trRes.Fraction < 0.95)

						NAPC.trData.start = crouchEye
						NAPC.trData.endpos = blastEye
						NAPC.trData.mask = MASK_SOLID_BRUSHONLY
						NAPC.trData.filter = nil
						util.TraceLine(NAPC.trData)
						local isBehindCrouchCover = NAPC.trRes.Hit and (NAPC.trRes.Fraction < 0.95)

						NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
						NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
						NAPC.hullTrData.filter = nil
						util.TraceHull(NAPC.hullTrData)

						if not NAPC.hullTrRes.Hit then
							local distFromNPC = (groundPos - npcPos):Length()
							local coverBonus = (isBehindHardCover and 160 or 0) + (isBehindCrouchCover and 60 or 0)
							local distBonus = math.Clamp((distToBlast - 260) * 0.35, 0, 150)
							local travelPenalty = distFromNPC * 0.06

							local enemyDangerPenalty = 0
							if enemyPos then
								local distToEnemy = (groundPos - enemyPos):Length()
								if distToEnemy < 250 then
									enemyDangerPenalty = (250 - distToEnemy) * 1.5
								end
							end

							local score = coverBonus + distBonus - travelPenalty - enemyDangerPenalty

							if score > bestScore then
								bestScore = score
								bestPos = groundPos
							end
						end
					end
				end
			end
		end
	end

	return bestPos, blastCenter
end

function NAPC.CheckIncomingRocket(npc)
	if not IsValid(npc) then
		return nil, nil, nil
	end
	local npcPos = npc:WorldSpaceCenter()

	for missile, _ in pairs(NAPC.ActiveMissiles) do
		if not IsValid(missile) then
			NAPC.ActiveMissiles[missile] = nil
		else
			local mPos = missile:GetPos()
			local toNpc = npcPos - mPos
			local distSqr = toNpc:LengthSqr()

			if distSqr <= 3841600 then
				local vel = missile:GetVelocity()
				local speedSqr = vel:LengthSqr()
				local dist = math.sqrt(distSqr)

				local isHeadingTowards = false
				if speedSqr > 10000 then
					local speed = math.sqrt(speedSqr)
					local heading = vel / speed
					local dirToNpc = toNpc / math.max(1, dist)
					local dot = heading:Dot(dirToNpc)

					if dot > 0.40 then
						isHeadingTowards = true
					else
						local proj = toNpc:Dot(heading)
						if proj > 0 then
							local closestPoint = mPos + (heading * proj)
							local missDist = (npcPos - closestPoint):Length()
							if missDist < 350 and (proj / speed) < 3.0 then
								isHeadingTowards = true
							end
						end
					end
				end

				if isHeadingTowards or dist < 380 then
					return missile, mPos, vel
				end
			end
		end
	end

	local nearby = ents.FindInSphere(npcPos, 900)
	for _, ent in ipairs(nearby) do
		if IsValid(ent) and ent ~= npc and not NAPC.ActiveMissiles[ent] then
			local class = ent:GetClass()
			local isGrenade = (class == "npc_grenade_frag" or class == "grenade_ar2" or class == "prop_combine_ball")
			local isOtherMissile = (not isGrenade) and NAPC.IsRocketEntity(ent)

			if isGrenade or isOtherMissile then
				local ePos = ent:GetPos()
				local toNpc = npcPos - ePos
				local distSqr = toNpc:LengthSqr()
				local vel = ent:GetVelocity()
				local speedSqr = vel:LengthSqr()
				local dist = math.sqrt(distSqr)

				local isThreat = false
				if speedSqr > 4900 then
					local speed = math.sqrt(speedSqr)
					local heading = vel / speed
					local dirToNpc = toNpc / math.max(1, dist)
					local dot = heading:Dot(dirToNpc)

					if dot > 0.35 then
						isThreat = true
					else
						local proj = toNpc:Dot(heading)
						if proj > 0 then
							local closestPoint = ePos + (heading * proj)
							local missDist = (npcPos - closestPoint):Length()
							if missDist < 320 and (proj / speed) < 2.5 then
								isThreat = true
							end
						end
					end
				end

				if not isThreat and dist < 380 then
					if isGrenade then
						isThreat = true
					end
				end

				if isThreat then
					if isOtherMissile then
						NAPC.ActiveMissiles[ent] = true
					end
					return ent, ePos, vel
				end
			end
		end
	end

	return nil, nil, nil
end

function NAPC.FindCoverShootingPos(npc, enemy, allThreats, minDist, maxDist)
	if not IsValid(npc) or not IsValid(enemy) then
		return nil
	end

	local cur = NAPC.CurTime_Tick
	local npcPos = npc:GetPos()
	local enemyPos = enemy:GetPos()

	if npc.CachedCoverTime_NAPC and (cur - npc.CachedCoverTime_NAPC < 1.2) and npc.CachedCoverPos_NAPC then
		if
			npc.CachedCoverEnemy_NAPC == enemy
			and (npcPos - (npc.CachedCoverOrigin_NAPC or npcPos)):LengthSqr() < 16000
		then
			local d = (enemyPos - npc.CachedCoverPos_NAPC):Length()
			if d >= (minDist or 200) and d <= (maxDist or 1500) then
				return npc.CachedCoverPos_NAPC
			end
		end
	end

	local enemyEye = enemy:EyePos()
	local toEnemy = (enemyPos - npcPos):GetNormalized()

	minDist = minDist or 280
	maxDist = maxDist or 1200

	local bestPos = nil
	local bestScore = -99999

	local sampleAngles = { 0, -35, 35, -70, 70, -110, 110, 155, -155 }
	local sampleDists = { 220, 420, 680, 960 }

	for _, dist in ipairs(sampleDists) do
		for _, ang in ipairs(sampleAngles) do
			local dir = (toEnemy:Angle() + Angle(0, ang, 0)):Forward()
			local candidatePos = npcPos + (dir * dist)
			local dToEnemy = (enemyPos - candidatePos):Length()

			if dToEnemy >= minDist and dToEnemy <= maxDist then
				if NAPC.IsDestinationValid(npc, candidatePos, false) then
					NAPC.trData.start = candidatePos + Vector(0, 0, 128)
					NAPC.trData.endpos = candidatePos - Vector(0, 0, 200)
					NAPC.trData.mask = MASK_SOLID_BRUSHONLY
					NAPC.trData.filter = nil
					util.TraceLine(NAPC.trData)

					if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
						local groundPos = NAPC.trRes.HitPos
						if not NAPC.IsPositionInWater(groundPos) then
							local standEye = groundPos + Vector(0, 0, 64)

							NAPC.trData.start = standEye
							NAPC.trData.endpos = enemyEye
							NAPC.trData.filter = { npc, enemy }
							NAPC.trData.mask = MASK_SHOT
							util.TraceLine(NAPC.trData)

							local canShootEnemy = (NAPC.trRes.Fraction >= 0.88 or NAPC.trRes.Entity == enemy)

							if canShootEnemy then
								local crouchEye = groundPos + Vector(0, 0, 36)
								NAPC.trData.start = crouchEye
								NAPC.trData.endpos = enemyEye
								NAPC.trData.filter = { npc, enemy }
								NAPC.trData.mask = MASK_SHOT
								util.TraceLine(NAPC.trData)
								local crouchCover = (NAPC.trRes.Fraction < 1.0 and NAPC.trRes.Entity ~= enemy)

								local concealedSteps = 0
								local threatShieldedSteps = 0
								local testOffsets = { Vector(-48, 0, 0), Vector(48, 0, 0) }

								for _, stepVec in ipairs(testOffsets) do
									local stepEye = standEye + stepVec
									NAPC.trData.start = stepEye
									NAPC.trData.endpos = enemyEye
									NAPC.trData.filter = { npc, enemy }
									NAPC.trData.mask = MASK_SHOT
									util.TraceLine(NAPC.trData)

									if NAPC.trRes.Fraction < 1.0 and NAPC.trRes.Entity ~= enemy then
										concealedSteps = concealedSteps + 1
										if
											allThreats
											and allThreats[1]
											and IsValid(allThreats[1])
											and allThreats[1] ~= enemy
										then
											NAPC.trData.start = stepEye
											NAPC.trData.endpos = allThreats[1]:EyePos()
											NAPC.trData.filter = { npc, allThreats[1] }
											NAPC.trData.mask = MASK_SHOT
											util.TraceLine(NAPC.trData)
											if NAPC.trRes.Fraction < 0.92 and NAPC.trRes.Entity ~= allThreats[1] then
												threatShieldedSteps = threatShieldedSteps + 1
											end
										else
											threatShieldedSteps = threatShieldedSteps + 1
										end
									end
								end

								NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
								NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
								NAPC.hullTrData.filter = nil
								util.TraceHull(NAPC.hullTrData)

								if not NAPC.hullTrRes.Hit then
									local elevationBonus = math.Clamp((groundPos.z - enemyPos.z) * 0.4, -20, 50)
									local avoidancePenalty =
										NAPC.AreaGetDangerAtPos(groundPos, NAPC.AreaGetFactionOf(npc), cur, enemy)

									local score = (concealedSteps * 35)
										+ (threatShieldedSteps * 30)
										+ (crouchCover and 50 or 15)
										+ elevationBonus
										- (avoidancePenalty * 15)
										- (dist * 0.03)

									if score > bestScore then
										bestScore = score
										bestPos = groundPos
									end
								end
							end
						end
					end
				end
			end
		end
	end

	if bestPos then
		npc.CachedCoverTime_NAPC = cur
		npc.CachedCoverPos_NAPC = bestPos
		npc.CachedCoverEnemy_NAPC = enemy
		npc.CachedCoverOrigin_NAPC = npcPos
	end

	return bestPos
end

function NAPC.Tick_RocketEvade(npc, curSched)
	local incomingExp, expPos, expVel = NAPC.CheckIncomingRocket(npc)
	if incomingExp then
		NAPC.Tick_MovementSpeed(npc, 1.5)

		local evadePos, blastCenter = NAPC.FindExplosiveEvadePos(npc, expPos, expVel, incomingExp)
		NAPC.LogLethalDangerZone(blastCenter or expPos, 3)

		if npc:GetClass() == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end

		if npc.OODA then
			npc.OODA.ActionApplied = false
			npc.OODA.DecisionTime = 0
			npc.OODA.NextCycle = NAPC.CurTime_Tick + 0.05
		end

		if curSched == SCHED_COWER then
			npc:ClearSchedule()
		end

		if
			curSched ~= SCHED_TAKE_COVER_FROM_BEST_SOUND
			and curSched ~= SCHED_FLEE_FROM_BEST_SOUND
			and not (npc.ForcedGoPos_NAPC and (npc.ForcedGoPos_NAPC - (blastCenter or expPos)):LengthSqr() > 90000)
		then
			if evadePos and NAPC.IsDestinationValid(npc, evadePos) then
				npc.ForcedGoPos_NAPC = evadePos
				npc.ForcedGoTimeout_NAPC = NAPC.CurTime_Tick + 3.5
				npc.ForcedGoStartTime_NAPC = NAPC.CurTime_Tick
				npc.ForcedGoLastPos_NAPC = npc:GetPos()
				npc.ForcedGoStuckTime_NAPC = NAPC.CurTime_Tick
				npc:SetSaveValue("m_vecLastPosition", evadePos)
				npc:SetSchedule(SCHED_FORCED_GO_RUN)
			else
				npc:SetSchedule(SCHED_FLEE_FROM_BEST_SOUND)
			end
		end
		return true
	end
	return false
end

function NAPC.IsPositionInFatalFunnel(pos)
	if not pos then
		return false
	end

	local checkCenter = pos + Vector(0, 0, 36)
	local lateralEnclosure = 0
	local directions = {
		Vector(1, 0, 0),
		Vector(-1, 0, 0),
		Vector(0, 1, 0),
		Vector(0, -1, 0),
		Vector(0.707, 0.707, 0),
		Vector(-0.707, -0.707, 0),
		Vector(-0.707, 0.707, 0),
		Vector(0.707, -0.707, 0),
	}

	for _, dir in ipairs(directions) do
		local tr = util.TraceLine({
			start = checkCenter,
			endpos = checkCenter + (dir * 360),
			mask = MASK_SOLID_BRUSHONLY,
		})
		if tr.Hit and not tr.StartSolid and math.abs(tr.HitNormal.z) < 0.35 then
			lateralEnclosure = lateralEnclosure + 1
		end
	end

	return lateralEnclosure >= 3
end

function NAPC.FindFunnelOverwatchPos(npc, enemy, allThreats)
	if not IsValid(npc) or not IsValid(enemy) then
		return nil
	end

	local npcPos = npc:GetPos()
	local enemyPos = enemy:GetPos()
	local enemyEye = enemy:EyePos()
	local toEnemy = (enemyPos - npcPos):GetNormalized()

	local bestPos = nil
	local bestScore = -9999

	local candidatePositions = NAPC.GetReachableNavCandidates(npc, 950, 260, 10)
	if not candidatePositions or #candidatePositions == 0 then
		candidatePositions = {}
		local rightVec = toEnemy:Angle():Right()
		local sampleOffsets = {
			(rightVec * 480) - (toEnemy * 120),
			(rightVec * 650) - (toEnemy * 60),
			(-rightVec * 480) - (toEnemy * 120),
			(-rightVec * 650) - (toEnemy * 60),
			(rightVec * 550) + (toEnemy * 180),
			(-rightVec * 550) + (toEnemy * 180),
		}
		for _, offset in ipairs(sampleOffsets) do
			candidatePositions[#candidatePositions + 1] = npcPos + offset
		end
	end

	for _, candidatePos in ipairs(candidatePositions) do
		if NAPC.IsDestinationValid(npc, candidatePos, false) then
			NAPC.trData.start = candidatePos + Vector(0, 0, 200)
			NAPC.trData.endpos = candidatePos - Vector(0, 0, 250)
			NAPC.trData.mask = MASK_SOLID_BRUSHONLY
			NAPC.trData.filter = nil
			util.TraceLine(NAPC.trData)

			if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
				local groundPos = NAPC.trRes.HitPos

				if not NAPC.IsPositionInWater(groundPos) and not NAPC.IsPositionInFatalFunnel(groundPos) then
					local standEye = groundPos + Vector(0, 0, 64)

					NAPC.trData.start = standEye
					NAPC.trData.endpos = enemyEye
					NAPC.trData.filter = { npc, enemy }
					NAPC.trData.mask = MASK_SHOT
					util.TraceLine(NAPC.trData)

					if NAPC.trRes.Fraction >= 0.90 or NAPC.trRes.Entity == enemy then
						NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
						NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
						NAPC.hullTrData.filter = nil
						util.TraceHull(NAPC.hullTrData)

						if not NAPC.hullTrRes.Hit then
							local elevationVsEnemy = math.Clamp(groundPos.z - enemyPos.z, -30, 200)
							local toCandidate = (groundPos - enemyPos):GetNormalized()
							local lateralAngleFactor = 1.0 - math.abs(toEnemy:Dot(toCandidate))
							local distToEnemy = (enemyPos - groundPos):Length()

							local score = (elevationVsEnemy * 1.5)
								+ (lateralAngleFactor * 45)
								+ (distToEnemy >= 350 and distToEnemy <= 850 and 35 or -15)
								- ((groundPos - npcPos):Length() * 0.03)

							if score > bestScore then
								bestScore = score
								bestPos = groundPos
							end
						end
					end
				end
			end
		end
	end

	return bestPos
end

function NAPC.OODA_Observe(npc, enemy, weapon)
	local obs = {}
	local npcPos = npc:GetPos()
	local enemyPos = enemy:GetPos()

	local maxHp = math.max(1, npc:GetMaxHealth())
	obs.healthRatio = npc:Health() / maxHp
	obs.ammoLack = npc:HasCondition(COND.LOW_PRIMARY_AMMO) or npc:HasCondition(COND.NO_PRIMARY_AMMO)
	obs.enemyDistSqr = (enemyPos - npcPos):LengthSqr()
	obs.enemyDist = math.sqrt(obs.enemyDistSqr)
	obs.seeEnemy = npc:Visible(enemy)
	obs.canAttack = npc:HasCondition(COND.CAN_RANGE_ATTACK1)
		or npc:HasCondition(COND.CAN_RANGE_ATTACK2)
		or npc:HasCondition(COND.CAN_MELEE_ATTACK1)
		or (obs.seeEnemy and obs.enemyDist < 450)
	obs.enemyHasRPG = NAPC.IsRocketLauncher(enemy:GetActiveWeapon())

	obs.isZombieOrHeadcrab = NAPC.IsZombieOrHeadcrab(enemy)
	obs.zombieTooClose = obs.isZombieOrHeadcrab and (obs.enemyDist < 550)

	local enemyMaxHp = enemy.GetMaxHealth and enemy:GetMaxHealth() or 100
	obs.enemyHealthRatio = enemy:Health() / math.max(1, enemyMaxHp)
	obs.enemyCritical = (obs.enemyHealthRatio <= 0.25) or (enemy:Health() <= 25)

	obs.enemyElevationDelta = enemyPos.z - npcPos.z
	obs.enemyHasHighGround = (obs.enemyElevationDelta > 90)
	obs.hasHighGroundAdvantage = (obs.enemyElevationDelta < -90)

	obs.enemyIsFlyer = NAPC.IsFlyingOrHovering(enemy)
	local timeSinceFlyerDmg = NAPC.CurTime_Tick - (npc.LastFlyerDamageTime_NAPC or 0)
	obs.flyerDamagedUs = (obs.enemyIsFlyer or IsValid(npc.LastFlyerAttacker_NAPC)) and (timeSinceFlyerDmg < 12.0)

	NAPC.OODA_UpdateEnemyProfile(npc, enemy, obs)

	local timeSinceDmg = NAPC.CurTime_Tick - (npc.LastDamageTime_NAPC or 0)
	if timeSinceDmg > 3.0 then
		npc.DamageBuffer_NAPC = 0
	end
	obs.rapidDmgTaken = npc.DamageBuffer_NAPC or 0
	obs.isTakingHeavyDPS = (obs.rapidDmgTaken > maxHp * 0.22)

	obs.enemyIsPlayer = enemy:IsPlayer()
	obs.enemyAimingAtMe = false
	obs.enemyTurnedAway = false
	obs.enemyReloading = false

	if not (obs.enemyIsPlayer and NAPC.IsPlayerIgnored(enemy)) then
		local enemyAimDir = enemy:GetAimVector()
		local toMeFromEnemy = (npc:WorldSpaceCenter() - enemy:EyePos()):GetNormalized()
		local aimDot = enemyAimDir:Dot(toMeFromEnemy)

		if aimDot > 0.85 then
			obs.enemyAimingAtMe = true
		elseif aimDot < 0.25 then
			obs.enemyTurnedAway = true
		end

		if obs.enemyIsPlayer then
			local plyWep = enemy:GetActiveWeapon()
			if IsValid(plyWep) and plyWep.Clip1 and plyWep:Clip1() == 0 then
				obs.enemyReloading = true
			end
		elseif enemy.HasCondition then
			obs.enemyReloading = enemy:HasCondition(COND.LOW_PRIMARY_AMMO) or enemy:HasCondition(COND.NO_PRIMARY_AMMO)
		end
	end

	obs.allThreats = {}
	obs.threatsAimingAtMe = 0
	obs.incomingThreatCenter = Vector(0, 0, 0)
	obs.enemyFirepower = NAPC.GetFirepower(enemy)

	obs.squadMembers = {}
	obs.squadTargetingSame = 0
	obs.routedSquadMates = 0
	obs.healthiestMate = nil
	obs.nearestMedic = nil
	local closestMedicDistSqr = math.huge
	local highestMateHpRatio = 0.65

	local groupPosSum = Vector(npcPos.x, npcPos.y, npcPos.z)
	obs.friendlyFirepower = NAPC.GetFirepower(npc)
	local checkSquad = NAPC.ConvarsBool["NAPC_OODA_SquadTactics"]
	local myWSC = npc:WorldSpaceCenter()

	for _, ply in player.Iterator() do
		if IsValid(ply) and ply:Alive() and not NAPC.IsPlayerIgnored(ply) then
			local dSqr = (ply:GetPos() - npcPos):LengthSqr()
			if NAPC.IsFriendly(npc, ply) then
				if dSqr <= 4194304 then
					obs.friendlyFirepower = obs.friendlyFirepower + NAPC.GetFirepower(ply)
				end
			elseif dSqr <= 3240000 then
				table.insert(obs.allThreats, ply)
				obs.incomingThreatCenter = obs.incomingThreatCenter + ply:GetPos()
				if ply ~= enemy then
					obs.enemyFirepower = obs.enemyFirepower + NAPC.GetFirepower(ply)
				end
				local toMe = (myWSC - ply:EyePos()):GetNormalized()
				if ply:GetAimVector():Dot(toMe) > 0.85 then
					obs.threatsAimingAtMe = obs.threatsAimingAtMe + 1
				end
			end
		end
	end

	for mate, _ in pairs(NAPC.CurNPCList) do
		if IsValid(mate) and mate ~= npc and mate:IsNPC() and mate:Alive() then
			local matePos = mate:GetPos()
			local dSqr = (matePos - npcPos):LengthSqr()

			if NAPC.IsFriendly(npc, mate) then
				if checkSquad and dSqr <= 4194304 then
					table.insert(obs.squadMembers, mate)
					groupPosSum = groupPosSum + matePos
					obs.friendlyFirepower = obs.friendlyFirepower + NAPC.GetFirepower(mate)

					if mate:GetEnemy() == enemy then
						obs.squadTargetingSame = obs.squadTargetingSame + 1
					end

					if
						mate.OODA
						and (mate.OODA.LastDecision == "INDIVIDUAL_RETREAT" or mate.OODA.LastDecision == "GROUP_ROUT")
					then
						obs.routedSquadMates = obs.routedSquadMates + 1
					end

					local mateRatio = mate:Health() / math.max(1, mate:GetMaxHealth())
					if mateRatio > highestMateHpRatio then
						highestMateHpRatio = mateRatio
						obs.healthiestMate = mate
					end

					if
						mate:GetClass() == "npc_citizen"
						and mate:HasSpawnFlags(SF_CITIZEN_MEDIC)
						and mateRatio > 0.4
					then
						if dSqr < closestMedicDistSqr then
							closestMedicDistSqr = dSqr
							obs.nearestMedic = mate
						end
					end
				end
			else
				if dSqr <= 3240000 then
					table.insert(obs.allThreats, mate)
					obs.incomingThreatCenter = obs.incomingThreatCenter + matePos
					if mate ~= enemy then
						obs.enemyFirepower = obs.enemyFirepower + NAPC.GetFirepower(mate)
					end
					if mate:GetEnemy() == npc then
						obs.threatsAimingAtMe = obs.threatsAimingAtMe + 1
					end
				end
			end
		end
	end

	local threatCount = #obs.allThreats
	obs.incomingThreatCenter = (threatCount > 0) and (obs.incomingThreatCenter / threatCount) or enemyPos

	obs.isPincered = false
	if threatCount >= 2 then
		local threatDirs = {}
		for i = 1, math.min(threatCount, 4) do
			local th = obs.allThreats[i]
			if IsValid(th) then
				table.insert(threatDirs, (th:GetPos() - npcPos):GetNormalized())
			end
		end
		for i = 1, #threatDirs do
			for j = i + 1, #threatDirs do
				if threatDirs[i]:Dot(threatDirs[j]) < -0.15 then
					obs.isPincered = true
					break
				end
			end
			if obs.isPincered then
				break
			end
		end
	end

	obs.squadCount = #obs.squadMembers
	obs.groupCenter = groupPosSum / (obs.squadCount + 1)

	local mySquadID = NAPC.GetSquadID(npc)
	obs.theaterSquadData = mySquadID and NAPC.TheaterSquads[mySquadID] or nil

	obs.targetCanShootBack = NAPC.CanShootBack(enemy) and not obs.isZombieOrHeadcrab
	if obs.targetCanShootBack then
		obs.bestCoverShootPos = NAPC.FindCoverShootingPos(npc, enemy, obs.allThreats, 250, 950)
	end
	obs.advanceCoverPos = NAPC.FindCoverShootingPos(npc, enemy, obs.allThreats, 220, 500)

	if obs.isZombieOrHeadcrab then
		obs.kiteRetreatPos = NAPC.FindKiteRetreatPos(npc, enemy, obs.allThreats, 450, 850)
	end

	if obs.flyerDamagedUs then
		obs.shelterCoverPos = NAPC.FindShelterCoverPos(npc, enemy, obs.allThreats)
	end

	if obs.enemyHasHighGround then
		obs.counterHighGroundPos = NAPC.FindCounterHighGroundPos(npc, enemy, obs.allThreats)
		obs.lureRetreatPos = NAPC.FindLureRetreatPos(npc, enemy, obs.allThreats)
	end

	if obs.enemyTurnedAway or obs.squadTargetingSame >= 1 then
		obs.enfiladeAdvantagePos = NAPC.FindEnfiladeVantagePos(npc, enemy, obs.allThreats)
	end

	if obs.nearestMedic and (obs.healthRatio < 0.55 or obs.isTakingHeavyDPS) then
		obs.medicRetreatPos = NAPC.FindMedicRetreatPos(npc, obs.nearestMedic, enemy)
	end

	obs.keySecurePos = NAPC.FindKeyTacticalArea(npc, enemy, obs.groupCenter)

	obs.isUnderFire = (timeSinceDmg < 1.5) or (obs.threatsAimingAtMe >= 1 and obs.seeEnemy)
	obs.inCrossfire = obs.isPincered
		or (obs.threatsAimingAtMe >= 2)
		or (obs.isUnderFire and threatCount >= 2 and not obs.bestCoverShootPos)

	if not npc.OODA.LastTrackPos or (npcPos - npc.OODA.LastTrackPos):LengthSqr() > 10000 then
		npc.OODA.LastTrackPos = npcPos
		npc.OODA.PosStayTime = NAPC.CurTime_Tick
	end

	local stayDuration = NAPC.CurTime_Tick - (npc.OODA.PosStayTime or NAPC.CurTime_Tick)
	local wepClass = IsValid(weapon) and weapon:GetClass() or ""
	local isWepShortRange = (wepClass == "weapon_shotgun" or wepClass == "weapon_smg1" or wepClass == "weapon_pistol")
		and (obs.enemyDist > 550)
	local isFarIneffective = (obs.enemyDist > 750 and stayDuration > 2.5)

	obs.stayDuration = stayDuration
	obs.isPositionPoor = (isFarIneffective or isWepShortRange)

	local isMatchingElevation = math.abs(obs.enemyElevationDelta) <= 50
	local isStaleCombat = stayDuration > 2.2 and ((npc.OODA.ActiveDecisionDmgDealt or 0) < 20)
	obs.isElevationStalemate = isMatchingElevation
		and (obs.enemyDist >= 400)
		and (
			isStaleCombat
			or npc.OODA.LastDecision == "HIGH_GROUND_REINFORCE"
			or npc.OODA.LastDecision == "HOLD_AND_ATTACK"
		)

	obs.isLongRangeStagnant = (
		obs.enemyDist > 650
		and stayDuration > 2.8
		and (npc.OODA.ActiveDecisionDmgDealt or 0) < 15
	) or (obs.isPositionPoor and stayDuration > 3.2)

	obs.recentCasualties = NAPC.GetRecentCasualtiesNear(npc, npcPos, 1800, 12)
	obs.isNearLethalZone = NAPC.IsPosNearLethalDanger(npcPos, 64)

	if obs.groupCenter and enemyPos then
		if not npc.NextHighGroundCheck_NAPC or NAPC.CurTime_Tick > npc.NextHighGroundCheck_NAPC then
			npc.CachedHighGroundPos_NAPC = NAPC.FindHighGroundRear(obs.groupCenter, enemyPos, 64, enemy, obs.allThreats)
			npc.NextHighGroundCheck_NAPC = NAPC.CurTime_Tick + 2.0
		end
		obs.highGroundPos = npc.CachedHighGroundPos_NAPC
	end

	return obs
end

function NAPC.OODA_Orient(npc, obs)
	local orient = {}
	local ooda = npc.OODA
	local enemy = npc:GetEnemy()
	local eIdx = IsValid(enemy) and enemy:EntIndex() or nil
	local prof = (eIdx and ooda.EnemyProfile) and ooda.EnemyProfile[eIdx] or nil

	local class = npc:GetClass()
	local isCombine = (class == "npc_combine_s")
	local isMetro = (class == "npc_metropolice")
	local isCitizen = (class == "npc_citizen")
	local wep = npc:GetActiveWeapon()
	local isArmed = IsValid(wep) and wep:GetClass() ~= "weapon_citizen_package"
	local isCivilian = isCitizen and not isArmed

	orient.isZombieEnemy = obs.isZombieOrHeadcrab or false
	orient.zombieTooClose = obs.zombieTooClose or false

	local threat = 1
	if obs.enemyAimingAtMe and obs.seeEnemy then
		threat = threat + 2
	end
	if obs.enemyDistSqr < 90000 then
		threat = threat + 1
	end
	if obs.healthRatio < 0.35 or obs.isTakingHeavyDPS then
		threat = threat + 2
	end
	if obs.ammoLack then
		threat = threat + 1
	end
	if obs.inCrossfire or obs.isNearLethalZone or obs.isPincered then
		threat = threat + 3
	end
	if obs.enemyHasHighGround and obs.seeEnemy and obs.isUnderFire then
		threat = threat + 1
	end
	if orient.zombieTooClose then
		threat = math.max(threat, 3)
	end

	orient.flyerDamagedUs = obs.flyerDamagedUs or false
	orient.hasShelterPos = (obs.shelterCoverPos ~= nil)
	if orient.flyerDamagedUs then
		threat = math.max(threat, 3)
		if not orient.hasShelterPos and not obs.bestCoverShootPos then
			threat = 4
		end
	end

	orient.isRPGThreat = obs.enemyHasRPG or false
	if orient.isRPGThreat then
		threat = math.max(threat, 3)
		if obs.enemyAimingAtMe or (obs.seeEnemy and not obs.bestCoverShootPos) then
			threat = 4
		end
	end
	orient.threatLevel = math.Clamp(threat, 1, 4)

	orient.caughtInCrossfire = obs.inCrossfire
		or obs.isNearLethalZone
		or obs.isPincered
		or (obs.isUnderFire and not obs.bestCoverShootPos and (obs.isTakingHeavyDPS or obs.threatsAimingAtMe >= 1))

	local groupMorale = 100
	local powerRatio = obs.friendlyFirepower / math.max(0.1, obs.enemyFirepower)

	if powerRatio < 0.5 then
		groupMorale = groupMorale - (isCivilian and 55 or (isCitizen and 42 or (isMetro and 30 or 0)))
	elseif powerRatio < 0.85 then
		groupMorale = groupMorale - (isCivilian and 35 or (isCitizen and 22 or (isMetro and 15 or 0)))
	elseif powerRatio > 1.5 then
		groupMorale = groupMorale + 20
	end

	local casualtyPenalty = isCivilian and 50 or (isCitizen and 38 or (isMetro and 28 or 0))
	groupMorale = groupMorale - (obs.recentCasualties * casualtyPenalty)
	orient.groupMorale = isCombine and 100 or math.Clamp(groupMorale, 0, 100)

	if isCombine then
		orient.groupBroken = false
	elseif isCivilian then
		orient.groupBroken = (groupMorale <= 70)
			or (obs.recentCasualties >= 1)
			or (obs.isUnderFire and not obs.bestCoverShootPos)
	elseif isCitizen then
		orient.groupBroken = (groupMorale <= 50) and (obs.squadCount > 0 or obs.recentCasualties >= 2)
	elseif isMetro then
		orient.groupBroken = (groupMorale <= 38) and (obs.squadCount > 0 or obs.recentCasualties >= 2)
	else
		orient.groupBroken = (groupMorale <= 35) and (obs.squadCount > 0 or obs.recentCasualties >= 2)
	end

	orient.isIsolated = (obs.squadCount == 0)
	orient.isOutgunned = (obs.enemyFirepower > obs.friendlyFirepower * 1.3)

	local enemyCritical = obs.enemyCritical or (obs.enemyHealthRatio and obs.enemyHealthRatio <= 0.25)
	local enemyPowerless = (powerRatio >= 2.2 and (obs.enemyHealthRatio or 1.0) <= 0.5)
		or (obs.enemyReloading and powerRatio >= 1.4)
	local pushSurvivable = (obs.healthRatio >= 0.45)
		and not obs.isTakingHeavyDPS
		and not orient.caughtInCrossfire
		and not orient.isRPGThreat
		and not (obs.threatsAimingAtMe >= 2)
		and not orient.isZombieEnemy

	orient.enemyOverpowered = (enemyCritical or enemyPowerless) and pushSurvivable

	local preserveThreshold = isCivilian and 0.65 or (isCitizen and 0.48 or (isMetro and 0.40 or 0.35))
	orient.shouldPreserveSelf = (
		(obs.healthRatio < preserveThreshold)
		or obs.isTakingHeavyDPS
		or (orient.isIsolated and orient.isOutgunned)
		or orient.zombieTooClose
	) and not orient.enemyOverpowered

	orient.hasRecovered = (obs.healthRatio >= 0.75) and ((NAPC.CurTime_Tick - (npc.LastDamageTime_NAPC or 0)) > 3.5)

	orient.enemyVulnerable = (obs.enemyReloading or obs.enemyTurnedAway)
	orient.hasEnfiladeAdvantage = (obs.enfiladeAdvantagePos ~= nil)
	orient.hasMedicAssistance = (obs.medicRetreatPos ~= nil)
	orient.canSecureArea = (obs.keySecurePos ~= nil)
		and not orient.shouldPreserveSelf
		and not orient.caughtInCrossfire
		and not isCivilian

	orient.enemyHasHighGround = obs.enemyHasHighGround or false
	orient.hasHighGroundAdvantage = obs.hasHighGroundAdvantage or false
	orient.hasCounterHighGround = (obs.counterHighGroundPos ~= nil)
	orient.canLureEnemy = (obs.lureRetreatPos ~= nil)

	orient.isElevationStalemate = obs.isElevationStalemate or false
	orient.isLongRangeStagnant = obs.isLongRangeStagnant or false

	orient.enemyIsRusher = prof and prof.isRusher or false
	orient.enemyIsSniper = prof and prof.isSniper or false
	orient.failedFlanks = ooda.FailedFlankAttempts or 0
	orient.tacticalScores = ooda.TacticalScores or {}

	orient.squadRole = "AUTONOMOUS"
	orient.hasCoveringFire = false
	orient.flankVector = nil

	if obs.theaterSquadData and NAPC.ConvarsBool["NAPC_OODA_SquadTactics"] then
		orient.squadRole = obs.theaterSquadData.role or "AUTONOMOUS"
		orient.hasCoveringFire = obs.theaterSquadData.hasCoveringFire or false
		orient.flankVector = obs.theaterSquadData.flankVector
	end

	if
		isCombine
		and orient.squadRole == "AUTONOMOUS"
		and not orient.isIsolated
		and not orient.isOutgunned
		and not orient.isZombieEnemy
	then
		orient.squadRole = "SQUAD_ROLE_ASSAULT"
	end

	local flankScore = orient.tacticalScores["FLANK_MANEUVER"] or 0
	local flankViable = (orient.failedFlanks < 3) and (flankScore > -2.5)

	orient.canAdvance = (
		orient.hasCoveringFire
		or orient.enemyVulnerable
		or orient.enemyOverpowered
		or orient.isLongRangeStagnant
		or orient.isElevationStalemate
		or powerRatio >= (isCitizen and 0.95 or 0.8)
	)
		and not orient.shouldPreserveSelf
		and not orient.groupBroken
		and not orient.caughtInCrossfire
		and not orient.enemyIsRusher
		and not orient.isZombieEnemy
		and not (orient.isIsolated and not orient.enemyOverpowered and not orient.isLongRangeStagnant)
		and not (orient.isOutgunned and not orient.enemyOverpowered and not orient.isLongRangeStagnant)
		and not (orient.enemyHasHighGround and obs.isUnderFire and not orient.enemyOverpowered)
		and not orient.flyerDamagedUs
		and not isCivilian

	orient.canFlank = flankViable
		and (
			obs.enemyDistSqr > 40000
			and obs.enemyDistSqr < 1960000
			and not orient.shouldPreserveSelf
			and not orient.caughtInCrossfire
			and not isCivilian
		)

	return orient
end

function NAPC.OODA_PredictEnemyCounter(obs, orient, candidateMove)
	local counter = {
		expectedAction = "NONE",
		threatMulti = 1.0,
		exploitWindow = false,
		punishSeverity = 0,
	}

	if orient.isZombieEnemy or obs.isZombieOrHeadcrab then
		if candidateMove == "SQUAD_BOUNDING_ADVANCE" or candidateMove == "SQUAD_ADVANCE_CLOSER" then
			counter.expectedAction = "ZOMBIE_MELEE_INTERCEPT"
			counter.punishSeverity = 65
			counter.threatMulti = 2.5
			return counter
		elseif candidateMove == "KITE_RETREAT" or candidateMove == "BAIT_RETREAT" then
			counter.expectedAction = "ZOMBIE_KITED_OUTRANGED"
			counter.threatMulti = 0.35
			counter.exploitWindow = true
			return counter
		elseif candidateMove == "HOLD_AND_ATTACK" and (obs.enemyDist < 420) then
			counter.expectedAction = "ZOMBIE_CLOSING_TO_MELEE"
			counter.punishSeverity = 40
			counter.threatMulti = 1.8
			return counter
		end
	end

	if orient.enemyOverpowered or obs.enemyOverpowered or (obs.enemyCritical and (obs.healthRatio or 1.0) >= 0.45) then
		counter.expectedAction = "ENEMY_COLLAPSING_BREAK"
		counter.threatMulti = 0.15
		counter.exploitWindow = true
		counter.punishSeverity = 0
		return counter
	end

	if obs.enemyReloading then
		counter.expectedAction = "ENEMY_RELOAD_COVER"
		counter.threatMulti = 0.15
		counter.exploitWindow = true
		return counter
	end

	if obs.enemyTurnedAway then
		counter.expectedAction = "ENEMY_UNAWARE_BLIND_SPOT"
		counter.threatMulti = 0.25
		counter.exploitWindow = true
		return counter
	end

	if orient.isElevationStalemate or obs.isElevationStalemate then
		if candidateMove == "HIGH_GROUND_REINFORCE" or candidateMove == "HOLD_AND_ATTACK" then
			counter.expectedAction = "STALEMATE_MUTUAL_ATTRITION"
			counter.punishSeverity = 35
			counter.threatMulti = 1.6
			return counter
		elseif
			candidateMove == "FLANK_MANEUVER"
			or candidateMove == "SQUAD_COORDINATED_FLANK"
			or candidateMove == "SQUAD_BOUNDING_ADVANCE"
		then
			counter.expectedAction = "STALEMATE_BREAK_EXPLOIT"
			counter.threatMulti = 0.5
			counter.exploitWindow = true
			return counter
		end
	end

	if orient.isLongRangeStagnant or obs.isLongRangeStagnant then
		if candidateMove == "HOLD_AND_ATTACK" or candidateMove == "TAKE_COVER_SHOOTING_POS" then
			counter.expectedAction = "LONG_RANGE_STAGNATION_WASTE"
			counter.punishSeverity = 40
			counter.threatMulti = 1.5
			return counter
		elseif
			candidateMove == "SQUAD_BOUNDING_ADVANCE"
			or candidateMove == "SQUAD_ADVANCE_CLOSER"
			or candidateMove == "FLANK_MANEUVER"
		then
			counter.expectedAction = "GAP_CLOSING_PRESSURE"
			counter.threatMulti = 0.6
			counter.exploitWindow = true
			return counter
		end
	end

	if orient.flyerDamagedUs then
		if candidateMove == "SHELTERED_WARFARE" then
			counter.expectedAction = "FLYER_AERIAL_STRAFE_OBSTRUCTED"
			counter.threatMulti = 0.25
			counter.exploitWindow = true
			return counter
		elseif candidateMove == "HOLD_AND_ATTACK" or candidateMove == "SQUAD_BOUNDING_ADVANCE" then
			counter.expectedAction = "FLYER_BOMBARDMENT_PUNISH"
			counter.punishSeverity = 65
			counter.threatMulti = 3.0
			return counter
		end
	end

	if orient.enemyHasHighGround then
		if obs.isUnderFire or obs.isTakingHeavyDPS then
			if candidateMove == "HOLD_AND_ATTACK" then
				counter.expectedAction = "ENEMY_HIGH_GROUND_BURST"
				counter.punishSeverity = 30
				counter.threatMulti = 1.8
				return counter
			elseif candidateMove == "TAKE_COVER_SHOOTING_POS" or candidateMove == "COUNTER_HIGH_GROUND" then
				counter.expectedAction = "SEEKING_PROTECTED_HARASS_SPOT"
				counter.threatMulti = 0.6
				counter.exploitWindow = true
				return counter
			end
		else
			if candidateMove == "HOLD_AND_ATTACK" or candidateMove == "SUPPRESSIVE_FIRE" then
				counter.expectedAction = "HARASS_HIGH_GROUND_ENEMY"
				counter.threatMulti = 0.75
				counter.exploitWindow = true
				return counter
			elseif candidateMove == "COUNTER_HIGH_GROUND" or candidateMove == "SQUAD_BOUNDING_ADVANCE" then
				counter.expectedAction = "CLOSING_ELEVATION_GAP"
				counter.threatMulti = 0.8
				counter.exploitWindow = true
				return counter
			end
		end
	end

	if orient.hasHighGroundAdvantage then
		if
			candidateMove == "HOLD_AND_ATTACK"
			or candidateMove == "TAKE_COVER_SHOOTING_POS"
			or candidateMove == "SUPPRESSIVE_FIRE"
		then
			counter.expectedAction = "ENEMY_PINNED_UNDER_HIGH_GROUND"
			counter.threatMulti = 0.45
			counter.exploitWindow = true
			return counter
		elseif candidateMove == "SQUAD_BOUNDING_ADVANCE" or candidateMove == "SQUAD_ADVANCE_CLOSER" then
			counter.expectedAction = "SURRENDER_HIGH_GROUND_ADVANTAGE"
			counter.punishSeverity = 20
			counter.threatMulti = 1.2
			return counter
		end
	end

	if orient.isRPGThreat then
		if candidateMove == "HOLD_AND_ATTACK" or candidateMove == "SUPPRESSIVE_FIRE" then
			counter.expectedAction = "ENEMY_PUNISH_EXPLOSIVE"
			counter.punishSeverity = 85
			counter.threatMulti = 3.5
		elseif candidateMove == "SQUAD_BOUNDING_ADVANCE" and obs.enemyDist > 320 then
			counter.expectedAction = "ENEMY_INTERCEPT_ROCKET"
			counter.punishSeverity = 50
			counter.threatMulti = 2.5
		else
			counter.expectedAction = "ENEMY_TRACK_RPG"
			counter.threatMulti = 1.2
		end
		return counter
	end

	if orient.enemyIsRusher then
		if candidateMove == "TAKE_COVER_SHOOTING_POS" and obs.enemyDist < 350 then
			counter.expectedAction = "ENEMY_CLOSE_AND_EXECUTE"
			counter.punishSeverity = 40
			counter.threatMulti = 2.0
		elseif candidateMove == "HOLD_AND_ATTACK" or candidateMove == "SUPPRESSIVE_FIRE" then
			counter.expectedAction = "ENEMY_RUSH_EXPOSED"
			counter.threatMulti = 0.8
		else
			counter.expectedAction = "ENEMY_CONTINUE_CHARGE"
			counter.threatMulti = 1.4
		end
		return counter
	end

	if orient.hasCoveringFire then
		counter.expectedAction = "ENEMY_PINNED"
		counter.threatMulti = 0.3
		counter.exploitWindow = true
		return counter
	end

	if obs.enemyAimingAtMe and obs.seeEnemy then
		if obs.enemyDist < 450 then
			if candidateMove == "HOLD_AND_ATTACK" or candidateMove == "SUPPRESSIVE_FIRE" then
				counter.expectedAction = "POINT_BLANK_FIREFIGHT"
				counter.threatMulti = 1.0
				counter.punishSeverity = 0
			else
				counter.expectedAction = "ENEMY_LOST_LEAD"
				counter.threatMulti = 0.8
			end
		else
			if candidateMove == "HOLD_AND_ATTACK" or candidateMove == "REPOSITION_LOF" then
				counter.expectedAction = "ENEMY_DIRECT_BURST"
				counter.threatMulti = 1.8
				counter.punishSeverity = 25
			else
				counter.expectedAction = "ENEMY_LOST_LEAD"
				counter.threatMulti = 0.7
			end
		end
	else
		counter.expectedAction = "ENEMY_SCAN_AREA"
		counter.threatMulti = 0.9
	end

	return counter
end

function NAPC.OODA_SimulateMove(npc, candidateMove, obs, orient)
	orient = orient or obs or {}
	obs = obs or orient or {}

	local enemyCounter = NAPC.OODA_PredictEnemyCounter(obs, orient, candidateMove)
	local aggressionBias = NAPC.ConvarsNum["NAPC_OODA_Aggression"] or 1.0

	local expectedDmgDealt = 0
	local expectedDmgTaken = 0
	local positionalControl = 0

	local ceca = IsValid(npc) and (npc.CECA or npc.OODA) or nil
	local tacticalScores = orient.tacticalScores or (ceca and ceca.TacticalScores) or {}
	local historicalScore = tacticalScores[candidateMove] or 0
	local isIsolated = orient.isIsolated or (obs.squadCount == 0)
	local isOutgunned = orient.isOutgunned or false
	local isOverpowered = orient.enemyOverpowered or obs.enemyOverpowered
	local isStalemate = orient.isElevationStalemate or obs.isElevationStalemate
	local isStagnant = orient.isLongRangeStagnant or obs.isLongRangeStagnant
	local isZombie = orient.isZombieEnemy or obs.isZombieOrHeadcrab

	if candidateMove == "KITE_RETREAT" then
		if isZombie or obs.zombieTooClose then
			positionalControl = positionalControl + 95
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 32 * aggressionBias
			expectedDmgTaken = 1
		elseif obs.enemyDist < 350 then
			positionalControl = positionalControl + 60
			expectedDmgTaken = 4
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 20
		else
			positionalControl = positionalControl - 35
		end
	elseif candidateMove == "COUNTER_HIGH_GROUND" then
		if obs.counterHighGroundPos and not isStalemate and (obs.enemyDist >= 400) then
			positionalControl = positionalControl + 90
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 35 * aggressionBias
			expectedDmgTaken = (obs.enemyFirepower or 1) * 4
		else
			positionalControl = positionalControl - 40
		end
	elseif candidateMove == "HIGH_GROUND_REINFORCE" then
		if isStalemate or (obs.enemyDist < 450) then
			positionalControl = positionalControl - 65
			expectedDmgTaken = (obs.enemyFirepower or 1) * 16
		elseif obs.highGroundPos then
			positionalControl = positionalControl + 80
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 32 * aggressionBias
			expectedDmgTaken = (obs.enemyFirepower or 1) * 5
		else
			positionalControl = positionalControl - 35
		end
	elseif candidateMove == "MEDIC_RETREAT" then
		if obs.medicRetreatPos then
			positionalControl = positionalControl + 85
			expectedDmgTaken = 2
			expectedDmgDealt = 0
		else
			positionalControl = positionalControl - 40
		end
	elseif candidateMove == "EXPLOIT_ENFILADE" then
		if obs.enfiladeAdvantagePos and (obs.enemyDist >= 350) then
			positionalControl = positionalControl + 85
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 42 * aggressionBias
			expectedDmgTaken = (obs.enemyFirepower or 1) * 4 * enemyCounter.threatMulti
		else
			positionalControl = positionalControl - 35
		end
	elseif candidateMove == "SHELTERED_WARFARE" then
		if obs.shelterCoverPos then
			positionalControl = positionalControl + 80
			expectedDmgTaken = (obs.enemyFirepower or 1) * 3
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 22 * aggressionBias
		else
			positionalControl = positionalControl - 35
		end
	elseif candidateMove == "HOLD_AND_ATTACK" then
		if isZombie and obs.enemyDist < 420 then
			positionalControl = positionalControl - 65
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 15
			expectedDmgTaken = 30
		elseif isStagnant then
			positionalControl = positionalControl - 75
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 6
			expectedDmgTaken = (obs.enemyFirepower or 1) * 18
		elseif isStalemate then
			positionalControl = positionalControl - 55
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 10
			expectedDmgTaken = (obs.enemyFirepower or 1) * 16
		elseif obs.seeEnemy and obs.enemyDist < 450 then
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 45 * aggressionBias
			expectedDmgTaken = (obs.enemyFirepower or 1) * 8
			positionalControl = positionalControl + 50
		elseif obs.canAttack and obs.seeEnemy then
			expectedDmgDealt = (obs.friendlyFirepower or 1) * (orient.enemyVulnerable and 32 or 22) * aggressionBias
			expectedDmgTaken = (obs.enemyFirepower or 1)
				* (orient.enemyHasHighGround and 16 or 14)
				* enemyCounter.threatMulti
			if obs.bestCoverShootPos then
				positionalControl = positionalControl - 10
			end
		else
			positionalControl = positionalControl - 35
		end
	elseif candidateMove == "TAKE_COVER_SHOOTING_POS" then
		if isStagnant then
			positionalControl = positionalControl - 45
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 8
		elseif obs.bestCoverShootPos then
			positionalControl = positionalControl + 60
			expectedDmgTaken = ((obs.enemyFirepower or 1) * 3) * enemyCounter.threatMulti
			if obs.canAttack then
				expectedDmgDealt = (obs.friendlyFirepower or 1) * 22 * (orient.enemyHasHighGround and 1.2 or 1.0)
			end
		else
			positionalControl = positionalControl - 25
		end
	elseif candidateMove == "BAIT_RETREAT" then
		if isZombie or (obs.lureRetreatPos and orient.shouldPreserveSelf) then
			positionalControl = positionalControl + 65
			expectedDmgTaken = 2
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 20
		else
			positionalControl = positionalControl - 30
		end
	elseif candidateMove == "SQUAD_BOUNDING_ADVANCE" or candidateMove == "SQUAD_ADVANCE_CLOSER" then
		if isZombie and obs.enemyDist < 750 then
			positionalControl = positionalControl - 90
			expectedDmgTaken = 45
		elseif isOverpowered then
			positionalControl = positionalControl + 85
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 45 * aggressionBias
			expectedDmgTaken = (obs.enemyFirepower or 1) * 3
		elseif (isStagnant or isStalemate) and not orient.shouldPreserveSelf and not orient.caughtInCrossfire then
			positionalControl = positionalControl + 70
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 36 * aggressionBias
			expectedDmgTaken = (obs.enemyFirepower or 1) * 8
		elseif
			(isIsolated and not isOverpowered)
			or (isOutgunned and not isOverpowered)
			or orient.shouldPreserveSelf
		then
			positionalControl = positionalControl - 70
			expectedDmgTaken = (obs.enemyFirepower or 1) * 45
		elseif enemyCounter.exploitWindow or orient.hasCoveringFire or orient.enemyVulnerable then
			positionalControl = positionalControl + 55
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 32 * aggressionBias
			expectedDmgTaken = (obs.enemyFirepower or 1) * 6
		elseif obs.enemyAimingAtMe and not orient.hasCoveringFire then
			expectedDmgTaken = (obs.enemyFirepower or 1) * 32 * enemyCounter.threatMulti
			positionalControl = positionalControl - 30
		else
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 20 * aggressionBias
			expectedDmgTaken = (obs.enemyFirepower or 1) * 15
			positionalControl = positionalControl + 15
		end
	elseif candidateMove == "FLANK_MANEUVER" or candidateMove == "SQUAD_COORDINATED_FLANK" then
		if obs.enemyDist < 400 and not orient.enemyVulnerable and not orient.hasCoveringFire then
			positionalControl = positionalControl - 45
			expectedDmgTaken = (obs.enemyFirepower or 1) * 25
		elseif (isStalemate or isStagnant) and orient.canFlank then
			positionalControl = positionalControl + 85
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 40 * aggressionBias
			expectedDmgTaken = (obs.enemyFirepower or 1) * 6
		elseif orient.canFlank and not isIsolated then
			positionalControl = positionalControl + 60
			if (obs.squadTargetingSame or 0) >= 1 or orient.hasCoveringFire or orient.enemyVulnerable then
				expectedDmgDealt = (obs.friendlyFirepower or 1) * 36 * aggressionBias
				expectedDmgTaken = (obs.enemyFirepower or 1) * 5
			else
				expectedDmgDealt = (obs.friendlyFirepower or 1) * 22
				expectedDmgTaken = (obs.enemyFirepower or 1) * 14
			end
		else
			positionalControl = positionalControl - 40
		end
	elseif candidateMove == "SUPPRESSIVE_FIRE" then
		if obs.canAttack and obs.seeEnemy then
			expectedDmgDealt = (obs.friendlyFirepower or 1) * 20
			expectedDmgTaken = (obs.enemyFirepower or 1) * 10
			positionalControl = positionalControl
				+ ((obs.squadCount or 0) * 15)
				+ (orient.enemyHasHighGround and 25 or 0)
		else
			positionalControl = positionalControl - 30
		end
	elseif candidateMove == "BREAK_CROSSFIRE" then
		if orient.caughtInCrossfire then
			positionalControl = positionalControl + 80
			expectedDmgTaken = 5
		else
			positionalControl = positionalControl - 20
		end
	elseif candidateMove == "INDIVIDUAL_RETREAT" or candidateMove == "GROUP_ROUT" then
		if orient.shouldPreserveSelf or orient.groupBroken or (isIsolated and isOutgunned) then
			positionalControl = positionalControl + 70
			expectedDmgTaken = 4
		else
			positionalControl = positionalControl - 45
		end
	elseif candidateMove == "REPOSITION_LOF" then
		if not obs.seeEnemy or isStagnant then
			positionalControl = positionalControl + 35
		else
			positionalControl = positionalControl - 10
		end
	end

	if orient.hasHighGroundAdvantage and not isStalemate then
		positionalControl = positionalControl + 40
		expectedDmgDealt = expectedDmgDealt * 1.35
		expectedDmgTaken = expectedDmgTaken * 0.7
	end

	local inertiaBonus = (
		ceca
		and ceca.LastDecision == candidateMove
		and candidateMove ~= "NONE"
		and not isStagnant
		and not isStalemate
	)
			and 18
		or 0

	local totalExpectedUtility = (expectedDmgDealt * 1.5)
		- (expectedDmgTaken * 2.0)
		+ positionalControl
		+ (historicalScore * 8)
		+ inertiaBonus
		- enemyCounter.punishSeverity

	return totalExpectedUtility, enemyCounter
end

function NAPC.OODA_ChessEngine_Evaluate(npc, obs, orient, candidateMoves)
	local ceca = IsValid(npc) and (npc.CECA or npc.OODA) or nil
	local currentDecision = ceca and ceca.LastDecision or "NONE"
	local bestMove = candidateMoves[1] or "HOLD_AND_ATTACK"
	local bestUtility = -99999
	local bestCounter = nil
	local currentUtility = -99999
	local currentCounter = nil

	for _, move in ipairs(candidateMoves) do
		local utility, counter = NAPC.OODA_SimulateMove(npc, move, obs, orient)
		if move == currentDecision then
			currentUtility = utility
			currentCounter = counter
		end
		if utility > bestUtility then
			bestUtility = utility
			bestMove = move
			bestCounter = counter
		end
	end

	if currentDecision ~= "NONE" and currentUtility > -90000 and bestMove ~= currentDecision then
		local switchThreshold = 12.0
		if (bestUtility - currentUtility) < switchThreshold then
			bestMove = currentDecision
			bestUtility = currentUtility
			bestCounter = currentCounter
		end
	end

	if ceca then
		ceca.PredictedEnemyReaction = bestCounter and bestCounter.expectedAction or "UNKNOWN"
		ceca.ProjectedMoveUtility = bestUtility
	end

	return bestMove
end

function NAPC.OODA_Decide(npc, obs, orient)
	local ooda = npc.OODA
	local curSched = npc:GetCurrentSchedule()
	local isMoving = NAPC.Tables.BannedSchedule_List3[curSched] or (npc.ForcedGoPos_NAPC ~= nil)

	if
		isMoving
		and (npc.ForcedGoPos_NAPC ~= nil or (ooda.MovementLockTime and NAPC.CurTime_Tick < ooda.MovementLockTime))
		and not orient.isNearLethalZone
	then
		return ooda.LastDecision
	end

	if
		NAPC.CurTime_Tick < ooda.DecisionTime
		and not orient.isNearLethalZone
		and not orient.isRPGThreat
		and not orient.isElevationStalemate
		and not orient.isLongRangeStagnant
		and not orient.zombieTooClose
	then
		return ooda.LastDecision
	end

	local candidateMoves = {}
	local isIsolated = orient.isIsolated or (obs.squadCount == 0)
	local isOutgunned = orient.isOutgunned or false

	if orient.isZombieEnemy or obs.isZombieOrHeadcrab then
		if obs.enemyDist < 550 or orient.zombieTooClose then
			table.insert(candidateMoves, "KITE_RETREAT")
			table.insert(candidateMoves, "BAIT_RETREAT")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
			if obs.enemyDist >= 350 and obs.seeEnemy then
				table.insert(candidateMoves, "HOLD_AND_ATTACK")
			end
		else
			table.insert(candidateMoves, "HOLD_AND_ATTACK")
			table.insert(candidateMoves, "SUPPRESSIVE_FIRE")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
			table.insert(candidateMoves, "KITE_RETREAT")
		end
	elseif
		not orient.isZombieEnemy
		and obs.seeEnemy
		and obs.enemyDist < 450
		and not obs.ammoLack
		and not orient.shouldPreserveSelf
	then
		table.insert(candidateMoves, "HOLD_AND_ATTACK")
		table.insert(candidateMoves, "SUPPRESSIVE_FIRE")
	elseif orient.enemyOverpowered then
		if obs.advanceCoverPos then
			table.insert(candidateMoves, "SQUAD_BOUNDING_ADVANCE")
		end
		table.insert(candidateMoves, "SQUAD_ADVANCE_CLOSER")
		table.insert(candidateMoves, "HOLD_AND_ATTACK")
	elseif orient.isElevationStalemate or orient.isLongRangeStagnant then
		if orient.canFlank then
			table.insert(candidateMoves, "SQUAD_COORDINATED_FLANK")
			table.insert(candidateMoves, "FLANK_MANEUVER")
		end
		if obs.enfiladeAdvantagePos then
			table.insert(candidateMoves, "EXPLOIT_ENFILADE")
		end
		if obs.advanceCoverPos or not isOutgunned then
			table.insert(candidateMoves, "SQUAD_BOUNDING_ADVANCE")
			table.insert(candidateMoves, "SQUAD_ADVANCE_CLOSER")
		end
		table.insert(candidateMoves, "REPOSITION_LOF")
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
	elseif orient.shouldPreserveSelf or obs.ammoLack or (isIsolated and isOutgunned) then
		if obs.seeEnemy and obs.enemyDist < 300 and not obs.ammoLack then
			table.insert(candidateMoves, "HOLD_AND_ATTACK")
		end
		if orient.hasMedicAssistance then
			table.insert(candidateMoves, "MEDIC_RETREAT")
		end
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		table.insert(candidateMoves, "INDIVIDUAL_RETREAT")
		if orient.canLureEnemy then
			table.insert(candidateMoves, "BAIT_RETREAT")
		end
	elseif orient.flyerDamagedUs then
		if orient.hasShelterPos then
			table.insert(candidateMoves, "SHELTERED_WARFARE")
		end
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		table.insert(candidateMoves, "BREAK_CROSSFIRE")
		table.insert(candidateMoves, "INDIVIDUAL_RETREAT")
	elseif orient.caughtInCrossfire then
		table.insert(candidateMoves, "BREAK_CROSSFIRE")
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		table.insert(candidateMoves, "INDIVIDUAL_RETREAT")
	elseif orient.groupBroken then
		table.insert(candidateMoves, "GROUP_ROUT")
		table.insert(candidateMoves, "INDIVIDUAL_RETREAT")
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
	elseif orient.isRPGThreat then
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		table.insert(candidateMoves, "BREAK_CROSSFIRE")
		if orient.canFlank and not isIsolated then
			table.insert(candidateMoves, "SQUAD_COORDINATED_FLANK")
			table.insert(candidateMoves, "FLANK_MANEUVER")
		end
	elseif orient.hasEnfiladeAdvantage and not orient.enemyIsRusher and not isIsolated then
		table.insert(candidateMoves, "EXPLOIT_ENFILADE")
		table.insert(candidateMoves, "HOLD_AND_ATTACK")
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
	elseif orient.enemyVulnerable then
		table.insert(candidateMoves, "HOLD_AND_ATTACK")
		if not isIsolated and not isOutgunned and obs.advanceCoverPos then
			table.insert(candidateMoves, "SQUAD_BOUNDING_ADVANCE")
		end
		if orient.canFlank and not isIsolated then
			table.insert(candidateMoves, "SQUAD_COORDINATED_FLANK")
		end
	elseif orient.enemyHasHighGround then
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		if orient.hasCounterHighGround then
			table.insert(candidateMoves, "COUNTER_HIGH_GROUND")
		end
		if orient.canFlank and not isIsolated then
			table.insert(candidateMoves, "FLANK_MANEUVER")
		end
		table.insert(candidateMoves, "BREAK_CROSSFIRE")
	else
		if orient.squadRole == "SQUAD_ROLE_SUPPRESS" then
			table.insert(candidateMoves, "SUPPRESSIVE_FIRE")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
			if obs.highGroundPos and obs.enemyDist > 500 then
				table.insert(candidateMoves, "HIGH_GROUND_REINFORCE")
			end
		elseif
			orient.squadRole == "SQUAD_ROLE_ASSAULT"
			and not isIsolated
			and not isOutgunned
			and obs.advanceCoverPos
		then
			table.insert(candidateMoves, "SQUAD_BOUNDING_ADVANCE")
			table.insert(candidateMoves, "SQUAD_ADVANCE_CLOSER")
			table.insert(candidateMoves, "HOLD_AND_ATTACK")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		elseif orient.squadRole == "SQUAD_ROLE_SECURE" then
			table.insert(candidateMoves, "SECURE_KEY_AREA")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
			table.insert(candidateMoves, "HOLD_AND_ATTACK")
		elseif orient.squadRole == "SQUAD_ROLE_FLANK" and not isIsolated then
			table.insert(candidateMoves, "SQUAD_COORDINATED_FLANK")
			table.insert(candidateMoves, "FLANK_MANEUVER")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		else
			table.insert(candidateMoves, "HOLD_AND_ATTACK")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
			if orient.canSecureArea then
				table.insert(candidateMoves, "SECURE_KEY_AREA")
			end
			if
				obs.highGroundPos
				and not orient.shouldPreserveSelf
				and not orient.caughtInCrossfire
				and obs.enemyDist > 500
			then
				table.insert(candidateMoves, "HIGH_GROUND_REINFORCE")
			end
			if orient.canFlank and not isIsolated then
				table.insert(candidateMoves, "FLANK_MANEUVER")
			end
			if orient.canAdvance and not isIsolated and not isOutgunned and obs.advanceCoverPos then
				table.insert(candidateMoves, "SQUAD_BOUNDING_ADVANCE")
			end
			if not obs.seeEnemy then
				table.insert(candidateMoves, "REPOSITION_LOF")
			end
		end
	end

	if #candidateMoves == 0 then
		table.insert(candidateMoves, "HOLD_AND_ATTACK")
	end

	local decision = NAPC.OODA_ChessEngine_Evaluate(npc, obs, orient, candidateMoves)

	if decision ~= ooda.LastDecision then
		NAPC.OODA_EvaluateAttribution(npc, decision, "CHESS_TACTICAL_SWITCH")
		ooda.LastDecision = decision
		ooda.DecisionTime = NAPC.CurTime_Tick + math.Rand(1.6, 2.6)
		ooda.ActionApplied = false
	end

	return decision
end

function NAPC.OODA_DispatchMove(npc, ooda, targetPos, fallbackSched, speedMul, lockDuration)
	speedMul = speedMul or 1.35
	NAPC.Tick_MovementSpeed(npc, speedMul)

	if targetPos and isvector(targetPos) and NAPC.IsDestinationValid(npc, targetPos, false) then
		local trGround = util.TraceLine({
			start = targetPos + Vector(0, 0, 32),
			endpos = targetPos - Vector(0, 0, 80),
			mask = MASK_SOLID_BRUSHONLY,
			filter = npc,
		})
		local groundPos = trGround.Hit and trGround.HitPos or targetPos

		local dist = (groundPos - npc:GetPos()):Length()
		local calculatedTimeout = math.max(6.0, (dist / 120) + 3.0)
		lockDuration = math.max(lockDuration or 1.5, math.min(calculatedTimeout, (dist / 140) + 1.5))

		npc.ForcedGoPos_NAPC = groundPos
		npc.ForcedGoTimeout_NAPC = NAPC.CurTime_Tick + calculatedTimeout
		npc.ForcedGoStartTime_NAPC = NAPC.CurTime_Tick
		npc.ForcedGoLastPos_NAPC = npc:GetPos()
		npc.ForcedGoLastMoveCheck_NAPC = NAPC.CurTime_Tick
		npc.ForcedGoStuckTime_NAPC = NAPC.CurTime_Tick
		npc.ForcedGoMinDistSqr_NAPC = (groundPos - npc:GetPos()):LengthSqr()
		ooda.MovementLockTime = NAPC.CurTime_Tick + lockDuration
		ooda.ActionApplied = true
		npc:SetSaveValue("m_vecLastPosition", groundPos)
		npc:SetSchedule(SCHED_FORCED_GO_RUN)
	elseif fallbackSched then
		npc.ForcedGoPos_NAPC = nil
		ooda.ActionApplied = true
		npc:SetSchedule(fallbackSched)
	else
		npc.ForcedGoPos_NAPC = nil
		ooda.ActionApplied = false
		ooda.DecisionTime = 0
	end
end

function NAPC.OODA_Act(npc, decision, obs, orient, NPCClass, weapon)
	local curSched = npc:GetCurrentSchedule()
	local ooda = npc.OODA
	local enemy = npc:GetEnemy()
	local isMoving = NAPC.Tables.BannedSchedule_List3[curSched]
	local isCitizen = (NPCClass == "npc_citizen")

	if
		ooda.ActionApplied
		and not isMoving
		and curSched ~= SCHED_TAKE_COVER_FROM_ENEMY
		and curSched ~= SCHED_RUN_RANDOM
		and curSched ~= SCHED_RUN_FROM_ENEMY
	then
		ooda.ActionApplied = false
	end

	if
		orient.isRPGThreat
		and NPCClass == "npc_combine_s"
		and NAPC.ConvarsBool["NAPC_Combine_Cloaking"]
		and obs.seeEnemy
	then
		NAPC.UseCloaking(npc)
	end

	if decision == "SECURE_KEY_AREA" then
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local targetPos = obs.keySecurePos or obs.bestCoverShootPos
			local speed = isCitizen and math.Rand(1.25, 1.4) or 1.35
			NAPC.OODA_DispatchMove(npc, ooda, targetPos, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 2.4)
		elseif
			not isMoving
			and obs.canAttack
			and curSched ~= SCHED_RANGE_ATTACK1
			and not NAPC.Tables.ActiveCombatSchedules[curSched]
		then
			if npc:HasCondition(COND.CAN_MELEE_ATTACK1) then
				npc:SetSchedule(SCHED_MELEE_ATTACK1)
			else
				npc:SetSchedule(SCHED_RANGE_ATTACK1)
			end
		end
	elseif decision == "MEDIC_RETREAT" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end
		if IsValid(obs.nearestMedic) and (obs.nearestMedic:GetPos() - npc:GetPos()):LengthSqr() <= 25600 then
			if isMoving then
				npc:ClearSchedule()
			end
			NAPC.Tick_MovementSpeed(npc, 1.0)
		elseif not isMoving and not ooda.ActionApplied then
			local targetPos = obs.medicRetreatPos
			NAPC.OODA_DispatchMove(npc, ooda, targetPos, SCHED_TAKE_COVER_FROM_ENEMY, 1.45, 2.4)
		end
	elseif decision == "EXPLOIT_ENFILADE" then
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local targetPos = obs.enfiladeAdvantagePos
			local speed = isCitizen and math.Rand(1.35, 1.5) or 1.45
			NAPC.OODA_DispatchMove(npc, ooda, targetPos, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 2.2)
		elseif
			not isMoving
			and obs.canAttack
			and curSched ~= SCHED_RANGE_ATTACK1
			and not NAPC.Tables.ActiveCombatSchedules[curSched]
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "SHELTERED_WARFARE" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] and math.random(1, 2) == 1 then
			NAPC.UseCloaking(npc)
		end
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local targetPos = obs.shelterCoverPos or obs.bestCoverShootPos
			local speed = isCitizen and math.Rand(1.35, 1.5) or 1.45
			NAPC.OODA_DispatchMove(npc, ooda, targetPos, SCHED_TAKE_COVER_FROM_ENEMY, speed, 2.4)
		elseif
			not isMoving
			and obs.canAttack
			and curSched ~= SCHED_RANGE_ATTACK1
			and not NAPC.Tables.ActiveCombatSchedules[curSched]
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "COUNTER_HIGH_GROUND" then
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local targetPos = obs.counterHighGroundPos
			local speed = isCitizen and math.Rand(1.3, 1.45) or 1.4
			NAPC.OODA_DispatchMove(npc, ooda, targetPos, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 2.4)
		elseif
			not isMoving
			and obs.canAttack
			and curSched ~= SCHED_RANGE_ATTACK1
			and not NAPC.Tables.ActiveCombatSchedules[curSched]
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "BAIT_RETREAT" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local targetPos = obs.lureRetreatPos
				or (npc:GetPos() - ((enemy:GetPos() - npc:GetPos()):GetNormalized() * math.Rand(250, 450)))
			local speed = 1.35
			NAPC.OODA_DispatchMove(npc, ooda, targetPos, SCHED_TAKE_COVER_FROM_ENEMY, speed, 2.0)
		elseif not isMoving and obs.canAttack and curSched ~= SCHED_RANGE_ATTACK1 then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "BREAK_CROSSFIRE" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end

		if not isMoving and not ooda.ActionApplied then
			local threatPos = obs.incomingThreatCenter or (IsValid(enemy) and enemy:GetPos() or npc:GetPos())
			local toThreat = (threatPos - npc:GetPos()):GetNormalized()
			local breakLateral = toThreat:Angle():Right() * (ooda.FlankSide * math.Rand(400, 650))
			local escapePos = npc:GetPos() + breakLateral - (toThreat * math.Rand(200, 450))

			NAPC.trData.start = escapePos + Vector(0, 0, 96)
			NAPC.trData.endpos = escapePos - Vector(0, 0, 300)
			NAPC.trData.mask = MASK_SOLID_BRUSHONLY
			NAPC.trData.filter = nil
			util.TraceLine(NAPC.trData)
			escapePos = NAPC.trRes.Hit and NAPC.trRes.HitPos or escapePos

			local validPos = NAPC.IsDestinationValid(npc, escapePos) and escapePos or nil
			NAPC.OODA_DispatchMove(npc, ooda, validPos, SCHED_TAKE_COVER_FROM_ENEMY, 1.5, 2.2)
		end
	elseif decision == "GROUP_ROUT" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local toEnemy = (enemy:GetPos() - npc:GetPos()):GetNormalized()
			local fallbackPos = npc:GetPos()
				- (toEnemy * math.Rand(500, 900))
				+ (toEnemy:Angle():Right() * math.Rand(-200, 200))

			NAPC.trData.start = fallbackPos + Vector(0, 0, 96)
			NAPC.trData.endpos = fallbackPos - Vector(0, 0, 300)
			NAPC.trData.mask = MASK_SOLID_BRUSHONLY
			NAPC.trData.filter = nil
			util.TraceLine(NAPC.trData)
			fallbackPos = NAPC.trRes.Hit and NAPC.trRes.HitPos or fallbackPos
			NAPC.OODA_DispatchMove(npc, ooda, fallbackPos, SCHED_TAKE_COVER_FROM_ENEMY, 1.5, 2.5)
		end
	elseif decision == "INDIVIDUAL_RETREAT" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local targetPos = IsValid(obs.healthiestMate)
					and NAPC.FindCoverBehindReinforcer(npc, obs.healthiestMate, enemy:GetPos(), enemy, obs.allThreats)
				or (npc:GetPos() - ((enemy:GetPos() - npc:GetPos()):GetNormalized() * math.Rand(400, 700)))
			NAPC.OODA_DispatchMove(npc, ooda, targetPos, SCHED_TAKE_COVER_FROM_ENEMY, 1.5, 2.5)
		end
	elseif decision == "SUPPRESSIVE_FIRE" then
		NAPC.Tick_MovementSpeed(npc, 1.0)
		if NPCClass == "npc_combine_s" then
			npc:SetSaveValue("m_nShots", 14)
		end
		if obs.canAttack then
			if curSched ~= SCHED_RANGE_ATTACK1 and curSched ~= SCHED_COMBAT_FACE then
				npc:SetSchedule(SCHED_RANGE_ATTACK1)
			end
		elseif not NAPC.Tables.ActiveCombatSchedules[curSched] then
			npc:SetSchedule(SCHED_ESTABLISH_LINE_OF_FIRE)
		end
	elseif decision == "SQUAD_BOUNDING_ADVANCE" then
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local advanceTarget = obs.advanceCoverPos
			if not advanceTarget then
				local toEnemy = (enemy:GetPos() - npc:GetPos()):GetNormalized()
				local lateralSpread = isCitizen and math.Rand(-140, 140) or math.Rand(-70, 70)
				local advanceDist = isCitizen and math.Rand(280, 480) or math.Rand(320, 520)
				local advancePos = npc:GetPos() + (toEnemy * advanceDist) + (toEnemy:Angle():Right() * lateralSpread)

				NAPC.trData.start = advancePos + Vector(0, 0, 64)
				NAPC.trData.endpos = advancePos - Vector(0, 0, 256)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)
				advanceTarget = NAPC.trRes.Hit and NAPC.trRes.HitPos or advancePos
			end
			local speed = orient.isRPGThreat and 1.5 or (isCitizen and math.Rand(1.3, 1.45) or 1.45)
			NAPC.OODA_DispatchMove(npc, ooda, advanceTarget, nil, speed, 2.0)
		elseif
			not isMoving
			and obs.canAttack
			and curSched ~= SCHED_RANGE_ATTACK1
			and not NAPC.Tables.ActiveCombatSchedules[curSched]
		then
			if npc:HasCondition(COND.CAN_MELEE_ATTACK1) then
				npc:SetSchedule(SCHED_MELEE_ATTACK1)
			else
				npc:SetSchedule(SCHED_RANGE_ATTACK1)
			end
		end
	elseif decision == "SQUAD_COORDINATED_FLANK" or decision == "FLANK_MANEUVER" then
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local flankTargetPos = obs.flankTargetPos or NAPC.FindFlankPos(npc, enemy, obs.allThreats)
			local speed = orient.isRPGThreat and 1.55 or (isCitizen and math.Rand(1.35, 1.5) or 1.45)
			NAPC.OODA_DispatchMove(npc, ooda, flankTargetPos, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 3.8)
		elseif not isMoving and obs.canAttack and curSched ~= SCHED_RANGE_ATTACK1 then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "SQUAD_ADVANCE_CLOSER" then
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local targetPos = obs.advanceCoverPos or obs.bestCoverShootPos
			local speed = orient.isRPGThreat and 1.45 or 1.3
			NAPC.OODA_DispatchMove(npc, ooda, targetPos, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 1.8)
		end
	elseif decision == "TAKE_COVER_SHOOTING_POS" then
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local targetPos = obs.bestCoverShootPos
			local speed = orient.isRPGThreat and 1.45 or 1.25
			NAPC.OODA_DispatchMove(npc, ooda, targetPos, SCHED_TAKE_COVER_FROM_ENEMY, speed, 2.0)
		elseif
			not isMoving
			and obs.canAttack
			and curSched ~= SCHED_RANGE_ATTACK1
			and not NAPC.Tables.ActiveCombatSchedules[curSched]
		then
			if npc:HasCondition(COND.CAN_MELEE_ATTACK1) then
				npc:SetSchedule(SCHED_MELEE_ATTACK1)
			else
				npc:SetSchedule(SCHED_RANGE_ATTACK1)
			end
		end
	elseif decision == "HIGH_GROUND_REINFORCE" then
		if IsValid(enemy) and not isMoving and not ooda.ActionApplied then
			local targetPos = obs.highGroundPos
			NAPC.OODA_DispatchMove(npc, ooda, targetPos, nil, 1.25, 2.2)
		end
	elseif decision == "HOLD_AND_ATTACK" then
		NAPC.Tick_MovementSpeed(npc, 1.0)
		if obs.canAttack then
			if curSched ~= SCHED_RANGE_ATTACK1 and not NAPC.Tables.ActiveCombatSchedules[curSched] then
				if npc:HasCondition(COND.CAN_MELEE_ATTACK1) then
					npc:SetSchedule(SCHED_MELEE_ATTACK1)
				else
					npc:SetSchedule(SCHED_RANGE_ATTACK1)
				end
			end
		elseif
			not NAPC.Tables.ActiveCombatSchedules[curSched]
			and curSched ~= SCHED_ESTABLISH_LINE_OF_FIRE
			and curSched ~= SCHED_COMBAT_FACE
		then
			if obs.seeEnemy then
				if obs.enemyDist < 350 then
					npc:SetSchedule(SCHED_RANGE_ATTACK1)
				else
					npc:SetSchedule(SCHED_COMBAT_FACE)
				end
			else
				npc:SetSchedule(SCHED_ESTABLISH_LINE_OF_FIRE)
			end
		end
	elseif decision == "REPOSITION_LOF" then
		if
			curSched ~= SCHED_ESTABLISH_LINE_OF_FIRE
			and curSched ~= SCHED_CHASE_ENEMY
			and not NAPC.Tables.ActiveCombatSchedules[curSched]
		then
			npc:SetSchedule(SCHED_ESTABLISH_LINE_OF_FIRE)
		end
	end
end

function NAPC.OODA_Process(npc, NPCClass, weapon, enemy, curSched, NPCState)
	if not NAPC.ConvarsBool["NAPC_NPCs_OODA"] then
		return false
	end
	if not npc.OODA then
		return false
	end
	if NAPC.CurTime_Tick < npc.OODA.NextCycle then
		return true
	end

	npc.OODA.NextCycle = NAPC.CurTime_Tick + npc.OODA.ReactionDelay

	local obs = NAPC.OODA_Observe(npc, enemy, weapon)
	local orient = NAPC.OODA_Orient(npc, obs)
	local decision = NAPC.OODA_Decide(npc, obs, orient)
	NAPC.OODA_Act(npc, decision, obs, orient, NPCClass, weapon)

	return true
end

function NAPC.OEC_CustomNPCsHealth(npc, NPCClass)
	if NAPC.ConvarsBool["NAPC_NPCs_CUSTOM_HEALTH"] then
		timer.Simple(0.1, function()
			if IsValid(npc) then
				if NPCClass == "npc_combine_s" then
					npc:SetMaxHealth(npc:Health() + cvars.Number("NAPC_Combine_CUSTOM_HEALTH"))
					npc:SetHealth(npc:GetMaxHealth())
				elseif NPCClass == "npc_hunter" then
					npc:SetMaxHealth(npc:Health() + cvars.Number("NAPC_Hunter_CUSTOM_HEALTH"))
					npc:SetHealth(npc:GetMaxHealth())
				elseif NPCClass == "npc_metropolice" then
					npc:SetMaxHealth(npc:Health() + cvars.Number("NAPC_Metropolice_CUSTOM_HEALTH"))
					npc:SetHealth(npc:GetMaxHealth())
				elseif NPCClass == "npc_citizen" then
					npc:SetMaxHealth(npc:Health() + cvars.Number("NAPC_Citizen_CUSTOM_HEALTH"))
					npc:SetHealth(npc:GetMaxHealth())
				end
			end
		end)
	end
end

function NAPC.OEC_CustomNPCsAccuracy(npc, NPCClass)
	if not IsValid(npc) or not npc:IsNPC() then
		return
	end

	local cvarMap = {
		["npc_combine_s"] = "NAPC_Combine_WeaponProficiency",
		["npc_metropolice"] = "NAPC_Metropolice_WeaponProficiency",
		["npc_citizen"] = "NAPC_Citizen_WeaponProficiency",
	}
	local cvar = cvarMap[NPCClass]
	if not cvar then
		return
	end

	local function ApplyAndVerify()
		if not IsValid(npc) then
			return
		end

		if not NAPC.ConvarsBool["NAPC_NPCs_WeaponProficiency"] then
			npc.TargetProficiency_NAPC = nil
			npc.HasPerfectAccuracy_NAPC = false
			return
		end

		local rawVal = cvars.Number(cvar) or 0
		local weaponProficiency = math.Clamp(math.floor(rawVal), 0, 5)

		if weaponProficiency > 0 then
			local profEnum = math.Clamp(weaponProficiency - 1, 0, 4)

			if npc.SetCurrentWeaponProficiency then
				npc:SetCurrentWeaponProficiency(profEnum)

				if npc.GetCurrentWeaponProficiency and npc:GetCurrentWeaponProficiency() ~= profEnum then
					npc:SetCurrentWeaponProficiency(profEnum)
				end
			end

			npc.TargetProficiency_NAPC = profEnum
			npc.HasPerfectAccuracy_NAPC = (weaponProficiency == 5)
		else
			npc.TargetProficiency_NAPC = nil
			npc.HasPerfectAccuracy_NAPC = false
		end
	end

	ApplyAndVerify()
	timer.Simple(0.1, ApplyAndVerify)
	timer.Simple(0.5, ApplyAndVerify)
end

function NAPC.OEC_CustomLookDistance(npc, NPCClass)
	if NAPC.ConvarsBool["NAPC_NPCs_LookDistance"] then
		timer.Simple(0.1, function()
			if IsValid(npc) then
				if NPCClass == "npc_combine_s" then
					npc:SetMaxLookDistance(cvars.Number("NAPC_Combine_LookDistance"))
				elseif NPCClass == "npc_hunter" then
					npc:SetMaxLookDistance(cvars.Number("NAPC_Hunter_LookDistance"))
				elseif NPCClass == "npc_metropolice" then
					npc:SetMaxLookDistance(cvars.Number("NAPC_Metropolice_LookDistance"))
				elseif NPCClass == "npc_citizen" then
					npc:SetMaxLookDistance(cvars.Number("NAPC_Citizen_LookDistance"))
				end
			end
		end)
	end
end

function NAPC.OEC_CustomNPCsFOV(npc, NPCClass)
	if NAPC.ConvarsBool["NAPC_NPCs_CustomFOV"] then
		timer.Simple(0.1, function()
			if IsValid(npc) then
				if NPCClass == "npc_combine_s" then
					if cvars.Number("NAPC_Combine_CustomFOV") > 360 then
						return
					end
					npc:SetFOV(cvars.Number("NAPC_Combine_CustomFOV"))
				elseif NPCClass == "npc_hunter" then
					if cvars.Number("NAPC_Hunter_CustomFOV") > 360 then
						return
					end
					npc:SetFOV(cvars.Number("NAPC_Hunter_CustomFOV"))
				elseif NPCClass == "npc_metropolice" then
					if cvars.Number("NAPC_Metropolice_CustomFOV") > 360 then
						return
					end
					npc:SetFOV(cvars.Number("NAPC_Metropolice_CustomFOV"))
				elseif NPCClass == "npc_citizen" then
					if cvars.Number("NAPC_Citizen_CustomFOV") > 360 then
						return
					end
					npc:SetFOV(cvars.Number("NAPC_Citizen_CustomFOV"))
				end
			end
		end)
	end
end

function NAPC.OEC_CustomAttackRange(npc, NPCClass)
	if NAPC.ConvarsBool["NAPC_NPCs_AttackRange"] then
		timer.Simple(0.1, function()
			if IsValid(npc) then
				if NPCClass == "npc_combine_s" then
					npc.AttackRangeScale_NAPC = cvars.Number("NAPC_Combine_AttackRange")
				elseif NPCClass == "npc_metropolice" then
					npc.AttackRangeScale_NAPC = cvars.Number("NAPC_Metropolice_AttackRange")
				elseif NPCClass == "npc_citizen" then
					npc.AttackRangeScale_NAPC = cvars.Number("NAPC_Citizen_AttackRange")
				end
			end
		end)
	end
end

function NAPC.OEC_CustomMoveSpeed(npc, NPCClass)
	if NAPC.ConvarsBool["NAPC_NPCs_MoveSpeed"] then
		timer.Simple(0.1, function()
			if IsValid(npc) then
				if NPCClass == "npc_combine_s" then
					npc.MovementSpeed_NAPC = cvars.Number("NAPC_Combine_MoveSpeed")
				elseif NPCClass == "npc_metropolice" then
					npc.MovementSpeed_NAPC = cvars.Number("NAPC_Metropolice_MoveSpeed")
				elseif NPCClass == "npc_citizen" then
					npc.MovementSpeed_NAPC = cvars.Number("NAPC_Citizen_MoveSpeed")
				elseif NPCClass == "npc_zombie" or NPCClass == "npc_zombie_torso" then
					npc.MovementSpeed_NAPC = cvars.Number("NAPC_Zombie_MoveSpeed")
				elseif NPCClass == "npc_vortigaunt" then
					npc.MovementSpeed_NAPC = cvars.Number("NAPC_Vortigaunt_MoveSpeed")
				end
			end
		end)
	end
end

function NAPC.Tick_AvoidCrosshair(npc, NPCClass, ammoLack, enemy, wepHoldType, weapon)
	if NAPC.ConvarsBool["NAPC_NPCs_OODA"] or npc.ForcedGoPos_NAPC then
		return
	end

	if NAPC.Enable_AvoidCrosshair and not ammoLack and NAPC.Tick_SeenByPlayer(npc, enemy) then
		local IsNiceWeapon = not npc.IsShotgunner_NAPC and wepHoldType ~= "revolver" and not NAPC.IsRPGWeapon(weapon)
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["Combine_AVOID_PLAYER_CROSSHAIR"] then
			NAPC.Tick_RunRandom(npc)
		elseif NPCClass == "npc_metropolice" and NAPC.ConvarsBool["Metropolice_AVOID_PLAYER_CROSSHAIR"] then
			NAPC.Tick_RunRandom(npc)
		elseif NPCClass == "npc_citizen" and NAPC.ConvarsBool["Citizen_AVOID_PLAYER_CROSSHAIR"] then
			NAPC.Tick_RunRandom(npc)
		end
	end

	if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NPC_SHOOT_MORE_FREQUENTLY"] and not npc.IsShotgunner_NAPC then
		npc:SetSaveValue("m_nShots", 10)
	end
end

function NAPC.Tick_RunShoot(npc, NPCClass, ammoLack, enemy, curSched, seeEnemy)
	if NAPC.ConvarsBool["NAPC_RUN_AND_SHOOT"] and not ammoLack and not npc.IsShotgunner_NAPC then
		if curSched ~= SCHED_RUN_RANDOM and curSched ~= SCHED_CHASE_ENEMY and seeEnemy then
			if NPCClass ~= "npc_citizen" then
				if math.random(0, 20) ~= 13 then
					return
				end
				NAPC.Tick_RunRandom(npc)
				NAPC.Tick_ShouldOpenFire(npc)
			else
				if math.random(0, 10) ~= 5 then
					return
				end
				NAPC.Tick_RunRandom(npc)
				NAPC.Tick_ShouldOpenFire(npc)
			end
		end
	end
end

function NAPC.Tick_Combine_NoFear(npc, ammoLack, enemy, curSched)
	if NAPC.ConvarsBool["NAPC_NPCs_OODA"] or NAPC.Tables.BannedSchedule_List3[curSched] then
		return
	end
	if NAPC.ConvarsBool["NAPC_NPCs_StrikeBack"] and not ammoLack then
		if npc.CanRangeAttack_NAPC and (curSched == 102 or curSched == 120) then
			if not npc.IsShotgunner_NAPC then
				NAPC.Tick_RunRandom(npc)
			else
				npc:SetSchedule(SCHED_CHASE_ENEMY)
			end
		end
	end
end

function NAPC.Tick_Combine_Elite(npc, wepClass, NPCClass)
	if NPCClass == "npc_combine_s" then
		local mdl = string.lower(npc:GetModel() or "")
		local isEliteModel = string.find(mdl, "super_soldier") ~= nil or string.find(mdl, "elite") ~= nil
		npc:SetSaveValue("m_fIsElite", isEliteModel)
	end
end

function NAPC.Tick_BetterShotgunner(npc, ammoLack, enemy, weapon, NPCClass, seeEnemy)
	if NAPC.ConvarsBool["NAPC_BETTER_SHOTGUNNERS"] and not ammoLack and npc.IsShotgunner_NAPC and seeEnemy then
		if math.random(1, 30) == 17 then
			if NPCClass == "npc_combine_s" then
				NAPC.Tick_RunRandom(npc)
				if not enemy:IsPlayer() then
					NAPC.Tick_ShouldOpenFire(npc)
				end
			else
				NAPC.Tick_RunRandom(npc)
				if npc:GetGroundSpeedVelocity():IsZero() then
					NAPC.Tick_ShouldOpenFire(npc)
				end
			end
		end
	end
end

function NAPC.Tick_ShotgunnerRush(npc, enemy, ammoLack, enemyDist, seeEnemy)
	if NAPC.ConvarsBool["NAPC_Shotgunner_BigFlyFxxk"] and not ammoLack and npc.IsShotgunner_NAPC and seeEnemy then
		if
			enemyDist > 10000
			and enemyDist < 250000
			and math.random(1, 36) == 19
			and enemy:IsPlayer()
			and npc:IsOnGround()
		then
			local vec1 = (enemy:GetPos() - npc:GetPos()):GetNormalized() * 400
			vec1.z = math.max(0, vec1.z)
			npc:MoveJumpStart(vec1 + NAPC.JumpHeight_S)
		end
	end
end

function NAPC.Tick_Jump(npc, NPCClass)
	if NAPC.ConvarsBool["NAPC_NPCs_CAN_JUMP"] and NAPC.Tables.NPCClass_CanJump[NPCClass] and npc.CapabilitiesAdd then
		npc:CapabilitiesAdd(CAP_MOVE_JUMP + CAP_AUTO_DOORS + CAP_OPEN_DOORS + CAP_USE + CAP_DUCK)
	end
end

function NAPC.Tick_Shoot_SameTime(npc)
	local wep = npc:GetActiveWeapon()
	if IsValid(wep) and NAPC.IsRPGWeapon(wep) then
		return
	end
end

function NAPC.Tick_Patrol(npc, NPCClass)
	if
		NAPC.ConvarsBool["NAPC_WALK_AROUND"]
		and NPCClass ~= "npc_metropolice"
		and npc:GetNPCState() ~= NPC_STATE_COMBAT
	then
		npc:SetSaveValue("m_bShouldPatrol", true)
	end
end

function NAPC.Tick_Strider_Cannon(npc)
	if NAPC.ConvarsBool["NAPC_StriderCannon"] then
		local enemy = npc:GetEnemy()
		if IsValid(enemy) then
			if not NAPC.ConvarsBool["NAPC_StriderCn_AgainstPlayer"] and enemy:IsPlayer() then
				return
			end
			if not npc:Visible(enemy) then
				npc:SetSaveValue("m_hCannonTarget", nil)
			elseif npc.NextCannon_NAPC < NAPC.CurTime_Tick then
				npc:SetSaveValue("m_hCannonTarget", enemy)
				npc.NextCannon_NAPC = NAPC.CurTime_Tick + math.Rand(9, 18)
			end
		end
	end
end

function NAPC.Tick_Zombine_Run(npc)
	if NAPC.ConvarsBool["NAPC_Zombine_FrequentRun"] then
		npc:SetSaveValue("m_flSprintRestTime", 0)
	end
end

function NAPC.Tick_GreNearby(npc, curSched, moveAct)
	if npc.GreIsNearby_NAPC then
		if curSched == SCHED_COWER and NAPC.ConvarsBool["NAPC_NPCs_RunFromGrenade"] then
			npc:ClearSchedule()
		end

		local evadePos = nil
		local grePos = npc.GreNearbyPos_NAPC
		if grePos then
			evadePos = NAPC.FindExplosiveEvadePos(npc, grePos, Vector(0, 0, 0), nil)
			NAPC.LogLethalDangerZone(grePos, 3)
		end

		NAPC.Tick_MovementSpeed(npc, 1.5)

		if evadePos and NAPC.IsDestinationValid(npc, evadePos) then
			npc.ForcedGoPos_NAPC = evadePos
			npc.ForcedGoTimeout_NAPC = NAPC.CurTime_Tick + 3.5
			npc.ForcedGoStartTime_NAPC = NAPC.CurTime_Tick
			npc.ForcedGoLastPos_NAPC = npc:GetPos()
			npc.ForcedGoStuckTime_NAPC = NAPC.CurTime_Tick
			npc:SetSaveValue("m_vecLastPosition", evadePos)
			npc:SetSchedule(SCHED_FORCED_GO_RUN)
		elseif not NAPC.Tables.SeeGrenade_Schedules[curSched] then
			npc:SetSchedule(SCHED_FLEE_FROM_BEST_SOUND)
		end

		if moveAct == ACT_WALK_AIM then
			npc:SetMovementActivity(ACT_RUN_AIM)
		end

		npc.GreIsNearby_NAPC = false
		npc.GreNearbyPos_NAPC = nil
		return true
	end

	if curSched == SCHED_COWER and NAPC.ConvarsBool["NAPC_NPCs_RunFromGrenade"] then
		npc:ClearSchedule()
	end

	return false
end

function NAPC.Tick_EnemyIsNearby(npc, enemy, NPCClass, curSched, enemyDist, seeEnemy)
	if not (NAPC.ConvarsBool["NAPC_NPCs_EnemyNearby"] and seeEnemy) then
		return false
	end
	if NAPC.Tables.MeleeSchedule[curSched] then
		NAPC.Tick_MovementSpeed(npc, 1.5)
		return true
	end

	local isZombieThreat = NAPC.IsZombieOrHeadcrab(enemy)

	if isZombieThreat and enemyDist < 202500 then
		if curSched ~= SCHED_RUN_FROM_ENEMY_FALLBACK and curSched ~= SCHED_MOVE_AWAY then
			NAPC.Tick_MovementSpeed(npc, 1.45)
			npc:SetSchedule(SCHED_RUN_FROM_ENEMY_FALLBACK)
		else
			NAPC.Tick_MovementSpeed(npc, 1.45)
		end
		return true
	end

	if NPCClass == "npc_combine_s" then
		if enemyDist < 6400 and npc:HasCondition(COND.CAN_MELEE_ATTACK1) and not isZombieThreat then
			if curSched ~= SCHED_MELEE_ATTACK1 then
				npc:SetSchedule(SCHED_MELEE_ATTACK1)
			end
			return true
		end
		if enemyDist <= 160000 then
			if curSched ~= SCHED_RANGE_ATTACK1 and curSched ~= SCHED_MELEE_ATTACK1 then
				if NAPC.ConvarsBool["NPC_SHOOT_MORE_FREQUENTLY"] and not npc.IsShotgunner_NAPC then
					npc:SetSaveValue("m_nShots", 10)
				end
				npc:SetSchedule(SCHED_RANGE_ATTACK1)
			end
			return true
		end
		return false
	elseif enemyDist < 22500 then
		if curSched == SCHED_MOVE_AWAY then
			NAPC.Tick_MovementSpeed(npc, 1.5)
			return true
		end
		npc:SetSchedule(SCHED_MOVE_AWAY)
	elseif
		NAPC.Tables.NPCClass_BigDanger[enemy:GetClass()]
		and npc == enemy:GetEnemy()
		and IsValid(npc:GetNearestSquadMember())
	then
		if curSched == SCHED_TAKE_COVER_FROM_ENEMY then
			NAPC.Tick_MovementSpeed(npc, 1.5)
			return true
		end
		npc:SetSchedule(SCHED_TAKE_COVER_FROM_ENEMY)
	else
		return false
	end

	return true
end

function NAPC.Dmg_FriendlyDmg(npc, dmginfo, attacker, NPCClass)
	if NAPC.IsFriendly(npc, attacker) then
		if attacker:IsPlayer() then
			if NAPC.ConvarsBool["NAPC_NPCs_IGNORE_PLAYER_Dmg"] then
				dmginfo:ScaleDamage(0)
			end
		elseif NAPC.ConvarsBool["NAPC_NPCs_SCALE_FRIENDLY_Dmg"] then
			dmginfo:ScaleDamage(NAPC.ConvarsNum["NAPC_CUSTOM_FRIENDLY_Dmg"])
		end
	end
end

function NAPC.Dmg_ScaleDmgOnPlayers(ply, dmginfo, attacker)
	if NAPC.ConvarsBool["NAPC_NPCs_ScaleDmg_TO_PLAYERS"] and attacker:IsNPC() then
		if not (NAPC.IsFriendly(attacker, ply) or NAPC.Tables.NPCClass_Banned[attacker:GetClass()]) then
			dmginfo:ScaleDamage(NAPC.ConvarsNum["NAPC_Custom_NPCsDmg_TO_PLAYERS"])
		end
	end
end

function NAPC.Dmg_HideFromDmg(npc)
	if NAPC.ConvarsBool["NAPC_NPCs_HIDE_FROM_DMG"] and not IsValid(npc:GetEnemy()) then
		local sche = npc:GetCurrentSchedule()
		if not NAPC.IsAvailable(npc, sche, npc:GetNPCState()) then
			return
		end
		if not (sche == SCHED_RUN_FROM_ENEMY or NAPC.Tables.BannedSchedule_List2[sche]) then
			NAPC.UseCloaking(npc)
			npc:SetSchedule(SCHED_RUN_FROM_ENEMY)
		end
	end
end

function NAPC.Killed_HideFromDmg(npc, EntClass)
	if NAPC.ConvarsBool["NAPC_NPCs_HIDE_FROM_DMG"] then
		for _, v in ipairs(ents.FindInSphere(npc:GetPos(), 750)) do
			if v:IsNPC() and v:GetClass() == EntClass and v:Alive() then
				NAPC.Dmg_HideFromDmg(v)
			end
		end
	end
end

function NAPC.Dmg_LookForAttPos(npc, attacker)
	if NAPC.ConvarsBool["NAPC_NPCs_LookFor_Attacker"] then
		local enemy = npc:GetEnemy()
		if (IsValid(enemy) and npc:Visible(enemy)) or NAPC.IsFriendly(npc, attacker) then
			return
		end
		if npc.IsCurrentSchedule and npc:IsCurrentSchedule(SCHED_AMBUSH) then
			npc:ClearSchedule()
		end
		npc:UpdateEnemyMemory(attacker, attacker:GetPos())
	end
end

function NAPC.Killed_LookForAttPos(npc, attacker, EntClass)
	if NAPC.ConvarsBool["NAPC_NPCs_LookFor_Attacker"] and IsValid(attacker) then
		for _, v in ipairs(ents.FindInSphere(npc:GetPos(), 500)) do
			if v:IsNPC() and v:GetClass() == EntClass and v:Alive() then
				NAPC.Dmg_LookForAttPos(v, attacker)
			end
		end
	end
end

function NAPC.Dmg_ReduceDmg(npc, dmginfo, NPCClass)
	if NAPC.ConvarsBool["NAPC_NPCs_RELOAD_PROTECTION"] then
		if NAPC.Tables.BannedSchedule_List2[npc:GetCurrentSchedule()] then
			dmginfo:ScaleDamage(0.8)
		end
	end

	if NAPC.ConvarsBool["NAPC_NPCs_COWER_PROTECTION"] then
		if npc:IsCurrentSchedule(SCHED_COWER) then
			dmginfo:ScaleDamage(0.6)
		end
	end

	if NAPC.ConvarsBool["NAPC_KeyNPCs_Protection"] and NAPC.Tables.NPCClass_KeyNPCs[NPCClass] then
		dmginfo:ScaleDamage(0)
	end
end

function NAPC.Dmg_HunterTakingDmg(ent, dmginfo)
	if NAPC.ConvarsBool["NAPC_Hunter_TakingDmgSystem"] then
		dmginfo:SetDamageType(DMG_BULLET)

		local mh = ent:GetMaxHealth()
		if mh < 20 then
			return
		end

		local dmgNum = dmginfo:GetDamage()
		if dmgNum > mh then
			return
		elseif dmgNum > mh * 0.6 then
			dmginfo:SetDamage(mh / 2)
			return
		end

		if -ent:GetInternalVariable("m_flLastDamageTime") < 0.2 then
			dmginfo:SetDamage(0)
			return
		end

		local maxDmg = mh / 20
		if dmgNum > maxDmg then
			dmginfo:SetDamage(maxDmg)
		else
			dmginfo:SetDamage(dmgNum)
		end
	end
end

function NAPC.BetterHunterBehavior(IsTickUse, npc, NPCClass)
	if not NAPC.ConvarsBool["NAPC_CombineHunter_Enhanced"] then
		return
	end

	if IsTickUse then
		NAPC.Tick_MovementSpeed(npc, 1.5)
	elseif NPCClass == "npc_hunter" then
		npc:SetSaveValue("m_bEnableUnplantedShooting", true)
		npc:SetSaveValue("m_bEnableSquadShootDelay", false)
	end
end

function NAPC.Bullet_AimForHead(npc, enemy, enemypos, enemyhead, weapon, data)
	if NAPC.ConvarsBool["NAPC_NPCs_AimForHead"] and not NAPC.Tables.NPCClass_Torso[enemy:GetClass()] then
		if enemyhead then
			local npcpos = data.Src
			local distance = (enemypos - npcpos):LengthSqr()
			if distance < 40000 then
				data.Dir = enemy:GetBonePosition(enemyhead) - npcpos
			elseif distance < 160000 and math.random(1, 3) == 2 then
				data.Dir = enemy:GetBonePosition(enemyhead) - npcpos
			end
		end
	end
end

function NAPC.Bullet_ShotgunnerBullet(npc, NPCClass, enemypos, weapon, data)
	local distanceSqr = (enemypos - npc:GetPos()):LengthSqr()
	if
		distanceSqr < 160000
		and NAPC.ConvarsBool["NAPC_Shotgunner_AltFire"]
		and weapon:GetClass() == "weapon_shotgun"
	then
		if not npc.ShotgunAltFire_NAPC then
			npc.ShotgunAltFire_NAPC = true
			return
		end
		if math.random(1, 2) == 2 then
			local clip1 = weapon:Clip1()
			if clip1 > 0 then
				data.Num = data.Num * 2
				weapon:SetClip1(clip1 - 1)
				npc.ShotgunAltFire_NAPC = false
			end
		end
	elseif NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Shotgunner_Slug"] and distanceSqr > 360000 then
		data.Num = 1
		data.Tracer = 1
		data.HullSize = 1
		data.Damage = 20
		data.TracerName = "StriderTracer"
		data.Dir = enemypos - data.Src
		data.Spread = NAPC.S_Spread * math.max(5 - npc:GetCurrentWeaponProficiency(), 0)
	end
end

function NAPC.Bullet_FireAR2Ball(npc, enemypos, weapon, data)
	local canAltFire = NAPC.ConvarsBool["NAPC_NPCs_AR2_AltFire"]
		or (NAPC.ConvarsBool["NAPC_Combine_AR2_AltFire"] and npc:GetClass() == "npc_combine_s")
	if not canAltFire then
		return
	end
	if not (weapon:GetClass() == "weapon_ar2" and npc:IsOnGround()) then
		return
	end

	local nextAR2Ball = npc.NextFireAR2Ball_NAPC
	if not nextAR2Ball then
		npc.NextFireAR2Ball_NAPC = NAPC.CurTime_Tick + math.Rand(3, 9)
		return
	end
	if nextAR2Ball > NAPC.CurTime_Tick then
		return
	end
	npc.NextFireAR2Ball_NAPC = NAPC.CurTime_Tick + math.Rand(8, 16)

	local ent = ents.Create("prop_combine_ball")
	if not IsValid(ent) then
		return
	end
	local aimVec = (enemypos - data.Src):GetNormalized()
	ent:SetOwner(npc)
	ent:SetPos(data.Src + aimVec * 32)
	ent:Spawn()
	ent:SetSaveValue("m_flRadius", 10)
	ent:SetSaveValue("m_nState", 2)
	ent:GetPhysicsObject():SetVelocity(aimVec * 1000)
	ent:EmitSound("NPC_CombineBall.Launch")
	timer.Simple(math.Rand(2, 4), function()
		if IsValid(ent) then
			ent:Fire("Explode")
		end
	end)

	local id = npc:LookupSequence("shoot_ar2_alt")
	if id ~= -1 then
		npc:StopMoving()
		npc:AddGestureSequence(id, true)
	end
end

function NAPC.Bullet_BetterTurret(npc, enemy, enemypos, enemyhead, data)
	if NAPC.ConvarsBool["NAPC_Turret_AccurateShot"] and NAPC.Tables.NPCClass_Turret[npc:GetClass()] then
		if enemyhead then
			if npc:VisibleVec(enemypos) then
				data.Dir = enemypos - data.Src
			else
				data.Dir = enemy:GetBonePosition(enemyhead) - data.Src
			end
			data.Spread = NAPC.T_Spread
		elseif npc:VisibleVec(enemypos) then
			data.Dir = enemypos - data.Src
			data.Spread = NAPC.T_Spread
		end
	end
end

function NAPC.Bullet_PerfectAccuracy(npc, NPCClass, enemy, enemypos, enemyhead, data)
	if
		NAPC.ConvarsBool["NAPC_NPCs_WeaponProficiency"]
		and NAPC.Tables.NPCClass_Main[NPCClass]
		and npc.HasPerfectAccuracy_NAPC
	then
		data.Spread = Vector(0, 0, 0)

		local targetPos = nil
		if enemyhead then
			local headPos = enemy:GetBonePosition(enemyhead)
			if headPos and headPos ~= enemy:GetPos() and npc:VisibleVec(headPos) then
				targetPos = headPos
			end
		end

		if not targetPos then
			if npc:VisibleVec(enemypos) then
				targetPos = enemypos
			else
				targetPos = enemy:EyePos()
			end
		end

		data.Dir = (targetPos - data.Src):GetNormalized()
	end
end

function NAPC.FocusOnRunning(npc)
	if NAPC.ConvarsBool["NAPC_NPCs_FasterChasing"] and not npc.CanRangeAttack_NAPC then
		NAPC.Tick_MovementSpeed(npc, 1.25)
	end
end

function NAPC.Tick_Cloaking_Attacker(npc, seeEnemy)
	if NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
		if seeEnemy and math.random(1, 50) == 23 then
			NAPC.UseCloaking(npc)
		end
	end
end

function NAPC.Killed_Cloaking(npc, weapon)
	if npc.IsUsingCloaking then
		npc:SetMaterial("")
		npc:DrawShadow(true)
		if IsValid(weapon) and weapon:GetMaterial() == "Models/effects/vol_light001" then
			weapon:SetMaterial("")
			weapon:DrawShadow(true)
		end
	end
end

function NAPC.Tick_MedicCitizen(npc, NPCClass)
	if NPCClass == "npc_citizen" and NAPC.ConvarsBool["NAPC_Medic_Citizen"] then
		npc:AddSpawnFlags(SF_CITIZEN_MEDIC)
	end
end

function NAPC.Tick_Stealth(npc, enemy, NPCClass, ammoLack, enemyDist, seeEnemy, moveAct)
	if npc:IsCurrentSchedule(SCHED_FORCED_GO_RUN) or npc:IsCurrentSchedule(SCHED_FORCED_GO) then
		return
	end
	if not ammoLack and NPCClass ~= "npc_metropolice" and NAPC.ConvarsBool["NAPC_NPCs_Stealth"] then
		if seeEnemy then
			if moveAct == ACT_RUN_CROUCH then
				npc:SetMovementActivity(ACT_RUN_AIM)
			end
		elseif enemyDist < 500000 then
			npc:SetMovementActivity(ACT_RUN_CROUCH)
		end
	end
end

function NAPC.OEC_ReadyMetropolice(npc, NPCClass)
	if NPCClass == "npc_metropolice" and NAPC.ConvarsBool["NAPC_Metropolice_PistolReady"] then
		npc:SetSaveValue("m_fWeaponDrawn", true)
	end
end

function NAPC.OEC_FasterEnergyBall(ent, NPCClass)
	if NPCClass == "prop_combine_ball" and NAPC.ConvarsBool["NAPC_Faster_AR2Balls"] then
		timer.Simple(0.1, function()
			if IsValid(ent) and ent:GetOwner():IsNPC() then
				local phys = ent:GetPhysicsObject()
				phys:SetVelocity(phys:GetVelocity() * 2)
			end
		end)
	end
end

function NAPC.Sound_EnergyBallAOEDmg(ent, data, NPCClass)
	if
		NPCClass == "prop_combine_ball"
		and NAPC.ConvarsBool["NAPC_AR2Balls_AOEDmg"]
		and NAPC.Tables.AR2BallSounds[data.OriginalSoundName]
	then
		local owner = ent:GetOwner()
		if not (IsValid(owner) and NAPC.WorksOnANP(owner)) then
			return
		end

		local dmg = DamageInfo()
		dmg:SetDamage(40)
		dmg:SetDamageType(DMG_DISSOLVE)
		dmg:SetInflictor(ent)
		dmg:SetAttacker(owner)
		if data.OriginalSoundName ~= "weapons/physcannon/energy_sing_explosion2.wav" then
			util.BlastDamageInfo(dmg, ent:WorldSpaceCenter(), 60)
		else
			util.BlastDamageInfo(dmg, ent:WorldSpaceCenter(), 250)
		end
	end
end

function NAPC.WakenStupidNPC(IsTickUse, npc, attacker, enemy, NPCClass, curSched)
	if IsTickUse then
		if curSched ~= SCHED_AMBUSH then
			return
		end

		local seeEnemyTime = npc:GetEnemyLastTimeSeen(enemy)
		if seeEnemyTime + npc.Patience_NAPC * 1.2 < NAPC.CurTime_Tick then
			npc:ClearSchedule()
			if NPCClass == "npc_combine_s" then
				if npc:GetInternalVariable("m_fIsElite") then
					npc:SetSaveValue("m_vecAltFireTarget", npc:GetEnemyLastSeenPos(enemy))
					npc:SetActivity(ACT_COMBINE_AR2_ALTFIRE)
				else
					npc:SetSaveValue("m_hForcedGrenadeTarget", enemy)
				end
			else
				npc:SetSchedule(SCHED_CHASE_ENEMY)
			end
		elseif seeEnemyTime + npc.Patience_NAPC * 1.5 < NAPC.CurTime_Tick then
			npc:ClearSchedule()
			npc:SetNPCState(NPC_STATE_ALERT)
		end
	elseif not NAPC.IsFriendly(npc, attacker) then
		local sche = npc:GetCurrentSchedule()
		if sche ~= SCHED_AMBUSH or NAPC.Tables.BannedSchedule_List3[sche] then
			return
		end
		npc:ClearSchedule()
		npc:UpdateEnemyMemory(attacker, attacker:GetPos())
		npc:SetSchedule(SCHED_CHASE_ENEMY)
	end
end

function NAPC.Tick_BackForEnemy(IsInCombat, npc, enemy, curSched, NPCState)
	if IsInCombat then
		if IsValid(enemy) then
			local enemyPos = enemy:GetPos()
			local tr = util.TraceLine({
				start = enemyPos + Vector(0, 0, 32),
				endpos = enemyPos - Vector(0, 0, 96),
				mask = MASK_SOLID_BRUSHONLY,
			})
			local groundEnemyPos = (tr.Hit and not tr.StartSolid) and tr.HitPos or enemyPos
			if NAPC.IsDestinationValid(npc, groundEnemyPos) then
				npc.ForcedGoPos_NAPC = groundEnemyPos
				npc.ForcedGoTimeout_NAPC = NAPC.CurTime_Tick + 4.5
			end
		end
	elseif NAPC.ConvarsBool["NAPC_NPCs_TakeCaution"] and npc.ForcedGoPos_NAPC then
		if NAPC.Tables.BannedSchedule_List3[curSched] or NAPC.Tables.BannedSchedule_List2[curSched] then
			return
		end
		if not NAPC.IsAvailable(npc, curSched, NPCState) then
			return
		end

		if (npc:GetPos() - npc.ForcedGoPos_NAPC):LengthSqr() < 25600 then
			npc.ForcedGoPos_NAPC = nil
			npc.ForcedGoTimeout_NAPC = nil
			return
		end

		if NAPC.IsDestinationValid(npc, npc.ForcedGoPos_NAPC) then
			npc:SetSaveValue("m_vecLastPosition", npc.ForcedGoPos_NAPC)
			npc:SetSchedule(SCHED_FORCED_GO_RUN)
		else
			npc.ForcedGoPos_NAPC = nil
			npc.ForcedGoTimeout_NAPC = nil
		end
	end
end

function NAPC.Tick_TakeCaution(npc, enemy, NPCClass, curSched, seeEnemy)
	if NAPC.ConvarsBool["NAPC_NPCs_TakeCaution"] then
		if seeEnemy or NAPC.Tick_SeenByPlayer(npc, enemy) then
			NAPC.Tick_BackForEnemy(true, npc, enemy)
			npc.Patience_NAPC = math.Rand(5, 10)
			if curSched == SCHED_AMBUSH then
				npc:ClearSchedule()
				NAPC.Tick_ShouldOpenFire(npc)
			end
		elseif
			not NAPC.Tables.TakeCaution_Schedules[curSched]
			and npc:GetEnemyLastTimeSeen(enemy) + npc.Patience_NAPC > NAPC.CurTime_Tick
		then
			local rand = math.random(1, 12)
			if rand < 4 then
				if not npc.IsShotgunner_NAPC then
					npc:SetSchedule(SCHED_SHOOT_ENEMY_COVER)
				else
					npc:SetSchedule(SCHED_CHASE_ENEMY)
				end
			elseif rand > 9 then
				npc:SetSchedule(SCHED_RUN_FROM_ENEMY_FALLBACK)
			elseif rand > 4 then
				npc:SetSchedule(SCHED_AMBUSH)
			else
				npc:SetSchedule(SCHED_CHASE_ENEMY)
			end
		end
	end
end

function NAPC.AimForExplosive(IsTickUse, npc, enemy, data)
	if not NAPC.ConvarsBool["NAPC_NPCs_AimForExplosive"] then
		return
	end

	if IsTickUse then
		local nextFind = npc.NextFindEPP_NAPC
		if not nextFind then
			npc.NextFindEPP_NAPC = NAPC.CurTime_Tick
			return
		end
		if nextFind > NAPC.CurTime_Tick then
			return
		end

		npc.NextFindEPP_NAPC = NAPC.CurTime_Tick + 0.3
		npc.FindExplosive_NAPC = nil
		local npcPos = npc:WorldSpaceCenter()
		for _, prop in ipairs(ents.FindInSphere(enemy:WorldSpaceCenter(), 250)) do
			if
				IsValid(prop)
				and NAPC.Tables.ExplosiveProps[prop:GetModel()]
				and prop:GetClass() == "prop_physics"
				and prop:Health() > 0
			then
				local propPos = prop:WorldSpaceCenter()
				if npc:VisibleVec(propPos) and (npcPos - propPos):LengthSqr() > 90000 and enemy:VisibleVec(propPos) then
					npc.FindExplosive_NAPC = prop
					break
				end
			end
		end
	elseif npc.FindExplosive_NAPC then
		local prop = npc.FindExplosive_NAPC
		if IsValid(prop) and prop:Health() > 0 then
			local propPos = prop:WorldSpaceCenter()
			if npc:VisibleVec(propPos) then
				data.Dir = propPos - data.Src
			end
		else
			npc.FindExplosive_NAPC = nil
		end
	end
end

function NAPC.IsGrenadeBlastSafe(npc, blastPos, radius)
	radius = radius or 240
	local rSqr = radius * radius

	for mate, _ in pairs(NAPC.CurNPCList) do
		if IsValid(mate) and mate:Alive() and NAPC.IsFriendly(npc, mate) then
			if (mate:GetPos() - blastPos):LengthSqr() <= rSqr then
				return false
			end
		end
	end

	for _, ply in player.Iterator() do
		if IsValid(ply) and ply:Alive() and NAPC.IsFriendly(npc, ply) then
			if (ply:GetPos() - blastPos):LengthSqr() <= rSqr then
				return false
			end
		end
	end

	return true
end

function NAPC.CalculateBallisticVelocity(startPos, targetPos, travelTime, grav)
	grav = grav or (GetConVar("sv_gravity") and GetConVar("sv_gravity"):GetFloat() or 600)
	travelTime = math.max(0.1, travelTime or 1.0)

	local toTarget = targetPos - startPos
	local velX = toTarget.x / travelTime
	local velY = toTarget.y / travelTime
	local velZ = (toTarget.z + (0.5 * grav * travelTime * travelTime)) / travelTime

	return Vector(velX, velY, velZ)
end

NAPC.DebugGrenadeArcs = NAPC.DebugGrenadeArcs or {}

function NAPC.SimulateGrenadeTrajectory(npc, launchPos, launchVel, maxTime, maxBounces, enemy)
	maxTime = maxTime or 3.0
	maxBounces = maxBounces or 2

	if not isvector(launchPos) or not isvector(launchVel) then
		return false, launchPos, {}, {}, false
	end

	if launchVel:LengthSqr() > 2250000 then
		return false, launchPos, {}, {}, false
	end

	local grav = GetConVar("sv_gravity") and GetConVar("sv_gravity"):GetFloat() or 600
	local gravVec = Vector(0, 0, grav)
	local dt = 0.08

	local curPos = Vector(launchPos.x, launchPos.y, launchPos.z)
	local curVel = Vector(launchVel.x, launchVel.y, launchVel.z)
	local path = { curPos }
	local bounces = {}
	local numBounces = 0
	local totalTime = 0
	local filter = { npc, IsValid(npc) and npc:GetActiveWeapon() or nil }

	local finalPos = curPos
	local hitEnemy = false
	local hitFriendly = false

	while totalTime < maxTime do
		local nextPos = curPos + (curVel * dt) - (0.5 * gravVec * (dt * dt))
		local nextVel = curVel - (gravVec * dt)

		local tr = util.TraceHull({
			start = curPos,
			endpos = nextPos,
			mins = Vector(-3, -3, -3),
			maxs = Vector(3, 3, 3),
			mask = MASK_SOLID,
			filter = filter,
		})

		if tr.Hit then
			table.insert(path, tr.HitPos)
			finalPos = tr.HitPos

			if IsValid(tr.Entity) then
				if tr.Entity == enemy then
					hitEnemy = true
					break
				elseif NAPC.IsFriendly(npc, tr.Entity) then
					hitFriendly = true
					break
				end
			end

			if numBounces < maxBounces and curVel:Length() > 90 then
				numBounces = numBounces + 1
				table.insert(bounces, tr.HitPos)

				local normal = tr.HitNormal
				local elasticity = 0.45
				curPos = tr.HitPos + (normal * 2)
				curVel = (curVel - 2 * curVel:Dot(normal) * normal) * elasticity

				if normal.z > 0.7 and curVel:Length() < 90 then
					break
				end
			else
				break
			end
		else
			table.insert(path, nextPos)
			curPos = nextPos
			curVel = nextVel
		end

		totalTime = totalTime + dt
	end

	local npcPos = IsValid(npc) and npc:GetPos() or launchPos
	local distToThrowerSqr = (finalPos - npcPos):LengthSqr()
	local isBlastSafe = NAPC.IsGrenadeBlastSafe(npc, finalPos, 240)
	local isSelfSafe = (distToThrowerSqr >= 67600)

	local isValid = not hitFriendly and isBlastSafe and isSelfSafe

	return isValid, finalPos, path, bounces, hitEnemy
end

function NAPC.CheckGrenadeTrajectoryClear(npc, launchPos, targetPos, launchVel, enemy)
	if not isvector(launchPos) or not isvector(targetPos) or not isvector(launchVel) then
		return false, launchPos, {}, {}, false
	end

	local isValid, finalPos, path, bounces, hitEnemy =
		NAPC.SimulateGrenadeTrajectory(npc, launchPos, launchVel, 2.5, 1, enemy)
	local reachedTarget = hitEnemy or ((finalPos - targetPos):LengthSqr() <= 57600)

	return (isValid and reachedTarget), finalPos, path, bounces, hitEnemy
end

function NAPC.FindBounceGrenadeTarget(npc, launchPos, enemy, enemyPos, seeEnemy)
	local toEnemy = (enemyPos - launchPos):GetNormalized()
	local baseAngle = toEnemy:Angle()
	local wallCheckAngles = { -45, -25, 25, 45 }

	local bestBouncePos = nil
	local bestTotalDist = math.huge
	local wep = IsValid(npc) and npc:GetActiveWeapon() or nil
	local filter1 = { npc, wep }
	local grav = GetConVar("sv_gravity") and GetConVar("sv_gravity"):GetFloat() or 600

	for _, angOffset in ipairs(wallCheckAngles) do
		local castDir = (baseAngle + Angle(0, angOffset, 0)):Forward()
		local wallTrace = util.TraceLine({
			start = launchPos,
			endpos = launchPos + (castDir * 1200),
			mask = MASK_SOLID,
			filter = filter1,
		})

		if
			wallTrace.Hit
			and not wallTrace.StartSolid
			and not wallTrace.HitSky
			and math.abs(wallTrace.HitNormal.z) < 0.28
		then
			local hitEnt = wallTrace.Entity
			if not (IsValid(hitEnt) and (hitEnt:IsNPC() or hitEnt:IsPlayer() or hitEnt:IsNextBot())) then
				local wallPos = wallTrace.HitPos
				local wallNorm = wallTrace.HitNormal

				local npcDot = (launchPos - wallPos):Dot(wallNorm)
				local enemyDot = (enemyPos - wallPos):Dot(wallNorm)

				if npcDot > 10 and enemyDot > 10 then
					local distToPlane = enemyDot
					local virtualEnemyPos = enemyPos - (wallNorm * (2 * distToPlane))
					local rayDir = virtualEnemyPos - launchPos
					local denom = rayDir:Dot(wallNorm)

					if denom < -0.001 then
						local t = (wallPos - launchPos):Dot(wallNorm) / denom
						if t > 0.05 and t < 0.95 then
							local bounceCandidate = launchPos + (rayDir * t)
							local clearanceBounce = bounceCandidate + (wallNorm * 8)

							local leg1Dist = (clearanceBounce - launchPos):Length()
							local leg2Dist = (enemyPos - clearanceBounce):Length()
							local t1 = math.Clamp(leg1Dist / 800, 0.35, 1.4)
							local t2 = math.Clamp(leg2Dist / 700, 0.35, 1.4)

							local bounceVel = NAPC.CalculateBallisticVelocity(launchPos, clearanceBounce, t1, grav)
							local bValid, bFinalPos, _, _, bHitEnemy =
								NAPC.SimulateGrenadeTrajectory(npc, launchPos, bounceVel, t1 + t2 + 0.8, 2, enemy)

							local bReachedTarget = bHitEnemy or ((bFinalPos - enemyPos):LengthSqr() <= 57600)
							if bValid and bReachedTarget then
								local totalDist = leg1Dist + leg2Dist
								if totalDist < bestTotalDist then
									bestTotalDist = totalDist
									bestBouncePos = clearanceBounce
								end
							end
						end
					end
				end
			end
		end
	end

	return bestBouncePos
end

function NAPC.AttachGrenadeToPath(grenade, simData)
	if not IsValid(grenade) or not simData or not simData.path or #simData.path < 2 then
		return
	end

	local path = simData.path
	local flightTime = math.max(0.1, (#path - 1) * 0.05)
	local startTime = CurTime()
	local lastBounceIdx = 0

	grenade:SetMoveType(MOVETYPE_FLY)
	grenade:SetSolid(SOLID_NONE)
	grenade:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

	local phys = grenade:GetPhysicsObject()
	if IsValid(phys) then
		phys:EnableGravity(false)
		phys:EnableMotion(false)
	end

	local hookName = "NAPC_GrenadeTrack_" .. grenade:EntIndex()
	hook.Add("Think", hookName, function()
		if not IsValid(grenade) then
			hook.Remove("Think", hookName)
			return
		end

		local elapsed = CurTime() - startTime
		local progress = elapsed / flightTime

		if progress >= 1.0 then
			hook.Remove("Think", hookName)

			grenade:SetPos(simData.finalPos)
			grenade:SetMoveType(MOVETYPE_VPHYSICS)
			grenade:SetSolid(SOLID_VPHYSICS)
			grenade:SetCollisionGroup(COLLISION_GROUP_NPC)

			local p = grenade:GetPhysicsObject()
			if IsValid(p) then
				p:EnableMotion(true)
				p:EnableGravity(true)
				p:Wake()
				p:SetVelocity(Vector(0, 0, 0))
			end
			return
		end

		local floatIdx = 1 + (progress * (#path - 1))
		local idx1 = math.floor(floatIdx)
		local idx2 = math.min(idx1 + 1, #path)
		local frac = floatIdx - idx1

		local curPos = LerpVector(frac, path[idx1], path[idx2])
		grenade:SetPos(curPos)

		if simData.bounces and #simData.bounces > 0 then
			for bIdx, bPos in ipairs(simData.bounces) do
				if bIdx > lastBounceIdx and (curPos - bPos):LengthSqr() < 576 then
					lastBounceIdx = bIdx
					grenade:EmitSound("Grenade.ImpactHard")
				end
			end
		end

		local nextIdx = math.min(idx2 + 1, #path)
		local dir = (path[nextIdx] - path[idx1]):GetNormalized()
		if not dir:IsZero() then
			local ang = dir:Angle()
			ang:RotateAroundAxis(ang:Right(), elapsed * 360)
			grenade:SetAngles(ang)
		end
	end)
end

function NAPC.FindGrenadeTargetDestination(npc, primaryEnemy)
	if not IsValid(npc) then
		return nil, nil, nil
	end

	local npcPos = npc:GetPos()
	local npcEye = npc:EyePos()
	local minRangeSqr = 200 * 200
	local maxRangeSqr = 1600 * 1600

	local hostiles = {}
	local seenHostiles = {}

	local function addHostile(ent)
		if
			IsValid(ent)
			and ent:Alive()
			and not seenHostiles[ent]
			and not NAPC.IsFriendly(npc, ent)
			and not (ent:IsPlayer() and NAPC.IsPlayerIgnored(ent))
		then
			local dSqr = (ent:GetPos() - npcPos):LengthSqr()
			if dSqr >= minRangeSqr and dSqr <= maxRangeSqr then
				seenHostiles[ent] = true
				hostiles[#hostiles + 1] = ent
			end
		end
	end

	if IsValid(primaryEnemy) then
		addHostile(primaryEnemy)
	end

	for _, ply in player.Iterator() do
		addHostile(ply)
	end

	for ent, _ in pairs(NAPC.CurNPCList) do
		if IsValid(ent) and ent:IsNPC() then
			addHostile(ent)
		end
	end

	if #hostiles == 0 then
		return nil, nil, nil
	end

	local bestGroupPos = nil
	local bestGroupTarget = nil
	local bestGroupCount = 0

	for i = 1, #hostiles do
		local h1 = hostiles[i]
		local h1Pos = h1:GetPos()
		local cluster = { h1Pos }
		local clusterEnts = { h1 }

		for j = 1, #hostiles do
			if i ~= j then
				local h2 = hostiles[j]
				if (h2:GetPos() - h1Pos):LengthSqr() <= 78400 then
					cluster[#cluster + 1] = h2:GetPos()
					clusterEnts[#clusterEnts + 1] = h2
				end
			end
		end

		if #cluster >= 2 and #cluster > bestGroupCount then
			local sumPos = Vector(0, 0, 0)
			for _, pos in ipairs(cluster) do
				sumPos = sumPos + pos
			end
			local centroid = sumPos / #cluster
			if NAPC.IsGrenadeBlastSafe(npc, centroid, 220) then
				bestGroupCount = #cluster
				bestGroupPos = centroid
				bestGroupTarget = (IsValid(primaryEnemy) and table.HasValue(clusterEnts, primaryEnemy)) and primaryEnemy
					or h1
			end
		end
	end

	if bestGroupPos then
		return bestGroupPos, bestGroupTarget, "group"
	end

	local function CheckEnemyBehindCover(targetEnt)
		if not IsValid(targetEnt) then
			return false, nil
		end

		local tPos = targetEnt:GetPos()
		local tCenter = targetEnt:WorldSpaceCenter()

		local trCenter = util.TraceLine({
			start = npcEye,
			endpos = tCenter,
			mask = MASK_SHOT,
			filter = { npc, npc:GetActiveWeapon() },
		})

		local trFeet = util.TraceLine({
			start = npcEye,
			endpos = tPos + Vector(0, 0, 16),
			mask = MASK_SHOT,
			filter = { npc, npc:GetActiveWeapon() },
		})

		local centerBlocked = trCenter.Hit
			and trCenter.Entity ~= targetEnt
			and not (trCenter.Entity:IsPlayer() or trCenter.Entity:IsNPC())
		local feetBlocked = trFeet.Hit
			and trFeet.Entity ~= targetEnt
			and not (trFeet.Entity:IsPlayer() or trFeet.Entity:IsNPC())
		local notVisible = not npc:Visible(targetEnt)

		if notVisible or centerBlocked or feetBlocked then
			local destPos = tPos
			if notVisible then
				local lastSeen = npc:GetEnemyLastSeenPos(targetEnt)
				if lastSeen and lastSeen ~= vector_origin and (lastSeen - npcPos):LengthSqr() <= maxRangeSqr then
					destPos = lastSeen
				end
			end
			if NAPC.IsGrenadeBlastSafe(npc, destPos, 220) then
				return true, destPos
			end
		end

		return false, nil
	end

	if IsValid(primaryEnemy) then
		local isBehindCover, coverPos = CheckEnemyBehindCover(primaryEnemy)
		if isBehindCover then
			return coverPos, primaryEnemy, "cover"
		end
	end

	for _, hostile in ipairs(hostiles) do
		if hostile ~= primaryEnemy then
			local isBehindCover, coverPos = CheckEnemyBehindCover(hostile)
			if isBehindCover then
				return coverPos, hostile, "cover"
			end
		end
	end

	return nil, nil, nil
end

function NAPC.ExecuteCombineGrenadeThrow(npc, enemy, launchPos, targetPos, bouncePos, throwType)
	if not IsValid(npc) or not npc:Alive() or not isvector(targetPos) then
		return
	end

	local isMetropolice = (npc:GetClass() == "npc_metropolice")
	local grav = GetConVar("sv_gravity") and GetConVar("sv_gravity"):GetFloat() or 600
	local handAttachName = isMetropolice
			and (npc:LookupAttachment("anim_attachment_LH") > 0 and "anim_attachment_LH" or "anim_attachment_RH")
		or "anim_attachment_LH"
	local handPos = npc:GetAttachment(npc:LookupAttachment(handAttachName))
	local spawnPos = handPos and handPos.Pos or (npc:EyePos() + (npc:GetForward() * 20) + (npc:GetRight() * 12))

	local launchVelocity = Vector(0, 0, 0)
	local fuseTime = 3.5
	local seqName = isMetropolice and "grenadethrow" or "grenthrow"

	if isMetropolice then
		seqName = "grenadethrow"
		if bouncePos then
			local leg1Dist = (bouncePos - spawnPos):Length()
			local leg2Dist = (targetPos - bouncePos):Length()
			local t1 = math.Clamp(leg1Dist / 800, 0.35, 1.4)
			local t2 = math.Clamp(leg2Dist / 700, 0.35, 1.4)
			launchVelocity = NAPC.CalculateBallisticVelocity(spawnPos, bouncePos, t1, grav)
			fuseTime = math.Clamp(t1 + t2 + 1.0, 2.0, 4.5)
		else
			local directDist = (targetPos - spawnPos):Length()
			local flightTime = math.Clamp(directDist / 750, 0.5, 2.0)
			launchVelocity = NAPC.CalculateBallisticVelocity(spawnPos, targetPos, flightTime, grav)
			fuseTime = math.Clamp(flightTime + 1.0, 2.0, 4.5)
		end
	elseif throwType == "place" then
		seqName = "grenplace"
		launchVelocity = (npc:GetForward() * 90) + Vector(0, 0, 50)
		fuseTime = 2.8
	elseif bouncePos then
		local leg1Dist = (bouncePos - spawnPos):Length()
		local leg2Dist = (targetPos - bouncePos):Length()
		local totalDist = leg1Dist + leg2Dist
		seqName = (totalDist <= 550) and "grendrop" or "grenthrow"

		local t1 = math.Clamp(leg1Dist / 800, 0.35, 1.4)
		local t2 = math.Clamp(leg2Dist / 700, 0.35, 1.4)
		launchVelocity = NAPC.CalculateBallisticVelocity(spawnPos, bouncePos, t1, grav)
		fuseTime = math.Clamp(t1 + t2 + 1.0, 2.0, 4.5)
	elseif throwType == "drop" then
		seqName = "grendrop"
		local directDist = (targetPos - spawnPos):Length()
		local flightTime = math.Clamp(directDist / 550, 0.4, 1.4)
		launchVelocity = NAPC.CalculateBallisticVelocity(spawnPos, targetPos, flightTime, grav)
		fuseTime = math.Clamp(flightTime + 1.0, 1.8, 3.5)
	else
		seqName = "grenthrow"
		local directDist = (targetPos - spawnPos):Length()
		local flightTime = math.Clamp(directDist / 750, 0.5, 2.0)
		launchVelocity = NAPC.CalculateBallisticVelocity(spawnPos, targetPos, flightTime, grav)
		fuseTime = math.Clamp(flightTime + 1.0, 2.0, 4.5)
	end

	local isValid, simFinalPos, simPath, simBounces, hitEnemy =
		NAPC.SimulateGrenadeTrajectory(npc, spawnPos, launchVelocity, fuseTime, bouncePos and 2 or 1, enemy)

	local reachedTarget = hitEnemy or ((simFinalPos - targetPos):LengthSqr() <= 62500)
	if not isValid or not reachedTarget then
		npc.NextThrowGre_NAPC = NAPC.CurTime_Tick + math.Rand(2.0, 3.5)
		return
	end

	if isMetropolice then
		npc.NumGrenades_NAPC = math.max(0, (npc.NumGrenades_NAPC or 1) - 1)
	end

	npc.PendingGrenadeSim_NAPC = {
		path = simPath,
		bounces = simBounces,
		finalPos = simFinalPos,
	}

	table.insert(NAPC.DebugGrenadeArcs, {
		npcIdx = npc:EntIndex(),
		startPos = spawnPos,
		finalPos = simFinalPos,
		path = simPath,
		bounces = simBounces,
		valid = isValid,
		hitEnemy = hitEnemy,
		expire = NAPC.CurTime_Tick + 3.5,
	})

	if #NAPC.DebugGrenadeArcs > 12 then
		table.remove(NAPC.DebugGrenadeArcs, 1)
	end

	npc.CustomGrenadeFuse_NAPC = NAPC.CurTime_Tick + fuseTime
	npc:SetSaveValue("m_vecTossVelocity", launchVelocity)
	npc:StopMoving()

	local seqID = npc:LookupSequence(seqName)
	if not seqID or seqID == -1 then
		if seqName == "grenplace" then
			seqID = npc:LookupSequence("grendrop")
		elseif seqName == "grendrop" then
			seqID = npc:LookupSequence("grenthrow")
		end
	end

	local seqDuration = 1.8
	if seqID and seqID ~= -1 then
		seqDuration = npc:SequenceDuration(seqID) or 1.8
		npc:AddGestureSequence(seqID, true)
	else
		npc:RestartGesture(ACT_SPECIAL_ATTACK1)
	end

	if isMetropolice then
		local throwDelay = math.Clamp(seqDuration * 0.45, 0.5, 0.8)
		timer.Simple(throwDelay, function()
			if not IsValid(npc) or not npc:Alive() then
				return
			end
			local grenade = ents.Create("npc_grenade_frag")
			if IsValid(grenade) then
				local handPosCur = npc:GetAttachment(npc:LookupAttachment(handAttachName))
				local throwOrigin = handPosCur and handPosCur.Pos
					or (npc:EyePos() + (npc:GetForward() * 20) + (npc:GetRight() * 12))
				grenade:SetPos(throwOrigin)
				grenade:SetOwner(npc)
				grenade:SetPhysicsAttacker(npc)
				grenade:Spawn()

				local remainingFuse = (npc.CustomGrenadeFuse_NAPC or (CurTime() + 3.5)) - CurTime()
				if remainingFuse <= 0.3 or remainingFuse > 6.0 then
					remainingFuse = 3.5
				end
				grenade:SetSaveValue("m_flDetonateTime", CurTime() + remainingFuse)
				grenade:Fire("SetTimer", remainingFuse)
			end
		end)
	end

	npc.IsThrowingGrenade_NAPC = true
	npc.GrenadeThrowEnd_NAPC = NAPC.CurTime_Tick + math.max(1.2, seqDuration)
	npc.NextThrowGre_NAPC = NAPC.CurTime_Tick + math.Rand(6.0, 10.0)

	if IsValid(enemy) then
		enemy.NextGrenadeTargetTime_NAPC = NAPC.CurTime_Tick + math.Rand(4.0, 6.5)
	end

	local sqID = NAPC.GetSquadID(npc)
	if sqID and NAPC.TheaterSquads[sqID] then
		NAPC.TheaterSquads[sqID].NextSquadGrenadeTime = NAPC.CurTime_Tick + math.Rand(4.5, 7.0)
	end
end

function NAPC.Tick_ThrowMoreGre(npc, enemy, enemyDist)
	local NPCClass = npc:GetClass()
	local isMetropolice = (NPCClass == "npc_metropolice")

	if not isMetropolice and not NAPC.ConvarsBool["NAPC_Combine_MoreGrenades"] then
		return
	end
	if npc.NextThrowGre_NAPC and NAPC.CurTime_Tick < npc.NextThrowGre_NAPC then
		return
	end
	if npc.GrenadeThrowEnd_NAPC and NAPC.CurTime_Tick < npc.GrenadeThrowEnd_NAPC then
		return
	end
	if isMetropolice and (npc.NumGrenades_NAPC or 0) <= 0 then
		return
	end
	if IsValid(enemy) and enemy.NextGrenadeTargetTime_NAPC and NAPC.CurTime_Tick < enemy.NextGrenadeTargetTime_NAPC then
		return
	end

	local sqID = NAPC.GetSquadID(npc)
	if
		sqID
		and NAPC.TheaterSquads[sqID]
		and NAPC.TheaterSquads[sqID].NextSquadGrenadeTime
		and NAPC.CurTime_Tick < NAPC.TheaterSquads[sqID].NextSquadGrenadeTime
	then
		return
	end

	local curSched = npc:GetCurrentSchedule()
	if
		NAPC.Tables.BannedSchedule_List1[curSched]
		or NAPC.Tables.BannedSchedule_List2[curSched]
		or NAPC.Tables.BannedSchedule_List3[curSched]
	then
		return
	end
	if
		curSched == SCHED_COMBINE_GRENADE_THROW
		or curSched == SCHED_SPECIAL_ATTACK1
		or curSched == SCHED_SPECIAL_ATTACK2
	then
		return
	end

	local targetPos, targetEnemy = NAPC.FindGrenadeTargetDestination(npc, enemy)
	if not targetPos or not isvector(targetPos) then
		return
	end

	local distActual = (targetPos - npc:GetPos()):Length()
	if distActual < 220 or distActual > 1600 then
		return
	end

	if not NAPC.IsGrenadeBlastSafe(npc, targetPos, 240) then
		return
	end

	local launchPos = npc:EyePos() + (npc:GetForward() * 16) + (npc:GetRight() * 8)
	local trMuzzle = util.TraceHull({
		start = npc:EyePos(),
		endpos = launchPos,
		mins = Vector(-3, -3, -3),
		maxs = Vector(3, 3, 3),
		mask = MASK_SOLID,
		filter = { npc, npc:GetActiveWeapon() },
	})
	if trMuzzle.Hit then
		return
	end

	if not isMetropolice then
		local numGre = npc:GetInternalVariable("m_iNumGrenades") or 0
		if numGre < 1 then
			npc:SetSaveValue("m_iNumGrenades", 4)
		end
	end

	local wep = npc:GetActiveWeapon()
	local isHoldingAR2 = IsValid(wep) and wep:GetClass() == "weapon_ar2"
	if npc:GetInternalVariable("m_fIsElite") and isHoldingAR2 then
		return
	end

	local seeTarget = IsValid(targetEnemy) and npc:Visible(targetEnemy) or false
	local throwType = (distActual <= 600) and "drop" or "throw"
	local grav = GetConVar("sv_gravity") and GetConVar("sv_gravity"):GetFloat() or 600

	local flightTime = (throwType == "drop") and math.Clamp(distActual / 550, 0.4, 1.4)
		or math.Clamp(distActual / 750, 0.5, 2.0)
	local testVel = NAPC.CalculateBallisticVelocity(launchPos, targetPos, flightTime, grav)
	local directClear = NAPC.CheckGrenadeTrajectoryClear(npc, launchPos, targetPos, testVel, targetEnemy)

	if directClear then
		NAPC.ExecuteCombineGrenadeThrow(npc, targetEnemy or enemy, launchPos, targetPos, nil, throwType)
		return
	end

	local bouncePos = NAPC.FindBounceGrenadeTarget(npc, launchPos, targetEnemy or enemy, targetPos, seeTarget)
	if bouncePos then
		local bThrowType = (distActual <= 600) and "drop" or "throw"
		NAPC.ExecuteCombineGrenadeThrow(npc, targetEnemy or enemy, launchPos, targetPos, bouncePos, bThrowType)
		return
	end

	npc.NextThrowGre_NAPC = NAPC.CurTime_Tick + math.Rand(2.0, 3.5)
end

function NAPC.Tick_WalkingAim(npc, enemyDist, moveAct)
	if npc:IsCurrentSchedule(SCHED_FORCED_GO_RUN) or npc:IsCurrentSchedule(SCHED_FORCED_GO) then
		return
	end
	if NAPC.ConvarsBool["NAPC_NPCs_WalkAndShoot"] and enemyDist < 640000 then
		if npc.NextRunToWalk_NAPC < NAPC.CurTime_Tick then
			if moveAct == ACT_RUN_AIM then
				npc:SetMovementActivity(ACT_WALK_AIM)
			end
		elseif moveAct == ACT_WALK_AIM then
			npc:SetMovementActivity(ACT_RUN_AIM)
		end
	end
end

function NAPC.GainHealth(IsTickUse, npc)
	if not NAPC.ConvarsBool["NAPC_NPCs_HealthRegen"] then
		return
	end

	if IsTickUse then
		if npc.NextGainHealth_NAPC > NAPC.CurTime_Tick then
			return
		end
		local health = npc:Health()
		local goodhealth = npc:GetMaxHealth() * 0.8
		if health < goodhealth then
			npc:SetHealth(math.min(health + goodhealth * 0.06, goodhealth))
			npc.NextGainHealth_NAPC = NAPC.CurTime_Tick + 1
		else
			npc.NextGainHealth_NAPC = NAPC.CurTime_Tick + 5
		end
	else
		npc.NextGainHealth_NAPC = NAPC.CurTime_Tick + 3
	end
end

function NAPC.Tick_ExtraNPCsCustomSpeed(npc)
	local NPCState = npc:GetNPCState()
	if NPCState == NPC_STATE_COMBAT and NAPC.IsAvailable(npc, npc:GetCurrentSchedule(), NPCState) then
		NAPC.Tick_MovementSpeed(npc)
	end
end

function NAPC.ActivateManhack(manhack, parentNpc)
	if not IsValid(manhack) then
		return
	end

	if manhack:GetParent() ~= NULL then
		manhack:SetParent(nil)
	end

	if manhack.RemoveSpawnFlags then
		manhack:RemoveSpawnFlags(65536)
		manhack:RemoveSpawnFlags(524288)
		manhack:RemoveSpawnFlags(131072)
	end

	manhack:SetSaveValue("m_bHeld", false)
	manhack:SetSaveValue("m_bCarriedByMetrocop", false)
	manhack:SetSaveValue("m_bNoDamagePoints", false)
	manhack:SetSaveValue("m_bPackManhack", false)

	manhack:Fire("Unpack")

	manhack:SetCollisionGroup(COLLISION_GROUP_NPC)
	manhack:SetMoveType(MOVETYPE_STEP)
	manhack:SetSolid(SOLID_VPHYSICS)
	manhack:RemoveFlags(FL_FLY)

	if manhack.CapabilitiesAdd then
		manhack:CapabilitiesAdd(CAP_MOVE_FLY + CAP_INNATE_MELEE_ATTACK1)
	end

	manhack:SetNPCState(NPC_STATE_COMBAT)
	manhack:ClearSchedule()

	local phys = manhack:GetPhysicsObject()
	if IsValid(phys) then
		phys:EnableGravity(false)
		phys:EnableMotion(true)
		phys:Wake()
		if IsValid(parentNpc) then
			local tossDir = (parentNpc:GetAimVector() + Vector(0, 0, 0.25)):GetNormalized()
			phys:SetVelocity(tossDir * 250)
		end
	end

	local enemy = IsValid(parentNpc) and parentNpc:GetEnemy() or nil
	if IsValid(enemy) and enemy:Alive() then
		manhack:SetEnemy(enemy)
		manhack:UpdateEnemyMemory(enemy, enemy:GetPos())
	end
end

function NAPC.Tick_MetropoliceManhackSafety(npc)
	if npc:GetClass() ~= "npc_metropolice" then
		return
	end

	local cur = NAPC.CurTime_Tick
	if cur < (npc.NextManhackCheck_NAPC or 0) then
		return
	end
	npc.NextManhackCheck_NAPC = cur + 0.25

	local manhack = npc:GetInternalVariable("m_hManhack")
	if not IsValid(manhack) then
		local children = npc:GetChildren()
		for i = 1, #children do
			local child = children[i]
			if IsValid(child) and child:GetClass() == "npc_manhack" then
				manhack = child
				break
			end
		end
	end

	if IsValid(manhack) then
		local isParented = (manhack:GetParent() == npc)
		local seqName = npc:GetSequenceName(npc:GetSequence()) or ""
		local act = npc:GetActivity()
		local isDeploying = (ACT_METROPOLICE_RELEASE_MANHACK and act == ACT_METROPOLICE_RELEASE_MANHACK)
			or act == ACT_SPECIAL_ATTACK1
			or string.find(seqName, "manhack") ~= nil
			or string.find(seqName, "deploy") ~= nil

		if isParented then
			npc.ManhackStuckTime_NAPC = npc.ManhackStuckTime_NAPC or cur

			if
				(cur - npc.ManhackStuckTime_NAPC > 1.2) or (not isDeploying and cur - npc.ManhackStuckTime_NAPC > 0.3)
			then
				NAPC.ActivateManhack(manhack, npc)
				npc:SetSaveValue("m_hManhack", nil)
				npc.ManhackStuckTime_NAPC = nil

				if NAPC.ConvarsBool["NAPC_Metropolice_PistolReady"] then
					npc:SetSaveValue("m_fWeaponDrawn", true)
				end
			end
		else
			if manhack:GetInternalVariable("m_bHeld") or manhack:GetInternalVariable("m_bCarriedByMetrocop") then
				NAPC.ActivateManhack(manhack, npc)
			end
			npc:SetSaveValue("m_hManhack", nil)
			npc.ManhackStuckTime_NAPC = nil
		end
	else
		npc.ManhackStuckTime_NAPC = nil
	end
end

function NAPC.FindPriorityRPGEnemy(npc)
	if not IsValid(npc) then
		return nil
	end
	local myPos = npc:GetPos()
	local curEnemy = npc:GetEnemy()

	if IsValid(curEnemy) and curEnemy:Alive() and NAPC.IsRocketLauncher(curEnemy:GetActiveWeapon()) then
		if not NAPC.IsPlayerIgnored(curEnemy) then
			return curEnemy
		end
	end

	local bestTarget = nil
	local bestDist = math.huge

	for _, ply in player.Iterator() do
		if IsValid(ply) and ply:Alive() and not NAPC.IsFriendly(npc, ply) and not NAPC.IsPlayerIgnored(ply) then
			if NAPC.IsRocketLauncher(ply:GetActiveWeapon()) then
				local dist = (ply:GetPos() - myPos):LengthSqr()
				if dist <= 6250000 and npc:Visible(ply) and dist < bestDist then
					bestDist = dist
					bestTarget = ply
				end
			end
		end
	end

	if bestTarget then
		return bestTarget
	end

	for ent, _ in pairs(NAPC.CurNPCList) do
		if IsValid(ent) and ent ~= npc and ent:IsNPC() and ent:Alive() and not NAPC.IsFriendly(npc, ent) then
			if NAPC.IsRocketLauncher(ent:GetActiveWeapon()) then
				local dist = (ent:GetPos() - myPos):LengthSqr()
				if dist <= 6250000 and npc:Visible(ent) and dist < bestDist then
					bestDist = dist
					bestTarget = ent
				end
			end
		end
	end

	return bestTarget
end

function NAPC.FindRPGAntiAirTarget(npc)
	if not IsValid(npc) then
		return nil
	end

	local myPos = npc:GetPos()
	local curEnemy = npc:GetEnemy()
	local curEnemyValid = IsValid(curEnemy) and curEnemy:Alive() and not NAPC.IsFriendly(npc, curEnemy)

	local bestTarget = nil
	local bestScore = -math.huge

	local candidates = {}
	local airClasses =
		{ "npc_gunship", "npc_helicopter", "npc_combinedropship", "npc_manhack", "npc_cscanner", "npc_clawscanner" }
	for i = 1, #airClasses do
		local found = ents.FindByClass(airClasses[i])
		for j = 1, #found do
			candidates[#candidates + 1] = found[j]
		end
	end

	for ent, _ in pairs(NAPC.CurNPCList) do
		if IsValid(ent) and ent:IsNPC() then
			candidates[#candidates + 1] = ent
		end
	end

	for i = 1, #candidates do
		local ent = candidates[i]
		if IsValid(ent) and ent ~= npc and ent:Alive() and not NAPC.IsFriendly(npc, ent) then
			local class = ent:GetClass()
			local isMajorAir = (class == "npc_gunship" or class == "npc_helicopter" or class == "npc_combinedropship")
			local isFlyer = isMajorAir or NAPC.IsFlyingOrHovering(ent)

			if isFlyer then
				local hasDamagedMates = ent.LastDamagedMatesTime_NAPC
					and (NAPC.CurTime_Tick - ent.LastDamagedMatesTime_NAPC <= 25)

				if isMajorAir or hasDamagedMates then
					local distSqr = (ent:GetPos() - myPos):LengthSqr()
					if distSqr <= 64000000 then
						local isVisible = npc:Visible(ent) or npc:VisibleVec(ent:WorldSpaceCenter())
						local score = 0

						if isMajorAir then
							score = score + 10000
							if class == "npc_gunship" then
								score = score + 2000
							elseif class == "npc_helicopter" then
								score = score + 1500
							elseif class == "npc_combinedropship" then
								score = score + 1000
							end
						elseif hasDamagedMates then
							score = score + 6000
						end

						if isVisible then
							score = score + 3000
						end

						score = score - (math.sqrt(distSqr) * 0.5)

						if curEnemyValid and ent == curEnemy then
							score = score + 1500
						end

						if score > bestScore then
							bestScore = score
							bestTarget = ent
						end
					end
				end
			end
		end
	end

	return bestTarget
end

function NAPC.CheckRocketClearance(npc, enemy, weapon)
	if not IsValid(npc) or not IsValid(enemy) then
		return false, false, "INVALID"
	end

	local attach = npc:LookupAttachment("missile")
	if not attach or attach <= 0 then
		attach = npc:LookupAttachment("anim_attachment_RH")
	end

	local startPos = nil
	if attach and attach > 0 then
		local attData = npc:GetAttachment(attach)
		if attData and attData.Pos then
			startPos = attData.Pos
		end
	end
	if not startPos then
		startPos = npc:EyePos() + (npc:GetRight() * 14) + (npc:GetUp() * 4) + (npc:GetForward() * 18)
	end

	local targetPos = enemy:BodyTarget(startPos) or enemy:WorldSpaceCenter()
	local toTarget = targetPos - startPos
	local dist = toTarget:Length()

	if dist < 230 then
		return false, true, "TOO_CLOSE"
	end

	local trHull = util.TraceHull({
		start = startPos,
		endpos = targetPos,
		mins = Vector(-10, -10, -10),
		maxs = Vector(10, 10, 10),
		mask = NAPC.ROCKET_CLEARANCE_MASK,
		filter = { npc, weapon },
	})

	local trLine = util.TraceLine({
		start = startPos,
		endpos = targetPos,
		mask = NAPC.ROCKET_CLEARANCE_MASK,
		filter = { npc, weapon },
	})

	local tr = trHull.Hit and trHull or trLine

	if not tr.Hit or tr.Fraction >= 0.95 or tr.Entity == enemy then
		return true, false, "CLEAR"
	end

	local hitEnt = tr.Entity
	if IsValid(hitEnt) and NAPC.IsFriendly(npc, hitEnt) then
		return false, true, "FRIENDLY_IN_WAY"
	end

	local distFromMuzzle = (tr.HitPos - startPos):Length()
	if distFromMuzzle < 200 then
		return false, true, "OBSTRUCTION_CLOSE"
	end

	local distToEnemy = (tr.HitPos - targetPos):Length()
	if distToEnemy > 175 then
		return false, true, "OBSTRUCTED_BY_FENCE_OR_PROP"
	end

	return true, false, "SPLASH_CLEAR"
end

function NAPC.FindRPGShootingPos(npc, enemy, weapon)
	if not IsValid(npc) or not IsValid(enemy) then
		return nil
	end

	local npcPos = npc:GetPos()
	local toEnemy = (enemy:GetPos() - npcPos):GetNormalized()

	local candidatePositions = NAPC.GetReachableNavCandidates(npc, 650, 180, 6)
	if not candidatePositions or #candidatePositions == 0 then
		candidatePositions = {}
		local right = toEnemy:Angle():Right()
		local sampleOffsets = {
			right * 220,
			right * -220,
			right * 380,
			right * -380,
			-toEnemy * 260,
			-toEnemy * 420,
		}
		for _, offset in ipairs(sampleOffsets) do
			candidatePositions[#candidatePositions + 1] = npcPos + offset
		end
	end

	for _, candidate in ipairs(candidatePositions) do
		if NAPC.IsDestinationValid(npc, candidate) then
			NAPC.trData.start = candidate + Vector(0, 0, 64)
			NAPC.trData.endpos = candidate - Vector(0, 0, 200)
			NAPC.trData.mask = MASK_SOLID_BRUSHONLY
			NAPC.trData.filter = nil
			util.TraceLine(NAPC.trData)

			if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
				local groundPos = NAPC.trRes.HitPos
				if not NAPC.IsPositionInWater(groundPos) then
					local testMuzzle = groundPos + Vector(0, 0, 58) + (toEnemy * 18)
					local targetPos = enemy:BodyTarget(testMuzzle) or enemy:WorldSpaceCenter()

					local clearTr = util.TraceHull({
						start = testMuzzle,
						endpos = targetPos,
						mins = Vector(-10, -10, -10),
						maxs = Vector(10, 10, 10),
						mask = NAPC.ROCKET_CLEARANCE_MASK,
						filter = { npc, weapon },
					})

					if
						not clearTr.Hit
						or clearTr.Fraction >= 0.92
						or clearTr.Entity == enemy
						or (clearTr.HitPos - targetPos):Length() < 160
					then
						NAPC.hullTrData.start = groundPos + Vector(0, 0, 5)
						NAPC.hullTrData.endpos = groundPos + Vector(0, 0, 60)
						NAPC.hullTrData.filter = nil
						util.TraceHull(NAPC.hullTrData)

						if not NAPC.hullTrRes.Hit then
							return groundPos
						end
					end
				end
			end
		end
	end

	return nil
end

function NAPC.HandleRPGFiring(npc, enemy, weapon, curSched)
	if not IsValid(enemy) or not enemy:Alive() then
		return false
	end

	local isClear, isObstructed, reason = NAPC.CheckRocketClearance(npc, enemy, weapon)
	local isExecutingMovement = NAPC.Tables.BannedSchedule_List3[curSched]

	if not isClear then
		weapon:SetNextPrimaryFire(NAPC.CurTime_Tick + 0.6)
		if weapon.SetNextSecondaryFire then
			weapon:SetNextSecondaryFire(NAPC.CurTime_Tick + 0.6)
		end

		npc:ClearCondition(COND.CAN_RANGE_ATTACK1)
		npc:ClearCondition(COND.CAN_RANGE_ATTACK2)

		if
			curSched == SCHED_RANGE_ATTACK1
			or curSched == SCHED_RANGE_ATTACK2
			or curSched == SCHED_SPECIAL_ATTACK1
			or curSched == SCHED_SPECIAL_ATTACK2
		then
			npc:ClearSchedule()
		end

		if not isExecutingMovement and curSched ~= SCHED_ESTABLISH_LINE_OF_FIRE then
			if reason == "TOO_CLOSE" then
				NAPC.Tick_MovementSpeed(npc, 1.45)
				npc:SetSchedule(SCHED_RUN_FROM_ENEMY_FALLBACK)
				return true
			end

			if NAPC.CurTime_Tick > (npc.NextRPGReposition_NAPC or 0) then
				npc.NextRPGReposition_NAPC = NAPC.CurTime_Tick + math.Rand(1.0, 1.8)
				local clearPos = NAPC.FindRPGShootingPos(npc, enemy, weapon)

				if clearPos and NAPC.IsDestinationValid(npc, clearPos) then
					npc.ForcedGoPos_NAPC = clearPos
					npc.ForcedGoTimeout_NAPC = NAPC.CurTime_Tick + 4.5
					npc.ForcedGoStartTime_NAPC = NAPC.CurTime_Tick
					npc.ForcedGoLastPos_NAPC = npc:GetPos()
					npc.ForcedGoStuckTime_NAPC = NAPC.CurTime_Tick
					npc:SetSaveValue("m_vecLastPosition", clearPos)
					npc:SetSchedule(SCHED_FORCED_GO_RUN)
					NAPC.Tick_MovementSpeed(npc, 1.45)
				else
					npc:SetSchedule(SCHED_ESTABLISH_LINE_OF_FIRE)
					NAPC.Tick_MovementSpeed(npc, 1.35)
				end
			end
		end
		return true
	else
		if
			not isExecutingMovement
			and not NAPC.Tables.ActiveCombatSchedules[curSched]
			and curSched ~= SCHED_RANGE_ATTACK1
			and curSched ~= SCHED_COMBAT_FACE
		then
			if npc:Visible(enemy) and NAPC.CurTime_Tick > (npc.NextRPGOpenFire_NAPC or 0) then
				npc.NextRPGOpenFire_NAPC = NAPC.CurTime_Tick + math.Rand(0.5, 1.0)
				npc:SetSchedule(SCHED_RANGE_ATTACK1)
			end
		end
		return true
	end
end

function NAPC.CECA_InformationGathering(npc, enemy, weapon)
	local info = {}
	local npcPos = npc:GetPos()
	local enemyPos = enemy:GetPos()
	local maxHp = math.max(1, npc:GetMaxHealth())

	info.healthRatio = npc:Health() / maxHp
	info.ammoLack = npc:HasCondition(COND.LOW_PRIMARY_AMMO) or npc:HasCondition(COND.NO_PRIMARY_AMMO)
	info.enemyDistSqr = (enemyPos - npcPos):LengthSqr()
	info.enemyDist = math.sqrt(info.enemyDistSqr)
	info.seeEnemy = npc:Visible(enemy)
	info.canAttack = npc:HasCondition(COND.CAN_RANGE_ATTACK1)
		or npc:HasCondition(COND.CAN_RANGE_ATTACK2)
		or npc:HasCondition(COND.CAN_MELEE_ATTACK1)
		or (info.seeEnemy and info.enemyDist < 450)
	info.enemyHasRPG = NAPC.IsRocketLauncher(enemy:GetActiveWeapon())

	info.isZombieOrHeadcrab = NAPC.IsZombieOrHeadcrab(enemy)
	info.zombieTooClose = info.isZombieOrHeadcrab and (info.enemyDist < 550)

	local enemyMaxHp = enemy.GetMaxHealth and enemy:GetMaxHealth() or 100
	info.enemyHealthRatio = enemy:Health() / math.max(1, enemyMaxHp)
	info.enemyCritical = (info.enemyHealthRatio <= 0.25) or (enemy:Health() <= 25)

	info.enemyElevationDelta = enemyPos.z - npcPos.z
	info.enemyHasHighGround = (info.enemyElevationDelta > 60)
	info.hasHighGroundAdvantage = (info.enemyElevationDelta < -60)
	info.enemyIsFlyer = NAPC.IsFlyingOrHovering(enemy)

	local timeSinceFlyerDmg = NAPC.CurTime_Tick - (npc.LastFlyerDamageTime_NAPC or 0)
	info.flyerDamagedUs = (info.enemyIsFlyer or IsValid(npc.LastFlyerAttacker_NAPC)) and (timeSinceFlyerDmg < 12.0)

	NAPC.OODA_UpdateEnemyProfile(npc, enemy, info)

	local timeSinceDmg = NAPC.CurTime_Tick - (npc.LastDamageTime_NAPC or 0)
	if timeSinceDmg > 3.0 then
		npc.DamageBuffer_NAPC = 0
	end
	info.rapidDmgTaken = npc.DamageBuffer_NAPC or 0
	info.isTakingHeavyDPS = (info.rapidDmgTaken > maxHp * 0.22)

	info.enemyIsPlayer = enemy:IsPlayer()
	info.enemyAimingAtMe = false
	info.enemyTurnedAway = false
	info.enemyReloading = false

	if not (info.enemyIsPlayer and NAPC.IsPlayerIgnored(enemy)) then
		local enemyAimDir = enemy:GetAimVector()
		local toMeFromEnemy = (npc:WorldSpaceCenter() - enemy:EyePos()):GetNormalized()
		local aimDot = enemyAimDir:Dot(toMeFromEnemy)

		if aimDot > 0.85 then
			info.enemyAimingAtMe = true
		elseif aimDot < 0.25 then
			info.enemyTurnedAway = true
		end

		if info.enemyIsPlayer then
			local plyWep = enemy:GetActiveWeapon()
			if IsValid(plyWep) and plyWep.Clip1 and plyWep:Clip1() == 0 then
				info.enemyReloading = true
			end
		elseif enemy.HasCondition then
			info.enemyReloading = enemy:HasCondition(COND.LOW_PRIMARY_AMMO) or enemy:HasCondition(COND.NO_PRIMARY_AMMO)
		end
	end

	info.allThreats = {}
	info.threatsAimingAtMe = 0
	info.incomingThreatCenter = Vector(0, 0, 0)
	info.enemyFirepower = NAPC.GetFirepower(enemy)

	info.squadMembers = {}
	info.squadTargetingSame = 0
	info.routedSquadMates = 0
	info.healthiestMate = nil
	info.nearestMedic = nil
	local closestMedicDistSqr = math.huge
	local highestMateHpRatio = 0.65

	local groupPosSum = Vector(npcPos.x, npcPos.y, npcPos.z)
	info.friendlyFirepower = NAPC.GetFirepower(npc)
	local checkSquad = NAPC.ConvarsBool["NAPC_OODA_SquadTactics"]
	local myWSC = npc:WorldSpaceCenter()

	for _, ply in player.Iterator() do
		if IsValid(ply) and ply:Alive() and not NAPC.IsPlayerIgnored(ply) then
			local dSqr = (ply:GetPos() - npcPos):LengthSqr()
			if NAPC.IsFriendly(npc, ply) then
				if dSqr <= 4194304 then
					info.friendlyFirepower = info.friendlyFirepower + NAPC.GetFirepower(ply)
				end
			elseif dSqr <= 3240000 then
				table.insert(info.allThreats, ply)
				info.incomingThreatCenter = info.incomingThreatCenter + ply:GetPos()
				if ply ~= enemy then
					info.enemyFirepower = info.enemyFirepower + NAPC.GetFirepower(ply)
				end
				local toMe = (myWSC - ply:EyePos()):GetNormalized()
				if ply:GetAimVector():Dot(toMe) > 0.85 then
					info.threatsAimingAtMe = info.threatsAimingAtMe + 1
				end
			end
		end
	end

	for mate, _ in pairs(NAPC.CurNPCList) do
		if IsValid(mate) and mate ~= npc and mate:IsNPC() and mate:Alive() then
			local matePos = mate:GetPos()
			local dSqr = (matePos - npcPos):LengthSqr()

			if NAPC.IsFriendly(npc, mate) then
				if checkSquad and dSqr <= 4194304 then
					table.insert(info.squadMembers, mate)
					groupPosSum = groupPosSum + matePos
					info.friendlyFirepower = info.friendlyFirepower + NAPC.GetFirepower(mate)

					if mate:GetEnemy() == enemy then
						info.squadTargetingSame = info.squadTargetingSame + 1
					end

					if
						mate.CECA
						and (mate.CECA.LastDecision == "INDIVIDUAL_RETREAT" or mate.CECA.LastDecision == "GROUP_ROUT")
					then
						info.routedSquadMates = info.routedSquadMates + 1
					end

					local mateRatio = mate:Health() / math.max(1, mate:GetMaxHealth())
					if mateRatio > highestMateHpRatio then
						highestMateHpRatio = mateRatio
						info.healthiestMate = mate
					end

					if
						mate:GetClass() == "npc_citizen"
						and mate:HasSpawnFlags(SF_CITIZEN_MEDIC)
						and mateRatio > 0.4
					then
						if dSqr < closestMedicDistSqr then
							closestMedicDistSqr = dSqr
							info.nearestMedic = mate
						end
					end
				end
			else
				if dSqr <= 3240000 then
					table.insert(info.allThreats, mate)
					info.incomingThreatCenter = info.incomingThreatCenter + matePos
					if mate ~= enemy then
						info.enemyFirepower = info.enemyFirepower + NAPC.GetFirepower(mate)
					end
					if mate:GetEnemy() == npc then
						info.threatsAimingAtMe = info.threatsAimingAtMe + 1
					end
				end
			end
		end
	end

	local threatCount = #info.allThreats
	info.incomingThreatCenter = (threatCount > 0) and (info.incomingThreatCenter / threatCount) or enemyPos

	info.isPincered = false
	if threatCount >= 2 then
		local threatDirs = {}
		for i = 1, math.min(threatCount, 4) do
			local th = info.allThreats[i]
			if IsValid(th) then
				table.insert(threatDirs, (th:GetPos() - npcPos):GetNormalized())
			end
		end
		for i = 1, #threatDirs do
			for j = i + 1, #threatDirs do
				if threatDirs[i]:Dot(threatDirs[j]) < -0.15 then
					info.isPincered = true
					break
				end
			end
			if info.isPincered then
				break
			end
		end
	end

	info.squadCount = #info.squadMembers
	info.groupCenter = groupPosSum / (info.squadCount + 1)

	local mySquadID = NAPC.GetSquadID(npc)
	info.theaterSquadData = mySquadID and NAPC.TheaterSquads[mySquadID] or nil

	info.targetCanShootBack = NAPC.CanShootBack(enemy) and not info.isZombieOrHeadcrab
	info.isUnderFire = (timeSinceDmg < 1.5) or (info.threatsAimingAtMe >= 1 and info.seeEnemy)
	info.inCrossfire = info.isPincered or (info.threatsAimingAtMe >= 2)
	info.recentCasualties = NAPC.GetRecentCasualtiesNear(npc, npcPos, 1800, 12)
	info.isNearLethalZone = NAPC.IsPosNearLethalDanger(npcPos, 64)

	local ceca = npc.CECA or npc.OODA
	local stayDuration = NAPC.CurTime_Tick - ((ceca and ceca.PosStayTime) or NAPC.CurTime_Tick)
	info.stayDuration = stayDuration

	local isMatchingElevation = math.abs(info.enemyElevationDelta) <= 50
	local isStaleCombat = stayDuration > 2.2 and ((ceca and ceca.ActiveDecisionDmgDealt or 0) < 20)
	info.isElevationStalemate = isMatchingElevation
		and (info.enemyDist >= 400)
		and (
			isStaleCombat
			or (ceca and ceca.LastDecision == "HIGH_GROUND_REINFORCE")
			or (ceca and ceca.LastDecision == "HOLD_AND_ATTACK")
		)

	local wepClass = IsValid(weapon) and weapon:GetClass() or ""
	local isWepShortRange = (wepClass == "weapon_shotgun" or wepClass == "weapon_smg1" or wepClass == "weapon_pistol")
		and (info.enemyDist > 550)
	local isFarIneffective = (info.enemyDist > 750 and stayDuration > 2.5)
	info.isLongRangeStagnant = (
		info.enemyDist > 650
		and stayDuration > 2.8
		and ((ceca and ceca.ActiveDecisionDmgDealt or 0) < 15)
	) or ((isFarIneffective or isWepShortRange) and stayDuration > 3.2)

	return info
end

function NAPC.CECA_FormulateConceptualModel(npc, info, enemy)
	local ceca = npc.CECA
	local concept = ceca.ConceptualModel or {}
	local powerRatio = info.friendlyFirepower / math.max(0.1, info.enemyFirepower)
	local isIsolated = (info.squadCount == 0)
	local isOutgunned = (powerRatio < 0.85)

	local enemyCritical = info.enemyCritical or (info.enemyHealthRatio and info.enemyHealthRatio <= 0.25)
	local enemyPowerless = (powerRatio >= 2.2 and (info.enemyHealthRatio or 1.0) <= 0.5)
		or (info.enemyReloading and powerRatio >= 1.4)
	local pushSurvivable = (info.healthRatio >= 0.45)
		and not info.isTakingHeavyDPS
		and not info.inCrossfire
		and not info.isNearLethalZone
		and not info.enemyHasRPG
		and not info.isZombieOrHeadcrab

	if info.isZombieOrHeadcrab then
		if info.enemyDist < 550 or info.zombieTooClose then
			concept.DesiredState = "MELEE_STANDOFF_KITING"
			concept.IdealRange = 650
			concept.RequiresStandoff = true
			concept.RequiresHighGround = false
		else
			concept.DesiredState = "RANGED_FIRE_SUPERIORITY_ZOMBIE"
			concept.IdealRange = 600
			concept.RequiresStandoff = false
		end
	elseif (enemyCritical or enemyPowerless) and pushSurvivable then
		concept.DesiredState = "OVERWHELM_OVERPOWERED_ENEMY"
		concept.RequiresOverheadCover = false
		concept.RequiresHighGround = false
		concept.IdealRange = 220
	elseif
		info.seeEnemy
		and info.enemyDist < 450
		and not (info.healthRatio < 0.38 or info.isTakingHeavyDPS or info.ammoLack)
	then
		concept.DesiredState = "FIRE_SUPERIORITY"
		concept.RequiresOverheadCover = false
		concept.RequiresHighGround = false
		concept.RequiresFlank = false
		concept.IdealRange = 300
	elseif info.isElevationStalemate then
		concept.DesiredState = "BREAK_ELEVATION_STALEMATE"
		concept.RequiresHighGround = false
		concept.RequiresFlank = true
	elseif info.isLongRangeStagnant then
		concept.DesiredState = "BREAK_LONG_RANGE_STAGNATION"
		concept.RequiresHighGround = false
		concept.IdealRange = 400
	elseif info.flyerDamagedUs then
		concept.DesiredState = "OVERHEAD_SHELTER_ENGAGEMENT"
		concept.RequiresOverheadCover = true
		concept.RequiresHighGround = false
	elseif info.inCrossfire or info.isNearLethalZone then
		concept.DesiredState = "EXTRICATE_CROSSFIRE"
		concept.RequiresCrossfireBreak = true
	elseif info.healthRatio < 0.38 or info.isTakingHeavyDPS or (isIsolated and isOutgunned) then
		concept.DesiredState = "PRESERVE_AND_REARM"
		concept.RequiresCover = true
	elseif info.enemyHasHighGround then
		concept.DesiredState = "COUNTER_DOMINATE_HIGH_GROUND"
		concept.RequiresHighGround = true
	elseif not info.hasHighGroundAdvantage and info.enemyDist > 600 then
		concept.DesiredState = "SEIZE_HIGH_GROUND_VANTAGE"
		concept.RequiresHighGround = true
	elseif not isIsolated and info.theaterSquadData and info.theaterSquadData.role == "SQUAD_ROLE_SUPPRESS" then
		concept.DesiredState = "SUPPRESSIVE_LOCK"
	elseif
		not isIsolated
		and (info.theaterSquadData and info.theaterSquadData.role == "SQUAD_ROLE_FLANK" or powerRatio > 1.2)
	then
		concept.DesiredState = "ENFILADE_CROSSFIRE"
	else
		concept.DesiredState = "FIRE_SUPERIORITY"
	end

	ceca.ConceptualModel = concept
	return concept
end

function NAPC.CECA_Critique(npc, concept, info)
	local needs = {}

	if concept.RequiresStandoff or info.zombieTooClose or concept.DesiredState == "MELEE_STANDOFF_KITING" then
		needs["NEED_KITE_POS"] = true
	end

	if
		concept.DesiredState == "OVERWHELM_OVERPOWERED_ENEMY"
		or info.enemyCritical
		or concept.DesiredState == "BREAK_LONG_RANGE_STAGNATION"
	then
		needs["NEED_ADVANCE_COVER"] = true
	end

	if concept.DesiredState == "BREAK_ELEVATION_STALEMATE" or concept.RequiresFlank then
		needs["NEED_ENFILADE_POS"] = true
		needs["NEED_ADVANCE_COVER"] = true
	end

	if concept.RequiresOverheadCover or info.flyerDamagedUs then
		needs["NEED_SHELTER_POS"] = true
	end

	if concept.RequiresHighGround or info.enemyHasHighGround or concept.DesiredState == "SEIZE_HIGH_GROUND_VANTAGE" then
		needs["NEED_COUNTER_HIGH_GROUND"] = true
		needs["NEED_HIGH_GROUND"] = true
		needs["NEED_LURE_RETREAT"] = true
	end

	if concept.DesiredState == "ENFILADE_CROSSFIRE" or info.enemyTurnedAway or info.squadTargetingSame >= 1 then
		needs["NEED_ENFILADE_POS"] = true
	end

	if concept.DesiredState == "PRESERVE_AND_REARM" and info.nearestMedic then
		needs["NEED_MEDIC_ROUTE"] = true
	end

	if info.targetCanShootBack then
		needs["NEED_COVER_SHOOT_POS"] = true
		needs["NEED_ADVANCE_COVER"] = true
	end

	return needs
end

function NAPC.CECA_Explore(npc, enemy, info, infoNeeds)
	local results = {}

	if infoNeeds["NEED_KITE_POS"] or info.isZombieOrHeadcrab then
		results.kiteRetreatPos = NAPC.FindKiteRetreatPos(npc, enemy, info.allThreats, 450, 850)
	end

	if infoNeeds["NEED_COVER_SHOOT_POS"] or infoNeeds["NEED_ADVANCE_COVER"] then
		local coverPos = NAPC.FindCoverShootingPos(npc, enemy, info.allThreats, 250, 1200)
		results.bestCoverShootPos = coverPos
		if coverPos and (enemy:GetPos() - coverPos):Length() <= 600 then
			results.advanceCoverPos = coverPos
		elseif infoNeeds["NEED_ADVANCE_COVER"] then
			results.advanceCoverPos = NAPC.FindCoverShootingPos(npc, enemy, info.allThreats, 220, 520)
		end
	end

	if infoNeeds["NEED_SHELTER_POS"] then
		results.shelterCoverPos = NAPC.FindShelterCoverPos(npc, enemy, info.allThreats)
	end
	if infoNeeds["NEED_COUNTER_HIGH_GROUND"] or info.enemyHasHighGround then
		results.counterHighGroundPos = NAPC.FindCounterHighGroundPos(npc, enemy, info.allThreats)
	end
	if infoNeeds["NEED_HIGH_GROUND"] or not info.hasHighGroundAdvantage then
		results.highGroundPos = NAPC.FindCounterHighGroundPos(npc, enemy, info.allThreats)
	end
	if infoNeeds["NEED_LURE_RETREAT"] then
		results.lureRetreatPos = NAPC.FindLureRetreatPos(npc, enemy, info.allThreats)
	end
	if infoNeeds["NEED_ENFILADE_POS"] then
		results.enfiladeAdvantagePos = NAPC.FindEnfiladeVantagePos(npc, enemy, info.allThreats)
	end
	if infoNeeds["NEED_MEDIC_ROUTE"] and info.nearestMedic then
		results.medicRetreatPos = NAPC.FindMedicRetreatPos(npc, info.nearestMedic, enemy)
	end

	return results
end

function NAPC.CECA_UpdateSituationModel(npc, info, exploreResults)
	local sit = table.Copy(info)
	for k, v in pairs(exploreResults) do
		sit[k] = v
	end

	local ceca = npc.CECA or npc.OODA
	sit.tacticalScores = (ceca and ceca.TacticalScores) or {}
	sit.enemyVulnerable = (sit.enemyReloading or sit.enemyTurnedAway)
	sit.hasCoveringFire = sit.theaterSquadData and sit.theaterSquadData.hasCoveringFire or false
	sit.isRPGThreat = sit.enemyHasRPG or false
	sit.caughtInCrossfire = sit.inCrossfire
		or sit.isNearLethalZone
		or sit.isPincered
		or (
			sit.isUnderFire
			and not sit.bestCoverShootPos
			and (sit.isTakingHeavyDPS or (sit.threatsAimingAtMe and sit.threatsAimingAtMe >= 1))
		)

	sit.isZombieOrHeadcrab = info.isZombieOrHeadcrab or false
	sit.zombieTooClose = info.zombieTooClose or false
	sit.isElevationStalemate = info.isElevationStalemate or false
	sit.isLongRangeStagnant = info.isLongRangeStagnant or false

	local enemy = npc:GetEnemy()
	local prof = (IsValid(enemy) and ceca and ceca.EnemyProfile) and ceca.EnemyProfile[enemy:EntIndex()] or nil
	sit.enemyIsRusher = prof and prof.isRusher or false

	local failedFlanks = (ceca and ceca.FailedFlankAttempts) or 0
	local flankScore = sit.tacticalScores["FLANK_MANEUVER"] or 0
	sit.isIsolated = ((sit.squadCount or 0) == 0)
	sit.isOutgunned = ((sit.enemyFirepower or 1) > (sit.friendlyFirepower or 1) * 1.3)

	local class = npc:GetClass()
	local isCombine = (class == "npc_combine_s")
	local isMetro = (class == "npc_metropolice")
	local isCitizen = (class == "npc_citizen")

	local threat = 1
	if sit.enemyAimingAtMe and sit.seeEnemy then
		threat = threat + 2
	end
	if sit.enemyDistSqr < 90000 then
		threat = threat + 1
	end
	if sit.healthRatio < 0.35 or sit.isTakingHeavyDPS then
		threat = threat + 2
	end
	if sit.ammoLack then
		threat = threat + 1
	end
	if sit.inCrossfire or sit.isNearLethalZone or sit.isPincered then
		threat = threat + 3
	end
	if sit.enemyHasHighGround and sit.seeEnemy and sit.isUnderFire then
		threat = threat + 1
	end
	if sit.zombieTooClose then
		threat = math.max(threat, 3)
	end

	sit.threatLevel = math.Clamp(threat, 1, 4)

	local groupMorale = 100
	local powerRatio = (sit.friendlyFirepower or 1) / math.max(0.1, sit.enemyFirepower or 1)
	if powerRatio < 0.5 then
		groupMorale = groupMorale - (isCitizen and 42 or (isMetro and 30 or 0))
	elseif powerRatio > 1.5 then
		groupMorale = groupMorale + 20
	end
	groupMorale = groupMorale - ((sit.recentCasualties or 0) * (isCitizen and 38 or 28))
	sit.groupMorale = isCombine and 100 or math.Clamp(groupMorale, 0, 100)

	sit.groupBroken = not isCombine
		and (sit.groupMorale <= (isCitizen and 50 or 38))
		and ((sit.squadCount or 0) > 0 or (sit.recentCasualties or 0) >= 2)

	local enemyCritical = sit.enemyCritical or (sit.enemyHealthRatio and sit.enemyHealthRatio <= 0.25)
	local enemyPowerless = (powerRatio >= 2.2 and (sit.enemyHealthRatio or 1.0) <= 0.5)
		or (sit.enemyReloading and powerRatio >= 1.4)
	local pushSurvivable = (sit.healthRatio >= 0.45)
		and not sit.isTakingHeavyDPS
		and not sit.caughtInCrossfire
		and not sit.isRPGThreat
		and not ((sit.threatsAimingAtMe or 0) >= 2)
		and not sit.isZombieOrHeadcrab

	sit.enemyOverpowered = (enemyCritical or enemyPowerless) and pushSurvivable
	sit.shouldPreserveSelf = (
		(sit.healthRatio < (isCitizen and 0.48 or 0.35))
		or sit.isTakingHeavyDPS
		or (sit.isIsolated and sit.isOutgunned)
		or sit.zombieTooClose
	) and not sit.enemyOverpowered

	sit.canFlank = (failedFlanks < 3)
		and (flankScore > -2.5)
		and not sit.isIsolated
		and (
			sit.enemyDistSqr > 40000
			and sit.enemyDistSqr < 1960000
			and not sit.shouldPreserveSelf
			and not sit.caughtInCrossfire
		)

	if ceca then
		ceca.SituationModel = sit
	end

	return sit
end

function NAPC.CECA_Compare(npc, concept, sit)
	local ceca = npc.CECA or npc.OODA
	local candidateMoves = {}
	local isIsolated = sit.isIsolated or ((sit.squadCount or 0) == 0)
	local isOutgunned = sit.isOutgunned or false

	if sit.isZombieOrHeadcrab then
		if sit.enemyDist < 550 or sit.zombieTooClose then
			table.insert(candidateMoves, "KITE_RETREAT")
			table.insert(candidateMoves, "BAIT_RETREAT")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
			if sit.enemyDist >= 350 and sit.seeEnemy and not sit.ammoLack then
				table.insert(candidateMoves, "HOLD_AND_ATTACK")
			end
		else
			table.insert(candidateMoves, "HOLD_AND_ATTACK")
			table.insert(candidateMoves, "SUPPRESSIVE_FIRE")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
			table.insert(candidateMoves, "KITE_RETREAT")
		end
	elseif
		not sit.isZombieOrHeadcrab
		and sit.seeEnemy
		and sit.enemyDist < 450
		and not sit.ammoLack
		and not sit.shouldPreserveSelf
	then
		table.insert(candidateMoves, "HOLD_AND_ATTACK")
		table.insert(candidateMoves, "SUPPRESSIVE_FIRE")
	elseif sit.enemyOverpowered then
		if sit.advanceCoverPos then
			table.insert(candidateMoves, "SQUAD_BOUNDING_ADVANCE")
		end
		table.insert(candidateMoves, "SQUAD_ADVANCE_CLOSER")
		table.insert(candidateMoves, "HOLD_AND_ATTACK")
	elseif sit.isElevationStalemate or sit.isLongRangeStagnant then
		if sit.canFlank then
			table.insert(candidateMoves, "SQUAD_COORDINATED_FLANK")
			table.insert(candidateMoves, "FLANK_MANEUVER")
		end
		if sit.enfiladeAdvantagePos then
			table.insert(candidateMoves, "EXPLOIT_ENFILADE")
		end
		if sit.advanceCoverPos or not isOutgunned then
			table.insert(candidateMoves, "SQUAD_BOUNDING_ADVANCE")
			table.insert(candidateMoves, "SQUAD_ADVANCE_CLOSER")
		end
		table.insert(candidateMoves, "REPOSITION_LOF")
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
	elseif sit.shouldPreserveSelf or sit.ammoLack or (isIsolated and isOutgunned) then
		if sit.seeEnemy and sit.enemyDist < 300 and not sit.ammoLack then
			table.insert(candidateMoves, "HOLD_AND_ATTACK")
		end
		if sit.medicRetreatPos then
			table.insert(candidateMoves, "MEDIC_RETREAT")
		end
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		table.insert(candidateMoves, "INDIVIDUAL_RETREAT")
		if sit.lureRetreatPos then
			table.insert(candidateMoves, "BAIT_RETREAT")
		end
	elseif sit.flyerDamagedUs then
		if sit.shelterCoverPos then
			table.insert(candidateMoves, "SHELTERED_WARFARE")
		end
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		table.insert(candidateMoves, "BREAK_CROSSFIRE")
		table.insert(candidateMoves, "INDIVIDUAL_RETREAT")
	elseif sit.inCrossfire or sit.isNearLethalZone then
		table.insert(candidateMoves, "BREAK_CROSSFIRE")
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		table.insert(candidateMoves, "INDIVIDUAL_RETREAT")
	elseif sit.groupBroken then
		table.insert(candidateMoves, "GROUP_ROUT")
		table.insert(candidateMoves, "INDIVIDUAL_RETREAT")
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
	elseif sit.enemyHasRPG then
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		table.insert(candidateMoves, "BREAK_CROSSFIRE")
		if not isIsolated and sit.canFlank then
			table.insert(candidateMoves, "SQUAD_COORDINATED_FLANK")
		end
	elseif sit.enemyHasHighGround then
		if sit.counterHighGroundPos then
			table.insert(candidateMoves, "COUNTER_HIGH_GROUND")
		end
		if sit.highGroundPos then
			table.insert(candidateMoves, "HIGH_GROUND_REINFORCE")
		end
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		if sit.canFlank and not isIsolated then
			table.insert(candidateMoves, "FLANK_MANEUVER")
		end
		if not sit.isUnderFire then
			table.insert(candidateMoves, "SUPPRESSIVE_FIRE")
			table.insert(candidateMoves, "HOLD_AND_ATTACK")
		end
	elseif not sit.hasHighGroundAdvantage and sit.highGroundPos and sit.enemyDist > 500 then
		table.insert(candidateMoves, "HIGH_GROUND_REINFORCE")
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		table.insert(candidateMoves, "HOLD_AND_ATTACK")
	elseif sit.enfiladeAdvantagePos and not sit.enemyIsRusher and not isIsolated then
		table.insert(candidateMoves, "EXPLOIT_ENFILADE")
		table.insert(candidateMoves, "HOLD_AND_ATTACK")
		table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
	else
		local squadRole = (sit.theaterSquadData and sit.theaterSquadData.role) or "AUTONOMOUS"
		if squadRole == "SQUAD_ROLE_SUPPRESS" then
			table.insert(candidateMoves, "SUPPRESSIVE_FIRE")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
			if sit.highGroundPos and sit.enemyDist > 500 then
				table.insert(candidateMoves, "HIGH_GROUND_REINFORCE")
			end
		elseif squadRole == "SQUAD_ROLE_ASSAULT" and not isIsolated and not isOutgunned and sit.advanceCoverPos then
			table.insert(candidateMoves, "SQUAD_BOUNDING_ADVANCE")
			table.insert(candidateMoves, "SQUAD_ADVANCE_CLOSER")
			table.insert(candidateMoves, "HOLD_AND_ATTACK")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		elseif squadRole == "SQUAD_ROLE_FLANK" and not isIsolated then
			table.insert(candidateMoves, "SQUAD_COORDINATED_FLANK")
			table.insert(candidateMoves, "FLANK_MANEUVER")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
		else
			table.insert(candidateMoves, "HOLD_AND_ATTACK")
			table.insert(candidateMoves, "TAKE_COVER_SHOOTING_POS")
			if sit.highGroundPos and sit.enemyDist > 500 then
				table.insert(candidateMoves, "HIGH_GROUND_REINFORCE")
			end
			if sit.canFlank and not isIsolated then
				table.insert(candidateMoves, "FLANK_MANEUVER")
			end
			if not isIsolated and not isOutgunned and sit.advanceCoverPos then
				table.insert(candidateMoves, "SQUAD_BOUNDING_ADVANCE")
			end
			if not sit.seeEnemy then
				table.insert(candidateMoves, "REPOSITION_LOF")
			end
		end
	end

	if #candidateMoves == 0 then
		table.insert(candidateMoves, "HOLD_AND_ATTACK")
	end

	return NAPC.OODA_ChessEngine_Evaluate(npc, sit, sit, candidateMoves)
end

function NAPC.CECA_Adapt(npc, decision, sit, NPCClass, weapon)
	local curSched = npc:GetCurrentSchedule()
	local ceca = npc.CECA or npc.OODA
	local enemy = npc:GetEnemy()
	local isEnRoute = (npc.ForcedGoPos_NAPC ~= nil)
	local isMoving = NAPC.Tables.BannedSchedule_List3[curSched] or isEnRoute
	local isCitizen = (NPCClass == "npc_citizen")

	if
		sit.enemyHasRPG
		and NPCClass == "npc_combine_s"
		and NAPC.ConvarsBool["NAPC_Combine_Cloaking"]
		and sit.seeEnemy
	then
		NAPC.UseCloaking(npc)
	end

	if decision == "HOLD_AND_ATTACK" then
		if npc.ForcedGoPos_NAPC then
			npc.ForcedGoPos_NAPC = nil
			npc.ForcedGoTimeout_NAPC = nil
			npc.ForcedGoStartTime_NAPC = nil
			npc.ForcedGoLastPos_NAPC = nil
			npc.ForcedGoLastMoveCheck_NAPC = nil
			npc.ForcedGoStuckTime_NAPC = nil
			npc.ForcedGoMinDistSqr_NAPC = nil
			npc.ForcedGoJumpAttempted_NAPC = nil
			if isMoving then
				npc:StopMoving()
				npc:ClearSchedule()
			end
		end

		NAPC.Tick_MovementSpeed(npc, 1.0)
		if
			NPCClass == "npc_combine_s"
			and NAPC.ConvarsBool["NPC_SHOOT_MORE_FREQUENTLY"]
			and not npc.IsShotgunner_NAPC
		then
			npc:SetSaveValue("m_nShots", 10)
		end
		if sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450) then
			if curSched ~= SCHED_RANGE_ATTACK1 and curSched ~= SCHED_MELEE_ATTACK1 then
				npc:SetSchedule(
					(npc:HasCondition(COND.CAN_MELEE_ATTACK1) and sit.enemyDist < 80 and not sit.isZombieOrHeadcrab)
							and SCHED_MELEE_ATTACK1
						or SCHED_RANGE_ATTACK1
				)
			end
		elseif
			not NAPC.Tables.ActiveCombatSchedules[curSched]
			and curSched ~= SCHED_ESTABLISH_LINE_OF_FIRE
			and curSched ~= SCHED_COMBAT_FACE
		then
			if sit.seeEnemy then
				npc:SetSchedule(sit.enemyDist < 450 and SCHED_RANGE_ATTACK1 or SCHED_COMBAT_FACE)
			else
				npc:SetSchedule(SCHED_ESTABLISH_LINE_OF_FIRE)
			end
		end
	elseif decision == "SUPPRESSIVE_FIRE" then
		if npc.ForcedGoPos_NAPC then
			npc.ForcedGoPos_NAPC = nil
			npc.ForcedGoTimeout_NAPC = nil
			npc.ForcedGoStartTime_NAPC = nil
			npc.ForcedGoLastPos_NAPC = nil
			npc.ForcedGoLastMoveCheck_NAPC = nil
			npc.ForcedGoStuckTime_NAPC = nil
			npc.ForcedGoMinDistSqr_NAPC = nil
			npc.ForcedGoJumpAttempted_NAPC = nil
			if isMoving then
				npc:StopMoving()
				npc:ClearSchedule()
			end
		end

		NAPC.Tick_MovementSpeed(npc, 1.0)
		if NPCClass == "npc_combine_s" then
			npc:SetSaveValue("m_nShots", 14)
		end
		if sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450) then
			if
				curSched ~= SCHED_RANGE_ATTACK1
				and curSched ~= SCHED_COMBAT_FACE
				and curSched ~= SCHED_MELEE_ATTACK1
			then
				npc:SetSchedule(SCHED_RANGE_ATTACK1)
			end
		elseif not NAPC.Tables.ActiveCombatSchedules[curSched] then
			npc:SetSchedule(SCHED_ESTABLISH_LINE_OF_FIRE)
		end
	elseif decision == "KITE_RETREAT" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] and sit.enemyDist < 300 then
			NAPC.UseCloaking(npc)
		end
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local targetPos = sit.kiteRetreatPos
				or (npc:GetPos() - ((enemy:GetPos() - npc:GetPos()):GetNormalized() * math.Rand(320, 520)))
			local speed = isCitizen and math.Rand(1.35, 1.5) or 1.45
			NAPC.OODA_DispatchMove(npc, ceca, targetPos, SCHED_RUN_FROM_ENEMY_FALLBACK, speed, 2.0)
		elseif
			not isMoving
			and (sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450))
			and curSched ~= SCHED_RANGE_ATTACK1
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "COUNTER_HIGH_GROUND" then
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local speed = isCitizen and math.Rand(1.3, 1.45) or 1.4
			NAPC.OODA_DispatchMove(npc, ceca, sit.counterHighGroundPos, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 2.4)
		elseif
			not isMoving
			and (sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450))
			and curSched ~= SCHED_RANGE_ATTACK1
			and curSched ~= SCHED_MELEE_ATTACK1
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "HIGH_GROUND_REINFORCE" then
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local speed = isCitizen and math.Rand(1.25, 1.4) or 1.35
			NAPC.OODA_DispatchMove(npc, ceca, sit.highGroundPos, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 2.2)
		elseif
			not isMoving
			and (sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450))
			and curSched ~= SCHED_RANGE_ATTACK1
			and curSched ~= SCHED_MELEE_ATTACK1
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "MEDIC_RETREAT" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end
		if IsValid(sit.nearestMedic) and (sit.nearestMedic:GetPos() - npc:GetPos()):LengthSqr() <= 25600 then
			if isMoving then
				npc:ClearSchedule()
			end
			NAPC.Tick_MovementSpeed(npc, 1.0)
		elseif not isMoving and not ceca.ActionApplied then
			NAPC.OODA_DispatchMove(npc, ceca, sit.medicRetreatPos, SCHED_TAKE_COVER_FROM_ENEMY, 1.45, 2.4)
		end
	elseif decision == "EXPLOIT_ENFILADE" then
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local speed = isCitizen and math.Rand(1.35, 1.5) or 1.45
			NAPC.OODA_DispatchMove(npc, ceca, sit.enfiladeAdvantagePos, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 2.2)
		elseif
			not isMoving
			and (sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450))
			and curSched ~= SCHED_RANGE_ATTACK1
			and curSched ~= SCHED_MELEE_ATTACK1
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "SHELTERED_WARFARE" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] and math.random(1, 2) == 1 then
			NAPC.UseCloaking(npc)
		end
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local targetPos = sit.shelterCoverPos or sit.bestCoverShootPos
			local speed = isCitizen and math.Rand(1.35, 1.5) or 1.45
			NAPC.OODA_DispatchMove(npc, ceca, targetPos, SCHED_TAKE_COVER_FROM_ENEMY, speed, 2.4)
		elseif
			not isMoving
			and (sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450))
			and curSched ~= SCHED_RANGE_ATTACK1
			and curSched ~= SCHED_MELEE_ATTACK1
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "BAIT_RETREAT" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local targetPos = sit.lureRetreatPos
			if not targetPos then
				local toEnemy = (enemy:GetPos() - npc:GetPos()):GetNormalized()
				local rawLure = npc:GetPos() - (toEnemy * math.Rand(250, 450))
				NAPC.trData.start = rawLure + Vector(0, 0, 96)
				NAPC.trData.endpos = rawLure - Vector(0, 0, 300)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)
				if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
					if NAPC.IsDestinationValid(npc, NAPC.trRes.HitPos, false) then
						targetPos = NAPC.trRes.HitPos
					end
				end
			end
			NAPC.OODA_DispatchMove(npc, ceca, targetPos, SCHED_TAKE_COVER_FROM_ENEMY, 1.35, 2.0)
		elseif
			not isMoving
			and (sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450))
			and curSched ~= SCHED_RANGE_ATTACK1
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "BREAK_CROSSFIRE" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end
		if not isMoving and not ceca.ActionApplied then
			local threatPos = sit.incomingThreatCenter or (IsValid(enemy) and enemy:GetPos() or npc:GetPos())
			local toThreat = (threatPos - npc:GetPos()):GetNormalized()
			local breakLateral = toThreat:Angle():Right() * (ceca.FlankSide * math.Rand(400, 650))
			local escapePos = npc:GetPos() + breakLateral - (toThreat * math.Rand(200, 450))

			NAPC.trData.start = escapePos + Vector(0, 0, 96)
			NAPC.trData.endpos = escapePos - Vector(0, 0, 300)
			NAPC.trData.mask = MASK_SOLID_BRUSHONLY
			NAPC.trData.filter = nil
			util.TraceLine(NAPC.trData)
			local validPos = nil
			if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
				escapePos = NAPC.trRes.HitPos
				if NAPC.IsDestinationValid(npc, escapePos, false) then
					validPos = escapePos
				end
			end
			NAPC.OODA_DispatchMove(npc, ceca, validPos, SCHED_TAKE_COVER_FROM_ENEMY, 1.5, 2.2)
		end
	elseif decision == "GROUP_ROUT" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local toEnemy = (enemy:GetPos() - npc:GetPos()):GetNormalized()
			local fallbackPos = npc:GetPos()
				- (toEnemy * math.Rand(500, 900))
				+ (toEnemy:Angle():Right() * math.Rand(-200, 200))

			NAPC.trData.start = fallbackPos + Vector(0, 0, 96)
			NAPC.trData.endpos = fallbackPos - Vector(0, 0, 300)
			NAPC.trData.mask = MASK_SOLID_BRUSHONLY
			NAPC.trData.filter = nil
			util.TraceLine(NAPC.trData)
			local validPos = nil
			if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
				fallbackPos = NAPC.trRes.HitPos
				if NAPC.IsDestinationValid(npc, fallbackPos, false) then
					validPos = fallbackPos
				end
			end
			NAPC.OODA_DispatchMove(npc, ceca, validPos, SCHED_TAKE_COVER_FROM_ENEMY, 1.5, 2.5)
		end
	elseif decision == "INDIVIDUAL_RETREAT" then
		if NPCClass == "npc_combine_s" and NAPC.ConvarsBool["NAPC_Combine_Cloaking"] then
			NAPC.UseCloaking(npc)
		end
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local targetPos = IsValid(sit.healthiestMate)
					and NAPC.FindCoverBehindReinforcer(npc, sit.healthiestMate, enemy:GetPos(), enemy, sit.allThreats)
				or nil

			if not targetPos then
				local toEnemy = (enemy:GetPos() - npc:GetPos()):GetNormalized()
				local rawFallback = npc:GetPos() - (toEnemy * math.Rand(400, 700))
				NAPC.trData.start = rawFallback + Vector(0, 0, 96)
				NAPC.trData.endpos = rawFallback - Vector(0, 0, 300)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)
				if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
					if NAPC.IsDestinationValid(npc, NAPC.trRes.HitPos, false) then
						targetPos = NAPC.trRes.HitPos
					end
				end
			end
			NAPC.OODA_DispatchMove(npc, ceca, targetPos, SCHED_TAKE_COVER_FROM_ENEMY, 1.5, 2.5)
		end
	elseif decision == "SQUAD_BOUNDING_ADVANCE" then
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local advanceTarget = sit.advanceCoverPos
			if not advanceTarget then
				local toEnemy = (enemy:GetPos() - npc:GetPos()):GetNormalized()
				local lateralSpread = isCitizen and math.Rand(-140, 140) or math.Rand(-70, 70)
				local advanceDist = isCitizen and math.Rand(280, 480) or math.Rand(320, 520)
				local advancePos = npc:GetPos() + (toEnemy * advanceDist) + (toEnemy:Angle():Right() * lateralSpread)

				NAPC.trData.start = advancePos + Vector(0, 0, 96)
				NAPC.trData.endpos = advancePos - Vector(0, 0, 300)
				NAPC.trData.mask = MASK_SOLID_BRUSHONLY
				NAPC.trData.filter = nil
				util.TraceLine(NAPC.trData)
				if NAPC.trRes.Hit and not NAPC.trRes.StartSolid and NAPC.trRes.HitNormal.z > 0.65 then
					if NAPC.IsDestinationValid(npc, NAPC.trRes.HitPos, false) then
						advanceTarget = NAPC.trRes.HitPos
					end
				end
			end
			local speed = sit.enemyHasRPG and 1.5 or (isCitizen and math.Rand(1.3, 1.45) or 1.45)
			NAPC.OODA_DispatchMove(npc, ceca, advanceTarget, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 2.0)
		elseif
			not isMoving
			and (sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450))
			and curSched ~= SCHED_RANGE_ATTACK1
			and curSched ~= SCHED_MELEE_ATTACK1
		then
			npc:SetSchedule(
				(npc:HasCondition(COND.CAN_MELEE_ATTACK1) and sit.enemyDist < 80 and not sit.isZombieOrHeadcrab)
						and SCHED_MELEE_ATTACK1
					or SCHED_RANGE_ATTACK1
			)
		end
	elseif decision == "SQUAD_COORDINATED_FLANK" or decision == "FLANK_MANEUVER" then
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local flankTargetPos = sit.flankTargetPos or NAPC.FindFlankPos(npc, enemy, sit.allThreats)
			local speed = sit.enemyHasRPG and 1.45 or (isCitizen and math.Rand(1.25, 1.4) or 1.35)
			NAPC.OODA_DispatchMove(npc, ceca, flankTargetPos, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 2.2)
		elseif
			not isMoving
			and (sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450))
			and curSched ~= SCHED_RANGE_ATTACK1
			and curSched ~= SCHED_MELEE_ATTACK1
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "SQUAD_ADVANCE_CLOSER" then
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local targetPos = sit.advanceCoverPos or sit.bestCoverShootPos
			local speed = sit.enemyHasRPG and 1.45 or 1.3
			NAPC.OODA_DispatchMove(npc, ceca, targetPos, SCHED_ESTABLISH_LINE_OF_FIRE, speed, 1.8)
		elseif
			not isMoving
			and (sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450))
			and curSched ~= SCHED_RANGE_ATTACK1
			and curSched ~= SCHED_MELEE_ATTACK1
		then
			npc:SetSchedule(SCHED_RANGE_ATTACK1)
		end
	elseif decision == "TAKE_COVER_SHOOTING_POS" then
		if IsValid(enemy) and not isMoving and not ceca.ActionApplied then
			local targetPos = sit.bestCoverShootPos
			local speed = sit.enemyHasRPG and 1.45 or 1.25
			NAPC.OODA_DispatchMove(npc, ceca, targetPos, SCHED_TAKE_COVER_FROM_ENEMY, speed, 2.0)
		elseif
			not isMoving
			and (sit.canAttack or (sit.seeEnemy and sit.enemyDist < 450))
			and curSched ~= SCHED_RANGE_ATTACK1
			and curSched ~= SCHED_MELEE_ATTACK1
		then
			npc:SetSchedule(
				(npc:HasCondition(COND.CAN_MELEE_ATTACK1) and sit.enemyDist < 80 and not sit.isZombieOrHeadcrab)
						and SCHED_MELEE_ATTACK1
					or SCHED_RANGE_ATTACK1
			)
		end
	elseif decision == "REPOSITION_LOF" then
		if
			curSched ~= SCHED_ESTABLISH_LINE_OF_FIRE
			and curSched ~= SCHED_CHASE_ENEMY
			and not NAPC.Tables.ActiveCombatSchedules[curSched]
		then
			npc:SetSchedule(SCHED_ESTABLISH_LINE_OF_FIRE)
		end
	end
end

NAPC.OODA_Act = NAPC.CECA_Adapt

function NAPC.CECA_Process(npc, NPCClass, weapon, enemy, curSched, NPCState)
	if not NAPC.ConvarsBool["NAPC_NPCs_OODA"] then
		return false
	end
	if not npc.CECA then
		return false
	end
	if NAPC.CurTime_Tick < npc.CECA.NextCycle then
		return true
	end

	local ceca = npc.CECA
	ceca.NextCycle = NAPC.CurTime_Tick + ceca.ReactionDelay

	local info = NAPC.CECA_InformationGathering(npc, enemy, weapon)

	local concept = NAPC.CECA_FormulateConceptualModel(npc, info, enemy)
	local infoNeeds = NAPC.CECA_Critique(npc, concept, info)

	local exploreResults = NAPC.CECA_Explore(npc, enemy, info, infoNeeds)

	local sit = NAPC.CECA_UpdateSituationModel(npc, info, exploreResults)

	local isMoving = NAPC.Tables.BannedSchedule_List3[curSched] or (npc.ForcedGoPos_NAPC ~= nil)
	local lockActive = isMoving
		and (npc.ForcedGoPos_NAPC ~= nil or (ceca.MovementLockTime and NAPC.CurTime_Tick < ceca.MovementLockTime))
	local decisionTimeActive = NAPC.CurTime_Tick < ceca.DecisionTime
		and not sit.isNearLethalZone
		and not sit.enemyHasRPG

	local decision = ceca.LastDecision
	if not lockActive and not decisionTimeActive then
		decision = NAPC.CECA_Compare(npc, concept, sit)
		if decision ~= ceca.LastDecision then
			NAPC.OODA_EvaluateAttribution(npc, decision, "CECA_MODEL_ADAPTATION")
			ceca.LastDecision = decision
			ceca.DecisionTime = NAPC.CurTime_Tick + math.Rand(1.6, 2.6)
			ceca.ActionApplied = false
		end
	end

	NAPC.CECA_Adapt(npc, decision, sit, NPCClass, weapon)

	return true
end

NAPC.OODA_Process = NAPC.CECA_Process

function NAPC.Tick_AdvancedBehaviours(npc, NPCClass)
	if not npc.Initialized_NAPC then
		return
	end

	if NPCClass == "npc_metropolice" then
		NAPC.Tick_MetropoliceManhackSafety(npc)
	end

	local weapon = npc:GetActiveWeapon()
	if not IsValid(weapon) then
		return
	end

	if NAPC.ConvarsBool["NAPC_NPCs_WeaponProficiency"] and npc.TargetProficiency_NAPC ~= nil then
		if
			npc.LastProficiencyWeapon_NAPC ~= weapon
			or (npc.GetCurrentWeaponProficiency and npc:GetCurrentWeaponProficiency() ~= npc.TargetProficiency_NAPC)
		then
			npc.LastProficiencyWeapon_NAPC = weapon
			NAPC.OEC_CustomNPCsAccuracy(npc, NPCClass)
		end
	elseif npc.LastProficiencyWeapon_NAPC ~= weapon then
		npc.LastProficiencyWeapon_NAPC = weapon
	end

	local enemy = npc:GetEnemy()
	local NPCState = npc:GetNPCState()
	local curSched = npc:GetCurrentSchedule()
	local moveAct = npc:GetMovementActivity()
	local isRPGUser = NAPC.IsRocketLauncher(weapon)

	if
		(NPCState == NPC_STATE_COMBAT or NPCState == NPC_STATE_ALERT or isRPGUser)
		and (NAPC.CurTime_Tick > (npc.NextPriorityEnemyCheck_NAPC or 0))
	then
		npc.NextPriorityEnemyCheck_NAPC = NAPC.CurTime_Tick + 0.4
		local priorityTarget = nil
		if isRPGUser then
			priorityTarget = NAPC.FindRPGAntiAirTarget(npc)
		else
			priorityTarget = NAPC.FindPriorityRPGEnemy(npc)
		end

		if IsValid(priorityTarget) and priorityTarget ~= enemy then
			npc:SetEnemy(priorityTarget)
			npc:UpdateEnemyMemory(priorityTarget, priorityTarget:GetPos())
			enemy = priorityTarget
			if NPCState ~= NPC_STATE_COMBAT then
				npc:SetNPCState(NPC_STATE_COMBAT)
				NPCState = NPC_STATE_COMBAT
			end
			if NAPC.CurTime_Tick > (npc.NextSupportCall_NAPC or 0) then
				npc.NextSupportCall_NAPC = NAPC.CurTime_Tick + 3.0
				NAPC.CallForSupport(npc, priorityTarget)
			end
		elseif IsValid(enemy) and npc:Visible(enemy) and NAPC.CurTime_Tick > (npc.NextSquadSpotNotify_NAPC or 0) then
			npc.NextSquadSpotNotify_NAPC = NAPC.CurTime_Tick + 2.5
			NAPC.NotifyThreat(npc, enemy, enemy:GetPos(), 2500)
		end
	end

	NAPC.Tick_Patrol(npc, NPCClass)
	NAPC.Tick_MedicCitizen(npc, NPCClass)
	NAPC.Tick_Combine_Elite(npc, weapon:GetClass(), NPCClass)
	NAPC.Tick_ClearForcedGo(npc, enemy, curSched)
	NAPC.GainHealth(true, npc)

	if NAPC.Tick_RocketEvade(npc, curSched) then
		return
	end

	if NPCState == NPC_STATE_COMBAT then
		if not (IsValid(enemy) and NAPC.IsAvailable(npc, curSched, NPCState)) then
			return
		end
		NAPC.Tick_MovementSpeed(npc)

		local wepHoldType = weapon:GetHoldType()
		local ammoLack = npc:HasCondition(COND.LOW_PRIMARY_AMMO) or npc:HasCondition(COND.NO_PRIMARY_AMMO)

		if isRPGUser then
			if NAPC.HandleRPGFiring(npc, enemy, weapon, curSched) then
				return
			end
		end

		if NAPC.Tables.BannedHoldtype[wepHoldType] or NAPC.IsRPGWeapon(weapon) then
			return
		end
		if NAPC.Tables.BannedSchedule_List2[curSched] then
			if NAPC.ConvarsBool["NAPC_NPCs_QuickReloading"] then
				if npc:GetGroundSpeedVelocity():IsZero() then
					NAPC.Tick_MovementSpeed(npc, 1.5)
				else
					NAPC.Tick_MovementSpeed(npc, 1.25)
				end
			end
			return
		elseif
			npc:IsOnFire()
			or NAPC.Tick_GreNearby(npc, curSched, moveAct)
			or NAPC.Tick_ShouldReload(npc, ammoLack)
		then
			return
		end

		local seeEnemy = npc:Visible(enemy)
		local enemyDist = (enemy:GetPos() - npc:GetPos()):LengthSqr()
		local isshotgunner = npc.IsShotgunner_NAPC
		npc.IsShotgunner_NAPC = isshotgunner ~= nil and isshotgunner or wepHoldType == "shotgun"
		npc.CanRangeAttack_NAPC = npc:HasCondition(COND.CAN_RANGE_ATTACK1)
			or npc:HasCondition(COND.CAN_RANGE_ATTACK2)
			or npc:HasCondition(COND.CAN_MELEE_ATTACK1)
			or (seeEnemy and enemyDist < 202500)

		local isExecutingMovement = NAPC.Tables.BannedSchedule_List3[curSched] or (npc.ForcedGoPos_NAPC ~= nil)

		if not NAPC.ConvarsBool["NAPC_NPCs_OODA"] then
			if not isExecutingMovement and seeEnemy and enemyDist < 202500 and not NAPC.IsRPGWeapon(weapon) then
				if
					not npc:IsCurrentSchedule(SCHED_RANGE_ATTACK1)
					and not npc:IsCurrentSchedule(SCHED_MELEE_ATTACK1)
					and not NAPC.Tables.ActiveCombatSchedules[curSched]
				then
					if
						enemyDist < 6400
						and npc:HasCondition(COND.CAN_MELEE_ATTACK1)
						and not NAPC.IsZombieOrHeadcrab(enemy)
					then
						npc:SetSchedule(SCHED_MELEE_ATTACK1)
					else
						if
							NPCClass == "npc_combine_s"
							and NAPC.ConvarsBool["NPC_SHOOT_MORE_FREQUENTLY"]
							and not npc.IsShotgunner_NAPC
						then
							npc:SetSaveValue("m_nShots", 10)
						end
						npc:SetSchedule(SCHED_RANGE_ATTACK1)
					end
				end
			end

			if
				not isExecutingMovement and NAPC.Tick_EnemyIsNearby(npc, enemy, NPCClass, curSched, enemyDist, seeEnemy)
			then
				return
			end
		end

		local cecaActive = NAPC.CECA_Process(npc, NPCClass, weapon, enemy, curSched, NPCState)

		NAPC.FocusOnRunning(npc)
		NAPC.WepAttackRange(true, npc, weapon)
		NAPC.AimForExplosive(true, npc, enemy)
		NAPC.WakenStupidNPC(true, npc, nil, enemy, NPCClass, curSched)
		NAPC.Tick_Shoot_SameTime(npc)

		if not cecaActive and not isExecutingMovement then
			NAPC.Tick_TakeCaution(npc, enemy, NPCClass, curSched, seeEnemy)
			NAPC.Tick_AvoidCrosshair(npc, NPCClass, ammoLack, enemy, wepHoldType, weapon)
			NAPC.Tick_RunShoot(npc, NPCClass, ammoLack, enemy, curSched, seeEnemy)
		end

		if not isExecutingMovement then
			NAPC.Tick_Stealth(npc, enemy, NPCClass, ammoLack, enemyDist, seeEnemy, moveAct)
			NAPC.Tick_WalkingAim(npc, enemyDist, moveAct)

			if not cecaActive then
				NAPC.Tick_BetterShotgunner(npc, ammoLack, enemy, weapon, NPCClass, seeEnemy)
				if NPCClass == "npc_combine_s" then
					NAPC.Tick_Combine_NoFear(npc, ammoLack, enemy, curSched)
				end
			end

			if NPCClass == "npc_combine_s" then
				NAPC.Tick_Cloaking_Attacker(npc, seeEnemy)
				NAPC.Tick_ShotgunnerRush(npc, enemy, ammoLack, enemyDist, seeEnemy)
				NAPC.Tick_ThrowMoreGre(npc, enemy, enemyDist)
			elseif NPCClass == "npc_metropolice" then
				NAPC.Tick_ThrowMoreGre(npc, enemy, enemyDist)
			end
		end
	else
		if NAPC.Tick_GreNearby(npc, curSched, moveAct) then
			return
		end
		NAPC.Tick_BackForEnemy(false, npc, nil, curSched, NPCState)
	end
end

NAPC.Tick_FuncList = {
	["npc_zombine"] = function(npc)
		NAPC.Tick_Zombine_Run(npc)
	end,
	["npc_strider"] = function(npc)
		NAPC.Tick_Strider_Cannon(npc)
	end,
	["npc_zombie"] = function(npc)
		NAPC.Tick_ExtraNPCsCustomSpeed(npc)
	end,
	["npc_zombie_torso"] = function(npc)
		NAPC.Tick_ExtraNPCsCustomSpeed(npc)
	end,
	["npc_vortigaunt"] = function(npc)
		NAPC.Tick_ExtraNPCsCustomSpeed(npc)
	end,
}

function NAPC.Tick_Core(npc, NPCClass)
	if NPCClass == "npc_grenade_frag" then
		if NAPC.ConvarsBool["NAPC_NPCs_RunFromGrenade"] then
			local grePos = npc:GetPos()
			local dmgRadius = npc:GetInternalVariable("m_DmgRadius") or 250
			local checkRadius = math.max(dmgRadius * 1.6, 450)
			for _, ent in ipairs(ents.FindInSphere(grePos, checkRadius)) do
				if ent:IsNPC() and NAPC.Tables.NPCClass_Main[ent:GetClass()] and ent:Visible(npc) then
					ent.GreIsNearby_NAPC = true
					ent.GreNearbyPos_NAPC = grePos
				end
			end
		end
		return
	end

	local ExtraFunc = NAPC.Tick_FuncList[NPCClass]
	if ExtraFunc then
		ExtraFunc(npc)
	end

	NAPC.Tick_Jump(npc, NPCClass)
	if NAPC.Tables.NPCClass_Main[NPCClass] then
		NAPC.Tick_AdvancedBehaviours(npc, NPCClass)
	elseif NPCClass == "npc_hunter" then
		NAPC.BetterHunterBehavior(true, npc)
	end
end

function NAPC.Tick_FindNPC()
	for _, npc in ents.Iterator() do
		if IsValid(npc) and npc:IsNPC() then
			local NPCClass = npc:GetClass()
			if NAPC.Tables.NPCClass_FindAll[NPCClass] then
				if NAPC.WorksOnANP(npc) then
					NAPC.InitEnt(npc)
					NAPC.Tick_Core(npc, NPCClass)
				end
				NAPC.CurNPCList[npc] = true
			end
		end
	end
end

function NAPC.Tick_FindByList()
	local toRemove = nil

	for npc, _ in pairs(NAPC.CurNPCList) do
		if not IsValid(npc) then
			toRemove = toRemove or {}
			toRemove[#toRemove + 1] = npc
		else
			local NPCClass = npc:GetClass()
			if not NAPC.Tables.NPCClass_FindAll[NPCClass] then
				toRemove = toRemove or {}
				toRemove[#toRemove + 1] = npc
			elseif NAPC.WorksOnANP(npc) then
				NAPC.InitEnt(npc)
				NAPC.Tick_Core(npc, NPCClass)
			end
		end
	end

	if toRemove then
		for i = 1, #toRemove do
			NAPC.CurNPCList[toRemove[i]] = nil
		end
	end
end

cvars.AddChangeCallback("NPC_AVOID_PLAYER_CROSSHAIR", function()
	if GetConVar("NPC_AVOID_PLAYER_CROSSHAIR"):GetBool() then
		for _, ent in ents.Iterator() do
			if not IsValid(ent) then
				continue
			end

			local IsTargetClass = NAPC.Tables.NPCClass_FindAll[ent:GetClass()]
			if IsTargetClass then
				NAPC.CurNPCList[ent] = true
			end
			if IsTargetClass or ent:IsWeapon() then
				NAPC.InitEnt(ent)
			end
		end
	end
end)

function NAPC.Convar(data)
	timer.Simple(0.03, function()
		if GetConVar("NAPC_NPCs_LookFor_Attacker"):GetBool() and GetConVar("NAPC_NPCs_HIDE_FROM_DMG"):GetBool() then
			GetConVar("NAPC_NPCs_HIDE_FROM_DMG"):SetBool(false)
			GetConVar("NAPC_NPCs_LookFor_Attacker"):SetBool(false)
		end
		if not GetConVar("NAPC_StriderCannon"):GetBool() then
			GetConVar("NAPC_StriderCn_AgainstPlayer"):SetBool(false)
		end
	end)

	local convarName = data.cvarname
	if NAPC.ConvarsBool[convarName] ~= nil then
		NAPC.ConvarsBool[convarName] = GetConVar(convarName):GetBool()
	elseif NAPC.ConvarsNum[convarName] ~= nil then
		NAPC.ConvarsNum[convarName] = cvars.Number(convarName)
	end

	if
		convarName == "NAPC_NPCs_WeaponProficiency"
		or convarName == "NAPC_Combine_WeaponProficiency"
		or convarName == "NAPC_Metropolice_WeaponProficiency"
		or convarName == "NAPC_Citizen_WeaponProficiency"
	then
		for npc, _ in pairs(NAPC.CurNPCList) do
			if IsValid(npc) and npc:IsNPC() then
				NAPC.OEC_CustomNPCsAccuracy(npc, npc:GetClass())
			end
		end
	end

	NAPC.Enable_ThisAddon = NAPC.ConvarsBool["NPC_AVOID_PLAYER_CROSSHAIR"]
	NAPC.Enable_AvoidCrosshair = NAPC.ConvarsBool["Combine_AVOID_PLAYER_CROSSHAIR"]
		or NAPC.ConvarsBool["Metropolice_AVOID_PLAYER_CROSSHAIR"]
		or NAPC.ConvarsBool["Citizen_AVOID_PLAYER_CROSSHAIR"]
end

function NAPC.GuideMissiles()
	local MISSILE_SPEED = 50

	for missile, _ in pairs(NAPC.ActiveMissiles) do
		if not IsValid(missile) then
			NAPC.ActiveMissiles[missile] = nil
		else
			local shooter = missile.Shooter_NAPC or missile:GetOwner()
			if not IsValid(shooter) then
				shooter = missile:GetInternalVariable("m_hOwner")
				if IsValid(shooter) then
					missile.Shooter_NAPC = shooter
				end
			end

			if IsValid(shooter) and shooter:IsNPC() and shooter:Alive() then
				local wep = shooter:GetActiveWeapon()
				if IsValid(wep) and NAPC.IsRocketLauncher(wep) then
					local enemy = shooter:GetEnemy()
					local targetPos = nil

					if IsValid(enemy) and enemy:Alive() then
						targetPos = enemy:WorldSpaceCenter()
						local dist = (targetPos - missile:GetPos()):Length()
						local leadTime = math.Clamp(dist / MISSILE_SPEED, 0, 1.2)

						if NAPC.IsFlyingOrHovering(enemy) or enemy:GetClass() == "npc_strider" then
							targetPos = targetPos + (enemy:GetVelocity() * leadTime)
						elseif shooter:Visible(enemy) then
							targetPos = targetPos + (enemy:GetVelocity() * (leadTime * 0.6))
						else
							local lastPos = shooter:GetEnemyLastSeenPos(enemy)
							if lastPos and lastPos ~= vector_origin then
								targetPos = lastPos
							end
						end
					else
						local tr = util.TraceLine({
							start = shooter:EyePos(),
							endpos = shooter:EyePos() + (shooter:GetAimVector() * 8000),
							filter = { shooter, missile },
							mask = MASK_SHOT,
						})
						targetPos = tr.HitPos
					end

					if targetPos then
						if IsValid(missile.LaserDot_NAPC) then
							missile.LaserDot_NAPC:SetPos(targetPos)
						else
							local dot = ents.Create("env_laserdot")
							if IsValid(dot) then
								dot:SetPos(targetPos)
								dot:SetOwner(shooter)
								dot:Spawn()
								missile.LaserDot_NAPC = dot
								missile:SetSaveValue("m_hTarget", dot)
							end
						end

						local mPos = missile:GetPos()
						local toTarget = (targetPos - mPos):GetNormalized()
						local curVel = missile:GetVelocity()
						local curDir = curVel:GetNormalized()
						if curDir:IsZero() then
							curDir = missile:GetForward()
						end

						local steerRate = 0.22
						local newDir = (curDir + (toTarget * steerRate)):GetNormalized()
						local newVel = newDir * MISSILE_SPEED

						missile:SetVelocity(newVel)
						missile:SetSaveValue("m_vecVelocity", newVel)
						missile:SetAngles(newDir:Angle())

						local phys = missile:GetPhysicsObject()
						if IsValid(phys) then
							phys:SetVelocity(newVel)
						end
					end
				else
					if IsValid(missile.LaserDot_NAPC) then
						missile.LaserDot_NAPC:Remove()
						missile.LaserDot_NAPC = nil
					end
				end
			else
				if IsValid(missile.LaserDot_NAPC) then
					missile.LaserDot_NAPC:Remove()
					missile.LaserDot_NAPC = nil
				end
			end
		end
	end
end

function NAPC.Tick()
	if NAPC.TickCount < NAPC.Interval then
		NAPC.TickCount = NAPC.TickCount + 1
	else
		if NAPC.Enable_ThisAddon then
			NAPC.CurTime_Tick = CurTime()
			for _, ply in player.Iterator() do
				if IsValid(ply) and ply:Alive() and not NAPC.IsPlayerIgnored(ply) then
					local tr = ply:GetEyeTraceNoCursor()
					local ent = tr.Entity
					if IsValid(ent) and NAPC.Tables.NPCClass_Main[ent:GetClass()] then
						ply.SeeingEnt_NAPC = ent
						ent.NextRunToWalk_NAPC = NAPC.CurTime_Tick + 3
					else
						ply.SeeingEnt_NAPC = nil
					end
				elseif IsValid(ply) then
					ply.SeeingEnt_NAPC = nil
				end
			end

			if NAPC.ConvarsBool["NAPC_OODA_SquadTactics"] then
				NAPC.UpdateTheaterOrchestration()
			end

			NAPC.GuideMissiles()

			if NAPC.ListCount < NAPC.ListUpdateInterval then
				NAPC.Tick_FindByList()
				NAPC.ListCount = NAPC.ListCount + 1
			else
				NAPC.Tick_FindNPC()
				NAPC.ListCount = 0
			end

			NAPC.BroadcastDebugInfo()
		end
		NAPC.TickCount = 0
	end
end

function NAPC.InitMissile(missile)
	if not IsValid(missile) then
		return
	end

	timer.Simple(0, function()
		if not IsValid(missile) then
			return
		end

		local owner = missile:GetOwner()
		if not IsValid(owner) then
			owner = missile:GetInternalVariable("m_hOwner")
		end

		if not IsValid(owner) then
			for npc, _ in pairs(NAPC.CurNPCList) do
				if IsValid(npc) and npc:IsNPC() and NAPC.IsRocketLauncher(npc:GetActiveWeapon()) then
					if (npc:GetPos() - missile:GetPos()):LengthSqr() <= 640000 then
						owner = npc
						break
					end
				end
			end
		end

		if IsValid(owner) and owner:IsNPC() then
			missile.Shooter_NAPC = owner
			local enemy = owner:GetEnemy()
			local targetPos = IsValid(enemy) and enemy:WorldSpaceCenter()
				or (owner:EyePos() + (owner:GetAimVector() * 4096))

			local dot = ents.Create("env_laserdot")
			if IsValid(dot) then
				dot:SetPos(targetPos)
				dot:SetOwner(owner)
				dot:Spawn()
				missile.LaserDot_NAPC = dot
				missile:SetSaveValue("m_hTarget", dot)
			elseif IsValid(enemy) then
				missile:SetSaveValue("m_hTarget", enemy)
			end
		end
	end)
end

function NAPC.OnEntityCreated(npc)
	if NAPC.Enable_ThisAddon and IsValid(npc) then
		if NAPC.IsRocketEntity(npc) then
			NAPC.ActiveMissiles[npc] = true
			NAPC.InitMissile(npc)
			return
		end

		local NPCClass = npc:GetClass()

		if NPCClass == "npc_grenade_frag" then
			timer.Simple(0, function()
				if not IsValid(npc) then
					return
				end
				local owner = npc:GetOwner()
				if not IsValid(owner) then
					owner = npc:GetInternalVariable("m_hThrower")
				end

				if IsValid(owner) and owner.PendingGrenadeSim_NAPC then
					local simData = owner.PendingGrenadeSim_NAPC
					owner.PendingGrenadeSim_NAPC = nil
					NAPC.AttachGrenadeToPath(npc, simData)
				end

				if IsValid(owner) and owner.CustomGrenadeFuse_NAPC then
					local fuse = owner.CustomGrenadeFuse_NAPC - NAPC.CurTime_Tick
					owner.CustomGrenadeFuse_NAPC = nil
					if fuse > 0.3 and fuse < 7.5 then
						npc:SetSaveValue("m_flDetonateTime", CurTime() + fuse)
						npc:Fire("SetTimer", fuse)
					end
				end
			end)
		end

		if NAPC.Tables.NPCClass_FindAll[NPCClass] then
			NAPC.CurNPCList[npc] = true
		end

		if not NAPC.WorksOnANP(npc) then
			return
		end
		if npc:IsNPC() then
			NAPC.InitEnt(npc)
			NAPC.OEC_CustomMoveSpeed(npc, NPCClass)

			if not (NAPC.Tables.NPCClass_Main[NPCClass] or NPCClass == "npc_hunter") then
				return
			end

			NAPC.BetterHunterBehavior(false, npc, NPCClass)
			NAPC.OEC_ReadyMetropolice(npc, NPCClass)
			NAPC.OEC_CustomNPCsHealth(npc, NPCClass)
			NAPC.OEC_CustomLookDistance(npc, NPCClass)
			NAPC.OEC_CustomNPCsAccuracy(npc, NPCClass)
			NAPC.OEC_CustomNPCsFOV(npc, NPCClass)
			NAPC.OEC_CustomAttackRange(npc, NPCClass)
		elseif npc:IsWeapon() then
			NAPC.InitEnt(npc)
		else
			NAPC.OEC_FasterEnergyBall(npc, NPCClass)
		end
	end
end

function NAPC.OnNPCKilled(npc, attacker, _)
	if NAPC.Enable_ThisAddon and IsValid(npc) and NAPC.WorksOnANP(npc) then
		local NPCClass = npc:GetClass()
		local weapon = npc.GetActiveWeapon and npc:GetActiveWeapon() or NULL

		if NPCClass == "npc_metropolice" then
			local manhack = npc:GetInternalVariable("m_hManhack")
			if not IsValid(manhack) then
				for _, child in ipairs(npc:GetChildren()) do
					if IsValid(child) and child:GetClass() == "npc_manhack" then
						manhack = child
						break
					end
				end
			end
			if IsValid(manhack) then
				NAPC.ActivateManhack(manhack, npc)
				npc:SetSaveValue("m_hManhack", nil)
			end
		end

		NAPC.LogCasualty(npc:GetPos(), NPCClass)
		NAPC.LogLethalDangerZone(npc:GetPos(), 3)

		if IsValid(attacker) and not NAPC.IsFriendly(npc, attacker) then
			NAPC.NotifyThreat(npc, attacker, attacker:GetPos(), 3000)
		end

		if npc.OODA then
			NAPC.OODA_EvaluateAttribution(npc, "KILLED", "CASUALTY")
		end

		NAPC.Killed_HideFromDmg(npc, NPCClass)
		NAPC.Killed_LookForAttPos(npc, attacker, NPCClass)
		NAPC.Killed_Cloaking(npc, weapon)

		if IsValid(weapon) then
			NAPC.WepAttackRange(false, npc, weapon)
		end
	end
end

function NAPC.EntityTakeDamage(ent, dmginfo)
	if NAPC.Enable_ThisAddon and IsValid(ent) then
		local EntClass = ent:GetClass()
		if NAPC.Tables.NPCClass_TakingDmg[EntClass] and NAPC.WorksOnANP(ent) then
			local attacker = dmginfo:GetAttacker()
			if IsValid(attacker) and not dmginfo:IsDamageType(DMG_BURN + DMG_POISON + DMG_SLOWBURN + DMG_PARALYZE) then
				local dmgAmount = dmginfo:GetDamage()

				if attacker:IsNPC() and attacker.OODA then
					attacker.OODA.ActiveDecisionDmgDealt = (attacker.OODA.ActiveDecisionDmgDealt or 0) + dmgAmount
				end

				if EntClass == "player" then
					if not NAPC.IsFriendly(ent, attacker) and NAPC.IsFlyingOrHovering(attacker) then
						attacker.LastDamagedMatesTime_NAPC = CurTime()
					end
					NAPC.Dmg_ScaleDmgOnPlayers(ent, dmginfo, attacker)
				else
					if not NAPC.IsFriendly(ent, attacker) then
						local distSqr = (attacker:GetPos() - ent:GetPos()):LengthSqr()
						if distSqr > 22500 and not dmginfo:IsDamageType(DMG_CLUB + DMG_SLASH) then
							attacker.IsRangedAttacker_NAPC = true
						end

						if NAPC.IsFlyingOrHovering(attacker) then
							ent.LastFlyerAttacker_NAPC = attacker
							ent.LastFlyerDamageTime_NAPC = CurTime()
							attacker.LastDamagedMatesTime_NAPC = CurTime()
						end
					end

					NAPC.Dmg_ReduceDmg(ent, dmginfo, EntClass)
					NAPC.Dmg_FriendlyDmg(ent, dmginfo, attacker, EntClass)
					NAPC.Dmg_LookForAttPos(ent, attacker)
					NAPC.Dmg_HideFromDmg(ent)

					if not NAPC.IsFriendly(ent, attacker) then
						NAPC.NotifyThreat(ent, attacker, attacker:GetPos(), 3200)
					end

					if NAPC.Tables.NPCClass_Main[EntClass] then
						NAPC.WakenStupidNPC(false, ent, attacker)
						NAPC.GainHealth(false, ent)

						ent.DamageBuffer_NAPC = (ent.DamageBuffer_NAPC or 0) + dmgAmount
						ent.LastDamageTime_NAPC = CurTime()

						if ent.OODA then
							ent.OODA.ActiveDecisionDmgTaken = (ent.OODA.ActiveDecisionDmgTaken or 0) + dmgAmount

							if dmgAmount > (ent:GetMaxHealth() * 0.3) then
								NAPC.LogLethalDangerZone(ent:GetPos(), 2)
							end

							local isSevere = dmgAmount > (ent:GetMaxHealth() * 0.35)
							local isFlyerDmg = NAPC.IsFlyingOrHovering(attacker)
							local curSched = ent:GetCurrentSchedule()
							local isAlreadyEvading = NAPC.Tables.BannedSchedule_List3[curSched]
								or curSched == SCHED_TAKE_COVER_FROM_ENEMY
								or (ent.ForcedGoPos_NAPC ~= nil)

							if
								(NAPC.CurTime_Tick > (ent.OODA.NextDamageReeval or 0) or isSevere or isFlyerDmg)
								and not isAlreadyEvading
							then
								ent.OODA.NextDamageReeval = NAPC.CurTime_Tick + math.Rand(1.2, 1.8)
								ent.OODA.ActionApplied = false
								ent.OODA.DecisionTime = 0
								ent.OODA.NextCycle = NAPC.CurTime_Tick + 0.1
							end
						end
					elseif EntClass == "npc_hunter" then
						NAPC.Dmg_HunterTakingDmg(ent, dmginfo)
					end
				end
			end
		end
	end
end

function NAPC.PostEntityTakeDamage(npc, _, _)
	if NAPC.Enable_ThisAddon and NAPC.ConvarsBool["NAPC_NPCs_NoFlinch"] then
		if IsValid(npc) and NAPC.Tables.NPCClass_Main[npc:GetClass()] and NAPC.WorksOnANP(npc) then
			npc:ClearCondition(COND.LIGHT_DAMAGE)
			npc:ClearCondition(COND.HEAVY_DAMAGE)
		end
	end
end

function NAPC.EntityFireBullets(npc, data)
	if NAPC.Enable_ThisAddon and npc:IsNPC() and NAPC.WorksOnANP(npc) then
		local enemy = npc:GetEnemy()
		if IsValid(enemy) then
			local weapon = npc:GetActiveWeapon()
			local enemypos = enemy:WorldSpaceCenter()
			local enemyhead = enemy:LookupBone("ValveBiped.Bip01_Head1")
			if IsValid(weapon) then
				local NPCClass = npc:GetClass()
				if NAPC.Tables.NPCClass_Main[NPCClass] or NAPC.Tables.NPCClass_KeyNPCs[NPCClass] then
					if data.Num < 2 then
						npc.IsShotgunner_NAPC = false
						NAPC.Bullet_FireAR2Ball(npc, enemypos, weapon, data)
						NAPC.Bullet_PerfectAccuracy(npc, NPCClass, enemy, enemypos, enemyhead, data)
						NAPC.Bullet_AimForHead(npc, enemy, enemypos, enemyhead, weapon, data)
						NAPC.AimForExplosive(false, npc, nil, data)
					else
						npc.IsShotgunner_NAPC = true
						NAPC.Bullet_ShotgunnerBullet(npc, NPCClass, enemypos, weapon, data)
					end
				end
			else
				NAPC.Bullet_BetterTurret(npc, enemy, enemypos, enemyhead, data)
			end
		end
	end
end

function NAPC.EntityEmitSound(data)
	if NAPC.Enable_ThisAddon then
		local ent = data.Entity
		if IsValid(ent) then
			NAPC.Sound_EnergyBallAOEDmg(ent, data, ent:GetClass())
		end
	end
end

function NAPC.EntityRemoved(ent)
	if NAPC.CurNPCList[ent] then
		NAPC.CurNPCList[ent] = nil
	end
	if NAPC.ActiveMissiles[ent] then
		if IsValid(ent.LaserDot_NAPC) then
			ent.LaserDot_NAPC:Remove()
			ent.LaserDot_NAPC = nil
		end
		NAPC.ActiveMissiles[ent] = nil
	end
end

hook.Add("OnNPCKilled", "NAPC_AreaScores_OnNPCKilled", function(npc)
	if not IsValid(npc) then
		return
	end
	NAPC.AreaRecordDeath(npc:GetPos(), NAPC.AreaGetFactionOf(npc))
end)

hook.Add("PlayerDeath", "NAPC_AreaScores_PlayerDeath", function(victim)
	if not IsValid(victim) or NAPC.PlayerVisionIgnored(victim) then
		return
	end
	NAPC.AreaRecordDeath(victim:GetPos(), "resistance")
end)

hook.Add("EntityFireBullets", "NAPC_AreaScores_RecordFire", function(shooter, data)
	if not IsValid(shooter) then
		return
	end
	local isPlayer = shooter:IsPlayer()
	if not (isPlayer or shooter:IsNPC()) then
		return
	end
	if isPlayer and NAPC.PlayerVisionIgnored(shooter) then
		return
	end
	if not (navmesh and navmesh.IsLoaded and navmesh.IsLoaded()) then
		return
	end

	local now = CurTime()
	if (shooter.NAPC_NextAreaFireLog or 0) > now then
		return
	end
	shooter.NAPC_NextAreaFireLog = now + 0.3

	local src = data.Src or (shooter.EyePos and shooter:EyePos()) or shooter:GetPos()
	local dir = data.Dir
	if not isvector(dir) then
		return
	end

	NAPC.trData.start = src
	NAPC.trData.endpos = src + dir * 4500
	NAPC.trData.mask = MASK_SHOT
	NAPC.trData.filter = shooter
	util.TraceLine(NAPC.trData)
	local impact = NAPC.trRes.HitPos

	local shooterFaction = NAPC.AreaGetFactionOf(shooter)
	if shooterFaction == "other" then
		return
	end

	local impactArea = navmesh.GetNearestNavArea(impact, false, 260, false, true)
	if not IsValid(impactArea) then
		return
	end
	local key = isPlayer and ("P" .. shooter:EntIndex()) or tostring(shooter:EntIndex())

	local rec = NAPC.AreaGetRecord(impactArea)
	if rec then
		NAPC.AreaAddFire(rec, shooterFaction, key, 1, now)
	end
	local adjs = impactArea:GetAdjacentAreas()
	if istable(adjs) then
		for _, adj in ipairs(adjs) do
			if IsValid(adj) then
				local r = NAPC.AreaGetRecord(adj)
				if r then
					NAPC.AreaAddFire(r, shooterFaction, key, 0.5, now)
				end
			end
		end
	end
end)

timer.Create("NAPC_AreaScores_Think", 0.5, 0, function()
	if not NAPC.Enable_ThisAddon then
		return
	end
	if not (navmesh and navmesh.IsLoaded and navmesh.IsLoaded()) then
		return
	end

	local now = CurTime()
	NAPC.CurTime_Tick = now

	NAPC.AreaRegisterCombatAreas(now)

	local budget = 14
	for id, rec in pairs(NAPC.AreaScoreRecords) do
		if budget > 0 and now <= rec.trackedUntil and now >= (rec.nextVisionUpdate or 0) then
			NAPC.AreaUpdateVisionForRecord(rec, now)
			rec.nextVisionUpdate = now + NAPC.AreaScore_VisionInterval + math.Rand(0, 0.5)
			budget = budget - 1
		elseif now > rec.trackedUntil + 15 then
			NAPC.AreaScoreRecords[id] = nil
			NAPC.AreaScore_Count = math.max(0, NAPC.AreaScore_Count - 1)
		end
	end

	NAPC.AreaUpdateSquadRoles(now)

	for npc, _ in pairs(NAPC.CurNPCList) do
		if IsValid(npc) and npc.OODA and NAPC.Tables.NPCClass_Main[npc:GetClass()] then
			NAPC.AreaInfluenceOODA(npc, now)
		end
	end

	NAPC.AreaDebugRender(now)
end)

hook.Add("EntityRemoved", "NAPC_HookName", function(ent)
	NAPC.EntityRemoved(ent)
end)
gameevent.Listen("server_cvar")
hook.Add("server_cvar", "NAPC_HookName", function(data)
	NAPC.Convar(data)
end)
hook.Add("Tick", "NAPC_HookName", function()
	NAPC.Tick()
end)
hook.Add("OnEntityCreated", "NAPC_HookName", function(npc)
	NAPC.OnEntityCreated(npc)
end)
hook.Add("OnNPCKilled", "NAPC_HookName", function(npc, attacker, inflictor)
	NAPC.OnNPCKilled(npc, attacker, inflictor)
end)
hook.Add("EntityTakeDamage", "NAPC_HookName", function(ent, dmginfo)
	NAPC.EntityTakeDamage(ent, dmginfo)
end)
hook.Add("PostEntityTakeDamage", "NAPC_HookName", function(npc, dmginfo, bool)
	NAPC.PostEntityTakeDamage(npc, dmginfo, bool)
end)
hook.Add("EntityFireBullets", "NAPC_HookName", function(npc, data)
	return NAPC.EntityFireBullets(npc, data)
end)
hook.Add("EntityEmitSound", "NAPC_HookName", function(data)
	return NAPC.EntityEmitSound(data)
end)
