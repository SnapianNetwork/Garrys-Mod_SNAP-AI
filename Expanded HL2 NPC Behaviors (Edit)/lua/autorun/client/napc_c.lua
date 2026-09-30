include("autorun/client/NAPC_Localization_EN.lua")
include("autorun/client/NAPC_Localization_CN.lua")

local NAPC_Text = NAPC_Localization_EN
local function NAPC_SelectLanguage()
	if string.lower(GetConVar("gmod_language"):GetString()) == "zh-cn" then
		NAPC_Text = NAPC_Localization_CN
	else
		NAPC_Text = NAPC_Localization_EN
	end
end
NAPC_SelectLanguage()
cvars.AddChangeCallback("gmod_language", NAPC_SelectLanguage)

local function NAPC_Panel_1(panel)
	if not LocalPlayer():IsAdmin() then
		return
	end
	panel:Help([[ ]])
	panel:Help(NAPC_Text["Partition Description"].part1)
	panel:Help([[ ]])
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NPC_AVOID_PLAYER_CROSSHAIR"].OptionName, "NPC_AVOID_PLAYER_CROSSHAIR")
	panel:ControlHelp(NAPC_Text["NPC_AVOID_PLAYER_CROSSHAIR"].help_1)
	panel:ControlHelp(NAPC_Text["NPC_AVOID_PLAYER_CROSSHAIR"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_OODA"].OptionName, "NAPC_NPCs_OODA")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_OODA"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_OODA"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_OODA_SquadTactics"].OptionName, "NAPC_OODA_SquadTactics")
	panel:ControlHelp(NAPC_Text["NAPC_OODA_SquadTactics"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_OODA_SquadTactics"].help_2)
	panel:NumSlider(NAPC_Text["NAPC_OODA_Aggression"].OptionName, "NAPC_OODA_Aggression", 0.5, 2.0, 1)
	panel:ControlHelp(NAPC_Text["NAPC_OODA_Aggression"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_OODA_Aggression"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_Debug_AreaScores"].OptionName, "NAPC_Debug_AreaScores")
	panel:ControlHelp(NAPC_Text["NAPC_Debug_AreaScores"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_Debug_AreaScores"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_Debug_ShowWindows"].OptionName, "NAPC_Debug_ShowWindows")
	panel:ControlHelp(NAPC_Text["NAPC_Debug_ShowWindows"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_Debug_ShowPriorityTargets"].OptionName, "NAPC_Debug_ShowPriorityTargets")
	panel:ControlHelp(NAPC_Text["NAPC_Debug_ShowPriorityTargets"].help_1)
	panel:Help([[ ]])
	panel:Button(NAPC_Text["NAPC_Generate_Windows"].OptionName, "napc_generate_windows")
	panel:ControlHelp(NAPC_Text["NAPC_Generate_Windows"].help_1)
	panel:Button(NAPC_Text["NAPC_Clear_Windows"].OptionName, "napc_clear_windows")
	panel:ControlHelp(NAPC_Text["NAPC_Clear_Windows"].help_1)
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_WorksOn_ANPlus"].OptionName, "NAPC_WorksOn_ANPlus")
	panel:ControlHelp(NAPC_Text["NAPC_WorksOn_ANPlus"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_WorksOn_ANPlus"].help_2)
	panel:Help([[ ]])
	panel:Help([[ ]])
	panel:Help(NAPC_Text["Partition Description"].note)
	panel:Help([[ ]])
end

local function NAPC_Panel_2(panel)
	if not LocalPlayer():IsAdmin() then
		return
	end
	panel:Help([[ ]])
	panel:Help(NAPC_Text["Partition Description"].part2)
	panel:Help([[ ]])
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_NPCs_SMG_AltFire"].OptionName, "NAPC_NPCs_SMG_AltFire")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_SMG_AltFire"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_CAN_JUMP"].OptionName, "NAPC_NPCs_CAN_JUMP")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_CAN_JUMP"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_HealthRegen"].OptionName, "NAPC_NPCs_HealthRegen")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_HealthRegen"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_WALK_AROUND"].OptionName, "NAPC_WALK_AROUND")
	panel:ControlHelp(NAPC_Text["NAPC_WALK_AROUND"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_WALK_AROUND"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_Stealth"].OptionName, "NAPC_NPCs_Stealth")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_Stealth"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_Stealth"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_WalkAndShoot"].OptionName, "NAPC_NPCs_WalkAndShoot")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_WalkAndShoot"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_NoFlinch"].OptionName, "NAPC_NPCs_NoFlinch")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_NoFlinch"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_RUN_AND_SHOOT"].OptionName, "NAPC_RUN_AND_SHOOT")
	panel:ControlHelp(NAPC_Text["NAPC_RUN_AND_SHOOT"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_RUN_AND_SHOOT"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_TakeCaution"].OptionName, "NAPC_NPCs_TakeCaution")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_TakeCaution"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_AimForHead"].OptionName, "NAPC_NPCs_AimForHead")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_AimForHead"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_AimForHead"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_AimForExplosive"].OptionName, "NAPC_NPCs_AimForExplosive")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_AimForExplosive"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_AR2_AltFire"].OptionName, "NAPC_NPCs_AR2_AltFire")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_AR2_AltFire"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_QuickReloading"].OptionName, "NAPC_NPCs_QuickReloading")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_QuickReloading"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_ATTACK_TOGETHER"].OptionName, "NAPC_ATTACK_TOGETHER")
	panel:ControlHelp(NAPC_Text["NAPC_ATTACK_TOGETHER"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_ATTACK_TOGETHER"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_HIDE_FROM_DMG"].OptionName, "NAPC_NPCs_HIDE_FROM_DMG")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_HIDE_FROM_DMG"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_HIDE_FROM_DMG"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_LookFor_Attacker"].OptionName, "NAPC_NPCs_LookFor_Attacker")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_LookFor_Attacker"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_LookFor_Attacker"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_StrikeBack"].OptionName, "NAPC_NPCs_StrikeBack")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_StrikeBack"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_EnemyNearby"].OptionName, "NAPC_NPCs_EnemyNearby")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_EnemyNearby"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_MustReloadNow"].OptionName, "NAPC_NPCs_MustReloadNow")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_MustReloadNow"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_MustReloadNow"].help_2)
	panel:CheckBox(NAPC_Text["NPC_SHOOT_MORE_FREQUENTLY"].OptionName, "NPC_SHOOT_MORE_FREQUENTLY")
	panel:ControlHelp(NAPC_Text["NPC_SHOOT_MORE_FREQUENTLY"].help_1)
	panel:ControlHelp(NAPC_Text["NPC_SHOOT_MORE_FREQUENTLY"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_FasterChasing"].OptionName, "NAPC_NPCs_FasterChasing")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_FasterChasing"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_FasterChasing"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_RunFromGrenade"].OptionName, "NAPC_NPCs_RunFromGrenade")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_RunFromGrenade"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_IGNORE_PLAYER_Dmg"].OptionName, "NAPC_NPCs_IGNORE_PLAYER_Dmg")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_IGNORE_PLAYER_Dmg"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_IGNORE_PLAYER_Dmg"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_COWER_PROTECTION"].OptionName, "NAPC_NPCs_COWER_PROTECTION")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_COWER_PROTECTION"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_COWER_PROTECTION"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_NPCs_RELOAD_PROTECTION"].OptionName, "NAPC_NPCs_RELOAD_PROTECTION")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_RELOAD_PROTECTION"].help_1)
	panel:Help([[ ]])
end

local function NAPC_Panel_3(panel)
	if not LocalPlayer():IsAdmin() then
		return
	end
	panel:Help([[ ]])
	panel:Help(NAPC_Text["Partition Description"].part3)
	panel:Help([[ ]])
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["Combine_AVOID_PLAYER_CROSSHAIR"].OptionName, "Combine_AVOID_PLAYER_CROSSHAIR")
	panel:CheckBox(NAPC_Text["Citizen_AVOID_PLAYER_CROSSHAIR"].OptionName, "Citizen_AVOID_PLAYER_CROSSHAIR")
	panel:CheckBox(NAPC_Text["Metropolice_AVOID_PLAYER_CROSSHAIR"].OptionName, "Metropolice_AVOID_PLAYER_CROSSHAIR")
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_BETTER_SHOTGUNNERS"].OptionName, "NAPC_BETTER_SHOTGUNNERS")
	panel:ControlHelp(NAPC_Text["NAPC_BETTER_SHOTGUNNERS"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_Shotgunner_BigFlyFxxk"].OptionName, "NAPC_Shotgunner_BigFlyFxxk")
	panel:ControlHelp(NAPC_Text["NAPC_Shotgunner_BigFlyFxxk"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_Shotgunner_AltFire"].OptionName, "NAPC_Shotgunner_AltFire")
	panel:ControlHelp(NAPC_Text["NAPC_Shotgunner_AltFire"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_Shotgunner_AltFire"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_Shotgunner_Slug"].OptionName, "NAPC_Shotgunner_Slug")
	panel:ControlHelp(NAPC_Text["NAPC_Shotgunner_Slug"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_Shotgunner_Slug"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_Faster_AR2Balls"].OptionName, "NAPC_Faster_AR2Balls")
	panel:ControlHelp(NAPC_Text["NAPC_Faster_AR2Balls"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_AR2Balls_AOEDmg"].OptionName, "NAPC_AR2Balls_AOEDmg")
	panel:ControlHelp(NAPC_Text["NAPC_AR2Balls_AOEDmg"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_Combine_AR2_AltFire"].OptionName, "NAPC_Combine_AR2_AltFire")
	panel:ControlHelp(NAPC_Text["NAPC_Combine_AR2_AltFire"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_Combine_AR2_AltFire"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_Combine_MoreGrenades"].OptionName, "NAPC_Combine_MoreGrenades")
	panel:ControlHelp(NAPC_Text["NAPC_Combine_MoreGrenades"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_Combine_Cloaking"].OptionName, "NAPC_Combine_Cloaking")
	panel:ControlHelp(NAPC_Text["NAPC_Combine_Cloaking"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_Combine_Cloaking"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_KeyNPCs_Protection"].OptionName, "NAPC_KeyNPCs_Protection")
	panel:ControlHelp(NAPC_Text["NAPC_KeyNPCs_Protection"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_Metropolice_PistolReady"].OptionName, "NAPC_Metropolice_PistolReady")
	panel:ControlHelp(NAPC_Text["NAPC_Metropolice_PistolReady"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_Metropolice_PistolReady"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_Metropolice_StunstickSwitch"].OptionName, "NAPC_Metropolice_StunstickSwitch")
	panel:ControlHelp(NAPC_Text["NAPC_Metropolice_StunstickSwitch"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_Metropolice_StunstickSwitch"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_Manhack_Shooting"].OptionName, "NAPC_Manhack_Shooting")
	panel:ControlHelp(NAPC_Text["NAPC_Manhack_Shooting"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_Manhack_Shooting"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_Medic_Citizen"].OptionName, "NAPC_Medic_Citizen")
	panel:ControlHelp(NAPC_Text["NAPC_Medic_Citizen"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_Turret_AccurateShot"].OptionName, "NAPC_Turret_AccurateShot")
	panel:ControlHelp(NAPC_Text["NAPC_Turret_AccurateShot"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_StriderCannon"].OptionName, "NAPC_StriderCannon")
	panel:ControlHelp(NAPC_Text["NAPC_StriderCannon"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_StriderCannon"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_StriderCn_AgainstPlayer"].OptionName, "NAPC_StriderCn_AgainstPlayer")
	panel:ControlHelp(NAPC_Text["NAPC_StriderCn_AgainstPlayer"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_StriderCn_AgainstPlayer"].help_2)
	panel:CheckBox(NAPC_Text["NAPC_Zombine_FrequentRun"].OptionName, "NAPC_Zombine_FrequentRun")
	panel:ControlHelp(NAPC_Text["NAPC_Zombine_FrequentRun"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_CombineHunter_Enhanced"].OptionName, "NAPC_CombineHunter_Enhanced")
	panel:ControlHelp(NAPC_Text["NAPC_CombineHunter_Enhanced"].help_1)
	panel:CheckBox(NAPC_Text["NAPC_Hunter_TakingDmgSystem"].OptionName, "NAPC_Hunter_TakingDmgSystem")
	panel:ControlHelp(NAPC_Text["NAPC_Hunter_TakingDmgSystem"].help_1)
	panel:Help([[ ]])
end

local function NAPC_Panel_4(panel)
	if not LocalPlayer():IsAdmin() then
		return
	end
	panel:Help([[ ]])
	panel:Help(NAPC_Text["Partition Description"].part4)
	panel:Help([[ ]])
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_NPCs_SCALE_FRIENDLY_Dmg"].OptionName, "NAPC_NPCs_SCALE_FRIENDLY_Dmg")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_SCALE_FRIENDLY_Dmg"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_SCALE_FRIENDLY_Dmg"].help_2)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_SCALE_FRIENDLY_Dmg"].help_3)
	panel:NumSlider(NAPC_Text["Damage Scale"], "NAPC_CUSTOM_FRIENDLY_Dmg", 0, 1, 2)
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_NPCs_ScaleDmg_TO_PLAYERS"].OptionName, "NAPC_NPCs_ScaleDmg_TO_PLAYERS")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_ScaleDmg_TO_PLAYERS"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_ScaleDmg_TO_PLAYERS"].help_2)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_ScaleDmg_TO_PLAYERS"].help_3)
	panel:NumSlider(NAPC_Text["Damage Scale"], "NAPC_Custom_NPCsDmg_TO_PLAYERS", 0, 200, 1)
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_NPCs_CUSTOM_HEALTH"].OptionName, "NAPC_NPCs_CUSTOM_HEALTH")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_CUSTOM_HEALTH"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_CUSTOM_HEALTH"].help_2)
	panel:NumSlider(NAPC_Text["Combine"], "NAPC_Combine_CUSTOM_HEALTH", 0, 1000, 0)
	panel:NumSlider(NAPC_Text["Hunter"], "NAPC_Hunter_CUSTOM_HEALTH", 0, 1000, 0)
	panel:NumSlider(NAPC_Text["Metropolice"], "NAPC_Metropolice_CUSTOM_HEALTH", 0, 1000, 0)
	panel:NumSlider(NAPC_Text["Citizen"], "NAPC_Citizen_CUSTOM_HEALTH", 0, 1000, 0)
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_NPCs_WeaponProficiency"].OptionName, "NAPC_NPCs_WeaponProficiency")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_WeaponProficiency"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_WeaponProficiency"].help_2)
	panel:NumSlider(NAPC_Text["Combine"], "NAPC_Combine_WeaponProficiency", 0, 5, 0)
	panel:NumSlider(NAPC_Text["Metropolice"], "NAPC_Metropolice_WeaponProficiency", 0, 5, 0)
	panel:NumSlider(NAPC_Text["Citizen"], "NAPC_Citizen_WeaponProficiency", 0, 5, 0)
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_NPCs_MoveSpeed"].OptionName, "NAPC_NPCs_MoveSpeed")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_MoveSpeed"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_MoveSpeed"].help_2)
	panel:NumSlider(NAPC_Text["Combine"], "NAPC_Combine_MoveSpeed", 0.01, 2, 2)
	panel:NumSlider(NAPC_Text["Metropolice"], "NAPC_Metropolice_MoveSpeed", 0.01, 2, 2)
	panel:NumSlider(NAPC_Text["Citizen"], "NAPC_Citizen_MoveSpeed", 0.01, 2, 2)
	panel:NumSlider(NAPC_Text["Zombie"], "NAPC_Zombie_MoveSpeed", 0.01, 2, 2)
	panel:NumSlider(NAPC_Text["Vortigaunt"], "NAPC_Vortigaunt_MoveSpeed", 0.01, 2, 2)
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_NPCs_LookDistance"].OptionName, "NAPC_NPCs_LookDistance")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_LookDistance"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_LookDistance"].help_2)
	panel:NumSlider(NAPC_Text["Combine"], "NAPC_Combine_LookDistance", 1, 12000, 0)
	panel:NumSlider(NAPC_Text["Hunter"], "NAPC_Hunter_LookDistance", 1, 12000, 0)
	panel:NumSlider(NAPC_Text["Metropolice"], "NAPC_Metropolice_LookDistance", 1, 12000, 0)
	panel:NumSlider(NAPC_Text["Citizen"], "NAPC_Citizen_LookDistance", 1, 12000, 0)
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_NPCs_AttackRange"].OptionName, "NAPC_NPCs_AttackRange")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_AttackRange"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_AttackRange"].help_2)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_AttackRange"].help_3)
	panel:NumSlider(NAPC_Text["Combine"], "NAPC_Combine_AttackRange", 0.1, 5.0, 1)
	panel:NumSlider(NAPC_Text["Metropolice"], "NAPC_Metropolice_AttackRange", 0.1, 5.0, 1)
	panel:NumSlider(NAPC_Text["Citizen"], "NAPC_Citizen_AttackRange", 0.1, 5.0, 1)
	panel:Help([[ ]])
	panel:CheckBox(NAPC_Text["NAPC_NPCs_CustomFOV"].OptionName, "NAPC_NPCs_CustomFOV")
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_CustomFOV"].help_1)
	panel:ControlHelp(NAPC_Text["NAPC_NPCs_CustomFOV"].help_2)
	panel:NumSlider(NAPC_Text["Combine"], "NAPC_Combine_CustomFOV", 0, 361, 0)
	panel:NumSlider(NAPC_Text["Hunter"], "NAPC_Hunter_CustomFOV", 0, 361, 0)
	panel:NumSlider(NAPC_Text["Metropolice"], "NAPC_Metropolice_CustomFOV", 0, 361, 0)
	panel:NumSlider(NAPC_Text["Citizen"], "NAPC_Citizen_CustomFOV", 0, 361, 0)
	panel:Help([[ ]])
end

local function NAPC_PopulateToolMenu(_)
	spawnmenu.AddToolMenuOption("Options", "Expanded HL2 NPC Behaviors", "NAPC_Panel1", "Part.1", "", "", NAPC_Panel_1)
	spawnmenu.AddToolMenuOption("Options", "Expanded HL2 NPC Behaviors", "NAPC_Panel2", "Part.2", "", "", NAPC_Panel_2)
	spawnmenu.AddToolMenuOption("Options", "Expanded HL2 NPC Behaviors", "NAPC_Panel3", "Part.3", "", "", NAPC_Panel_3)
	spawnmenu.AddToolMenuOption("Options", "Expanded HL2 NPC Behaviors", "NAPC_Panel4", "Part.4", "", "", NAPC_Panel_4)
end

surface.CreateFont("NAPC_Debug_Title", {
	font = "Roboto",
	size = 15,
	weight = 800,
	antialias = true,
})

surface.CreateFont("NAPC_Debug_Text", {
	font = "TargetID",
	size = 12,
	weight = 600,
	antialias = true,
})

surface.CreateFont("NAPC_Debug_Small", {
	font = "TargetID",
	size = 10,
	weight = 500,
	antialias = true,
})

local DebugPayload = nil
local LastDebugReceived = 0

net.Receive("NAPC_DebugData", function()
	local len = net.ReadUInt(32)
	if not len or len <= 0 then
		return
	end

	local compressed = net.ReadData(len)
	if not compressed then
		return
	end

	local jsonStr = util.Decompress(compressed)
	if not jsonStr then
		return
	end

	local data = util.JSONToTable(jsonStr)
	if istable(data) then
		DebugPayload = data
		LastDebugReceived = CurTime()
	end
end)

local function IsAreaVisibleFromEye(pos, eyePos, localPly, corners)
	if not isvector(pos) or not isvector(eyePos) then
		return false
	end

	local function CheckPointVisible(target)
		local tr = util.TraceLine({
			start = eyePos,
			endpos = target,
			mask = MASK_OPAQUE,
			filter = localPly,
		})

		if not tr.Hit then
			return true
		end

		if tr.HitNormal.z > 0.65 and (tr.HitPos - target):LengthSqr() <= 144 then
			return true
		end

		return false
	end

	if CheckPointVisible(pos + Vector(0, 0, 14)) then
		return true
	end

	if corners and #corners > 0 then
		for i = 1, math.min(#corners, 4) do
			local cPos = corners[i]
			if isvector(cPos) and CheckPointVisible(cPos + Vector(0, 0, 14)) then
				return true
			end
		end
	end

	return false
end

local function IsNPCVisibleFromEye(npc, eyePos, localPly)
	if not npc or not npc.pos then
		return false
	end

	local ent = Entity(npc.entIdx)
	local filter = localPly

	local testPoints = {
		npc.eyePos or (npc.pos + Vector(0, 0, 64)),
		npc.pos + Vector(0, 0, 38),
		npc.pos + Vector(0, 0, 16),
	}

	for i = 1, #testPoints do
		local pt = testPoints[i]
		local tr = util.TraceLine({
			start = eyePos,
			endpos = pt,
			mask = MASK_OPAQUE,
			filter = filter,
		})

		if
			not tr.Hit
			or (IsValid(ent) and tr.Entity == ent)
			or tr.Fraction >= 0.95
			or (tr.HitPos - pt):LengthSqr() <= 1024
		then
			return true
		end
	end

	return false
end

local function DrawNAPC_OverheadDebug()
	if not DebugPayload or CurTime() - LastDebugReceived > 2.0 then
		return
	end

	local localPly = LocalPlayer()
	local eyePos = localPly:EyePos()
	local showPriority = GetConVar("NAPC_Debug_ShowPriorityTargets")
		and GetConVar("NAPC_Debug_ShowPriorityTargets"):GetBool()

	for _, npc in ipairs(DebugPayload.npcs or {}) do
		local npcWorldPos = npc.pos + Vector(0, 0, 80)
		local dist = eyePos:Distance(npc.pos)

		if dist <= 2500 then
			local screenData = npcWorldPos:ToScreen()
			if screenData.visible and IsNPCVisibleFromEye(npc, eyePos, localPly) then
				local x = screenData.x
				local y = screenData.y

				local hasTopScores = npc.ooda and npc.ooda.topScores and #npc.ooda.topScores > 0
				local boxWidth = 230
				local boxHeight = 110
				if showPriority and npc.priorityTargetIdx then
					boxHeight = boxHeight + 14
				end
				if hasTopScores then
					boxHeight = boxHeight + math.min(#npc.ooda.topScores, 3) * 12 + 8
				end

				local drawX = x - (boxWidth / 2)
				local drawY = y - boxHeight - 10

				surface.SetDrawColor(12, 16, 24, 215)
				surface.DrawRect(drawX, drawY, boxWidth, boxHeight)

				local roleColor = Color(0, 190, 255)
				if npc.ooda and npc.ooda.decision then
					local dec = npc.ooda.decision
					if string.find(dec, "SNIPER") then
						roleColor = Color(50, 255, 180)
					elseif string.find(dec, "RETREAT") or string.find(dec, "ROUT") then
						roleColor = Color(255, 65, 65)
					elseif string.find(dec, "FLANK") then
						roleColor = Color(255, 175, 0)
					elseif string.find(dec, "SUPPRESS") then
						roleColor = Color(160, 90, 255)
					elseif string.find(dec, "HIGH_GROUND") or string.find(dec, "OVERWATCH") then
						roleColor = Color(0, 200, 255)
					end
				end

				surface.SetDrawColor(roleColor.r, roleColor.g, roleColor.b, 255)
				surface.DrawOutlinedRect(drawX, drawY, boxWidth, boxHeight, 1)

				draw.SimpleText(
					string.format("[%d] %s", npc.entIdx, npc.class),
					"NAPC_Debug_Title",
					drawX + 6,
					drawY + 3,
					Color(255, 255, 255),
					TEXT_ALIGN_LEFT
				)
				draw.SimpleText(
					string.format("HP: %d/%d", npc.health, npc.maxHealth),
					"NAPC_Debug_Title",
					drawX + boxWidth - 6,
					drawY + 3,
					Color(80, 255, 120),
					TEXT_ALIGN_RIGHT
				)

				local squadTxt = string.format("Squad: %s", npc.squadID or "NONE")
				draw.SimpleText(
					squadTxt,
					"NAPC_Debug_Small",
					drawX + 6,
					drawY + 20,
					Color(190, 190, 190),
					TEXT_ALIGN_LEFT
				)

				if npc.ooda then
					draw.SimpleText(
						string.format("Decision: %s", npc.ooda.decision or "NONE"),
						"NAPC_Debug_Text",
						drawX + 6,
						drawY + 33,
						roleColor,
						TEXT_ALIGN_LEFT
					)
					draw.SimpleText(
						string.format("Util: %.1f", npc.ooda.utility or 0),
						"NAPC_Debug_Small",
						drawX + boxWidth - 6,
						drawY + 33,
						Color(255, 220, 100),
						TEXT_ALIGN_RIGHT
					)

					draw.SimpleText(
						string.format("Pred: %s", npc.ooda.predictedReaction or "NONE"),
						"NAPC_Debug_Small",
						drawX + 6,
						drawY + 47,
						Color(200, 200, 200),
						TEXT_ALIGN_LEFT
					)
					draw.SimpleText(
						string.format("Dealt: %d | Taken: %d", npc.ooda.dmgDealt or 0, npc.ooda.dmgTaken or 0),
						"NAPC_Debug_Small",
						drawX + 6,
						drawY + 60,
						Color(160, 220, 255),
						TEXT_ALIGN_LEFT
					)
					draw.SimpleText(
						string.format("Lock: %.1fs | Loop: %.2fs", npc.ooda.lockTime or 0, npc.ooda.nextCycle or 0),
						"NAPC_Debug_Small",
						drawX + boxWidth - 6,
						drawY + 60,
						Color(175, 175, 175),
						TEXT_ALIGN_RIGHT
					)
				end

				local enemyTxt = string.format("Enemy: %s (%d u)", npc.enemyClass or "none", npc.enemyDist or 0)
				local enemyCol = npc.hasLOS and Color(255, 90, 90) or Color(150, 150, 150)
				draw.SimpleText(enemyTxt, "NAPC_Debug_Small", drawX + 6, drawY + 74, enemyCol, TEXT_ALIGN_LEFT)

				local currentY = drawY + 88
				if showPriority and npc.priorityTargetIdx then
					draw.SimpleText(
						string.format("★ FOCUS: [%d] (%s)", npc.priorityTargetIdx, npc.priorityReason or "PRIORITY"),
						"NAPC_Debug_Small",
						drawX + 6,
						currentY,
						Color(255, 215, 0),
						TEXT_ALIGN_LEFT
					)
					currentY = currentY + 14
				end

				if hasTopScores then
					surface.SetDrawColor(255, 255, 255, 30)
					surface.DrawLine(drawX + 4, currentY, drawX + boxWidth - 4, currentY)

					local scoreY = currentY + 4
					local count = math.min(#npc.ooda.topScores, 3)
					for sIdx = 1, count do
						local item = npc.ooda.topScores[sIdx]
						if item then
							local scoreCol = (item.score or 0) >= 0 and Color(100, 255, 100) or Color(255, 100, 100)
							draw.SimpleText(
								item.name or "UNKNOWN",
								"NAPC_Debug_Small",
								drawX + 6,
								scoreY,
								Color(170, 170, 170),
								TEXT_ALIGN_LEFT
							)
							draw.SimpleText(
								string.format("%+.2f", item.score or 0),
								"NAPC_Debug_Small",
								drawX + boxWidth - 6,
								scoreY,
								scoreCol,
								TEXT_ALIGN_RIGHT
							)
							scoreY = scoreY + 12
						end
					end
				end
			end
		end
	end
end

local function DrawNAPC_AreaScoresDebug()
	local cv = GetConVar("NAPC_Debug_AreaScores")
	if not cv or not cv:GetBool() then
		return
	end

	if not DebugPayload or not DebugPayload.areaScores or CurTime() - LastDebugReceived > 2.0 then
		return
	end

	local localPly = LocalPlayer()
	local eyePos = localPly:EyePos()
	local cx, cy = ScrW() * 0.5, ScrH() * 0.5

	for _, area in ipairs(DebugPayload.areaScores) do
		if area and area.pos and isvector(area.pos) then
			local dist = eyePos:Distance(area.pos)
			if dist <= 2400 and IsAreaVisibleFromEye(area.pos, eyePos, localPly, area.corners) then
				local screen = (area.pos + Vector(0, 0, 14)):ToScreen()
				if screen.visible then
					local distToCrosshair = math.sqrt((screen.x - cx) ^ 2 + (screen.y - cy) ^ 2)
					local isHovered = distToCrosshair < 70 and dist <= 1600

					local factions = area.factions
						or {
							[area.primaryFaction or "combine"] = {
								danger = area.danger or 0,
								flank = area.flank or 0,
								overlook = area.overlook or 0,
								deaths = area.deaths or 0,
								fired = area.fired or 0,
								seen = area.seen or 0,
							},
						}

					local hasSignificance = isHovered
					if not hasSignificance then
						for _, fData in pairs(factions) do
							if
								(fData.danger or 0) >= 0.8
								or (fData.flank or 0) >= 0.35
								or (fData.overlook or 0) >= 0.35
							then
								hasSignificance = true
								break
							end
						end
					end

					if hasSignificance then
						if isHovered then
							local cardW = 270
							local activeFactions = { "combine", "resistance" }
							local cardH = 24 + (#activeFactions * 26)
							local cardX = screen.x - (cardW * 0.5)
							local cardY = screen.y - cardH - 10

							surface.SetDrawColor(10, 14, 20, 235)
							surface.DrawRect(cardX, cardY, cardW, cardH)
							surface.SetDrawColor(0, 180, 255, 255)
							surface.DrawOutlinedRect(cardX, cardY, cardW, cardH, 1)

							draw.SimpleText(
								string.format("NavArea #%d (Factions)", area.id),
								"NAPC_Debug_Text",
								cardX + 6,
								cardY + 4,
								Color(255, 255, 255),
								TEXT_ALIGN_LEFT
							)

							local rowY = cardY + 22
							for _, fName in ipairs(activeFactions) do
								local fData = factions[fName]
									or { danger = 0, flank = 0, overlook = 0, deaths = 0, fired = 0, seen = 0 }
								local fCol = (fName == "combine") and Color(0, 200, 255) or Color(255, 175, 40)
								local fLabel = (fName == "combine") and "CMB" or "RES"

								draw.SimpleText(
									string.format("[%s]", fLabel),
									"NAPC_Debug_Small",
									cardX + 6,
									rowY,
									fCol,
									TEXT_ALIGN_LEFT
								)
								draw.SimpleText(
									string.format("D: %.1f", fData.danger or 0),
									"NAPC_Debug_Small",
									cardX + 44,
									rowY,
									((fData.danger or 0) >= 2) and Color(255, 80, 80) or Color(220, 220, 220),
									TEXT_ALIGN_LEFT
								)
								draw.SimpleText(
									string.format("F: %.2f", fData.flank or 0),
									"NAPC_Debug_Small",
									cardX + 96,
									rowY,
									((fData.flank or 0) >= 0.35) and Color(255, 215, 80) or Color(160, 160, 160),
									TEXT_ALIGN_LEFT
								)
								draw.SimpleText(
									string.format("R: %.2f", fData.overlook or 0),
									"NAPC_Debug_Small",
									cardX + 150,
									rowY,
									((fData.overlook or 0) >= 0.35) and Color(0, 230, 255) or Color(160, 160, 160),
									TEXT_ALIGN_LEFT
								)
								draw.SimpleText(
									string.format(
										"(☠%d 💥%d 👁%d)",
										math.floor(fData.deaths or 0),
										math.floor(fData.fired or 0),
										math.floor(fData.seen or 0)
									),
									"NAPC_Debug_Small",
									cardX + cardW - 6,
									rowY,
									Color(160, 160, 160),
									TEXT_ALIGN_RIGHT
								)

								rowY = rowY + 24
							end
						else
							local badgeLines = {}
							for _, fName in ipairs({ "combine", "resistance" }) do
								local fData = factions[fName]
								if fData then
									local d = fData.danger or 0
									local f = fData.flank or 0
									local r = fData.overlook or 0
									if d >= 0.8 or f >= 0.35 or r >= 0.35 then
										local tag = (fName == "combine") and "CMB" or "RES"
										local txt = string.format("%s: D:%.1f", tag, d)
										if f >= 0.35 then
											txt = txt .. string.format(" F:%.2f", f)
										end
										if r >= 0.35 then
											txt = txt .. string.format(" R:%.2f", r)
										end
										badgeLines[#badgeLines + 1] = {
											text = txt,
											col = (fName == "combine") and Color(0, 200, 255) or Color(255, 175, 40),
										}
									end
								end
							end

							if #badgeLines > 0 then
								local lineH = 14
								local totalH = #badgeLines * lineH + 4
								local startY = screen.y - (totalH * 0.5)

								surface.SetFont("NAPC_Debug_Small")
								local maxW = 0
								for _, lineData in ipairs(badgeLines) do
									local tw = surface.GetTextSize(lineData.text)
									if tw > maxW then
										maxW = tw
									end
								end
								local totalW = maxW + 12

								surface.SetDrawColor(12, 16, 22, 220)
								surface.DrawRect(screen.x - (totalW * 0.5), startY, totalW, totalH)
								surface.SetDrawColor(255, 255, 255, 80)
								surface.DrawOutlinedRect(screen.x - (totalW * 0.5), startY, totalW, totalH, 1)

								for idx, lineData in ipairs(badgeLines) do
									draw.SimpleText(
										lineData.text,
										"NAPC_Debug_Small",
										screen.x,
										startY + 2 + ((idx - 1) * lineH),
										lineData.col,
										TEXT_ALIGN_CENTER,
										TEXT_ALIGN_TOP
									)
								end
							end
						end
					end
				end
			end
		end
	end
end

local function DrawNAPC_HUDDashboard()
	if not DebugPayload or CurTime() - LastDebugReceived > 2.0 then
		return
	end

	local panelW = 340
	local panelX = ScrW() - panelW - 20
	local panelY = 60
	local headerH = 26

	local squadCount = 0
	for _ in pairs(DebugPayload.squads or {}) do
		squadCount = squadCount + 1
	end

	local showPriority = GetConVar("NAPC_Debug_ShowPriorityTargets")
		and GetConVar("NAPC_Debug_ShowPriorityTargets"):GetBool()
	local dangerCount = #(DebugPayload.dangerZones or {})
	local areaCount = #(DebugPayload.areaScores or {})
	local priorityCount = showPriority and #(DebugPayload.priorityTargets or {}) or 0

	local dynamicH = 85
		+ (squadCount * 36)
		+ (dangerCount * 15)
		+ (priorityCount > 0 and (22 + (priorityCount * 15)) or 0)

	surface.SetDrawColor(8, 12, 18, 230)
	surface.DrawRect(panelX, panelY, panelW, dynamicH)

	surface.SetDrawColor(0, 180, 255, 255)
	surface.DrawRect(panelX, panelY, panelW, headerH)
	surface.DrawOutlinedRect(panelX, panelY, panelW, dynamicH, 1)

	draw.SimpleText(
		"NAPC AVOIDANCE & MANEUVER (DEBUG)",
		"NAPC_Debug_Title",
		panelX + 8,
		panelY + 5,
		Color(255, 255, 255),
		TEXT_ALIGN_LEFT
	)

	local curY = panelY + 32
	draw.SimpleText(
		string.format(
			"Active NPCs: %d  |  Scored Areas: %d  |  Casualties: %d  |  Missiles: %d",
			#(DebugPayload.npcs or {}),
			areaCount,
			DebugPayload.casualties or 0,
			DebugPayload.missiles or 0
		),
		"NAPC_Debug_Text",
		panelX + 8,
		curY,
		Color(220, 220, 220),
		TEXT_ALIGN_LEFT
	)
	curY = curY + 18

	surface.SetDrawColor(255, 255, 255, 40)
	surface.DrawLine(panelX + 6, curY, panelX + panelW - 6, curY)
	curY = curY + 6

	draw.SimpleText("MANEUVER SQUADS:", "NAPC_Debug_Title", panelX + 8, curY, Color(255, 200, 80), TEXT_ALIGN_LEFT)
	curY = curY + 16

	if squadCount == 0 then
		draw.SimpleText(
			"No active combat squads coordinated.",
			"NAPC_Debug_Small",
			panelX + 12,
			curY,
			Color(140, 140, 140),
			TEXT_ALIGN_LEFT
		)
		curY = curY + 14
	else
		for sqID, sq in pairs(DebugPayload.squads) do
			local roleCol = Color(0, 200, 255)
			if sq.role == "SQUAD_ROLE_SUPPRESS" then
				roleCol = Color(180, 100, 255)
			elseif sq.role == "SQUAD_ROLE_ASSAULT" then
				roleCol = Color(255, 90, 90)
			elseif sq.role == "SQUAD_ROLE_FLANK" then
				roleCol = Color(255, 180, 0)
			end

			draw.SimpleText(
				string.format("[%s] Role: %s", tostring(sqID or "UNKNOWN"), tostring(sq.role or "AUTONOMOUS")),
				"NAPC_Debug_Text",
				panelX + 10,
				curY,
				roleCol,
				TEXT_ALIGN_LEFT
			)
			draw.SimpleText(
				string.format("PWR: %.1f | Members: %d", sq.totalFirepower or 0, #(sq.members or {})),
				"NAPC_Debug_Small",
				panelX + panelW - 10,
				curY,
				Color(200, 200, 200),
				TEXT_ALIGN_RIGHT
			)
			curY = curY + 14

			local coveringTxt = sq.isCoveringAllies and "Providing Suppression"
				or (sq.hasCoveringFire and "Covered by Allies" or "Autonomous Maneuver")

			draw.SimpleText(coveringTxt, "NAPC_Debug_Small", panelX + 18, curY, Color(150, 220, 150), TEXT_ALIGN_LEFT)
			curY = curY + 18
		end
	end

	if priorityCount > 0 then
		surface.SetDrawColor(255, 255, 255, 40)
		surface.DrawLine(panelX + 6, curY, panelX + panelW - 6, curY)
		curY = curY + 6

		draw.SimpleText(
			"ACTIVE FOCUS FIRE TARGETS:",
			"NAPC_Debug_Title",
			panelX + 8,
			curY,
			Color(255, 215, 0),
			TEXT_ALIGN_LEFT
		)
		curY = curY + 16

		for _, pt in ipairs(DebugPayload.priorityTargets) do
			draw.SimpleText(
				string.format(
					"[%d] %s (%d%% HP) - %s",
					pt.entIdx or 0,
					tostring(pt.class or "unknown"),
					math.floor((pt.hpRatio or 1) * 100),
					tostring(pt.reason or "PRIORITY")
				),
				"NAPC_Debug_Small",
				panelX + 12,
				curY,
				Color(255, 225, 120),
				TEXT_ALIGN_LEFT
			)
			draw.SimpleText(
				string.format("%d Focusers", pt.targetedBy or 0),
				"NAPC_Debug_Small",
				panelX + panelW - 10,
				curY,
				Color(255, 180, 0),
				TEXT_ALIGN_RIGHT
			)
			curY = curY + 14
		end
	end

	if dangerCount > 0 then
		surface.SetDrawColor(255, 255, 255, 40)
		surface.DrawLine(panelX + 6, curY, panelX + panelW - 6, curY)
		curY = curY + 6

		draw.SimpleText(
			"ACTIVE LETHAL DANGER ZONES:",
			"NAPC_Debug_Title",
			panelX + 8,
			curY,
			Color(255, 80, 80),
			TEXT_ALIGN_LEFT
		)
		curY = curY + 16

		for _, z in ipairs(DebugPayload.dangerZones) do
			draw.SimpleText(
				string.format("R: %d | Sev: %d | Expire in %.1fs", z.radius or 0, z.severity or 0, z.timeLeft or 0),
				"NAPC_Debug_Small",
				panelX + 12,
				curY,
				Color(255, 160, 160),
				TEXT_ALIGN_LEFT
			)
			curY = curY + 14
		end
	end
end

hook.Add("HUDPaint", "NAPC_DebugHUD_Render", function()
	if GetConVar("developer"):GetInt() > 0 then
		DrawNAPC_OverheadDebug()
		DrawNAPC_AreaScoresDebug()
		DrawNAPC_HUDDashboard()
	end
end)

hook.Add("PostDrawTranslucentRenderables", "NAPC_Debug3D_Render", function()
	if GetConVar("developer"):GetInt() <= 0 or not DebugPayload then
		return
	end

	for _, arc in ipairs(DebugPayload.smgGrenadeArcs or {}) do
		local arcCol = arc.valid and Color(255, 130, 0, 240) or Color(255, 50, 50, 240)
		if arc.hitEnemy then
			arcCol = Color(255, 80, 255, 255)
		end

		local pts = arc.path or {}
		for i = 1, #pts - 1 do
			if pts[i] and pts[i + 1] then
				render.DrawLine(pts[i], pts[i + 1], arcCol, false)
			end
		end

		if arc.finalPos and isvector(arc.finalPos) then
			render.DrawWireframeSphere(arc.finalPos, 14, 8, 8, arcCol, false)
			render.DrawWireframeSphere(arc.finalPos, 220, 16, 16, Color(arcCol.r, arcCol.g, arcCol.b, 60), false)
			render.DrawWireframeBox(
				arc.finalPos,
				Angle(0, 0, 0),
				Vector(-6, -6, -6),
				Vector(6, 6, 6),
				Color(255, 255, 255, 220),
				false
			)
		end
	end

	for _, arc in ipairs(DebugPayload.grenadeArcs or {}) do
		local arcCol = arc.valid and Color(0, 255, 120, 230) or Color(255, 50, 50, 230)
		if arc.hitEnemy then
			arcCol = Color(0, 230, 255, 255)
		end

		local pts = arc.path or {}
		for i = 1, #pts - 1 do
			if pts[i] and pts[i + 1] then
				render.DrawLine(pts[i], pts[i + 1], arcCol, false)
			end
		end

		for _, bPos in ipairs(arc.bounces or {}) do
			if isvector(bPos) then
				render.DrawWireframeSphere(bPos, 6, 6, 6, Color(255, 200, 0, 220), false)
			end
		end

		if arc.finalPos and isvector(arc.finalPos) then
			render.DrawWireframeSphere(arc.finalPos, 14, 8, 8, arcCol, false)
			render.DrawWireframeSphere(arc.finalPos, 220, 16, 16, Color(arcCol.r, arcCol.g, arcCol.b, 60), false)
		end
	end

	for _, arc in ipairs(DebugPayload.energyBallArcs or {}) do
		local arcCol = arc.valid and Color(255, 150, 0, 240) or Color(255, 50, 50, 240)
		if arc.hitEnemy then
			arcCol = Color(255, 225, 50, 255)
		end

		local pts = arc.path or {}
		for i = 1, #pts - 1 do
			if pts[i] and pts[i + 1] then
				render.DrawLine(pts[i], pts[i + 1], arcCol, false)
			end
		end

		for _, bPos in ipairs(arc.bounces or {}) do
			if isvector(bPos) then
				render.DrawWireframeSphere(bPos, 8, 8, 8, Color(0, 240, 255, 240), false)
				render.DrawWireframeBox(
					bPos,
					Angle(0, 0, 0),
					Vector(-5, -5, -5),
					Vector(5, 5, 5),
					Color(255, 255, 255, 220),
					false
				)
			end
		end

		if arc.finalPos and isvector(arc.finalPos) then
			render.DrawWireframeSphere(arc.finalPos, 16, 8, 8, arcCol, false)
			render.DrawWireframeSphere(arc.finalPos, 80, 12, 12, Color(arcCol.r, arcCol.g, arcCol.b, 70), false)
		end
	end

	local showAreaScores = GetConVar("NAPC_Debug_AreaScores") and GetConVar("NAPC_Debug_AreaScores"):GetBool()
	if showAreaScores then
		local localPly = LocalPlayer()
		local eyePos = IsValid(localPly) and localPly:EyePos() or nil

		for _, area in ipairs(DebugPayload.areaScores or {}) do
			if area and area.pos and isvector(area.pos) then
				if eyePos and not IsAreaVisibleFromEye(area.pos, eyePos, localPly, area.corners) then
					continue
				end

				local factions = area.factions
					or {
						[area.primaryFaction or "combine"] = {
							danger = area.danger or 0,
							flank = area.flank or 0,
							overlook = area.overlook or 0,
						},
					}

				local worstDanger = area.danger or 0
				for _, fData in pairs(factions) do
					if (fData.danger or 0) > worstDanger then
						worstDanger = fData.danger
					end
				end

				local col = Color(100, 255, 100, 140)
				if worstDanger >= 4 then
					col = Color(255, 50, 50, 200)
				elseif worstDanger >= 2 then
					col = Color(255, 160, 40, 180)
				elseif worstDanger >= 0.8 then
					col = Color(255, 230, 80, 160)
				end

				local corners = area.corners
				if
					corners
					and #corners == 4
					and isvector(corners[1])
					and isvector(corners[2])
					and isvector(corners[3])
					and isvector(corners[4])
				then
					render.DrawLine(corners[1], corners[2], col, false)
					render.DrawLine(corners[2], corners[3], col, false)
					render.DrawLine(corners[3], corners[4], col, false)
					render.DrawLine(corners[4], corners[1], col, false)
				end

				for fName, fData in pairs(factions) do
					local fCol = (fName == "combine") and Color(0, 210, 255, 200) or Color(255, 175, 40, 200)
					local fOffset = (fName == "combine") and Vector(-4, 0, 14) or Vector(4, 0, 14)

					if (fData.flank or 0) > 0.35 then
						render.DrawWireframeSphere(area.pos + fOffset, 8, 6, 6, fCol, false)
					end

					if (fData.overlook or 0) > 0.35 then
						render.DrawWireframeBox(
							area.pos + fOffset,
							Angle(0, 0, 0),
							Vector(-5, -5, 0),
							Vector(5, 5, 14),
							fCol,
							false
						)
					end
				end
			end
		end
	end

	local showWindows = GetConVar("NAPC_Debug_ShowWindows") and GetConVar("NAPC_Debug_ShowWindows"):GetBool()
	if showWindows then
		for _, win in ipairs(DebugPayload.windows or {}) do
			if win and win.pos and win.mins and win.maxs then
				local winCol = Color(0, 230, 255, 220)
				render.DrawWireframeBox(win.pos, win.angles or Angle(0, 0, 0), win.mins, win.maxs, winCol, false)

				local center = win.center or (win.pos + (win.mins + win.maxs) * 0.5)
				render.DrawWireframeSphere(center, 5, 6, 6, Color(255, 255, 255, 240), false)
			end
		end
	end

	for _, z in ipairs(DebugPayload.dangerZones or {}) do
		if z and z.pos and isvector(z.pos) then
			render.DrawWireframeSphere(z.pos, z.radius or 120, 12, 12, Color(255, 40, 40, 100), false)
		end
	end

	local showPriorityTargets = GetConVar("NAPC_Debug_ShowPriorityTargets")
		and GetConVar("NAPC_Debug_ShowPriorityTargets"):GetBool()
	if showPriorityTargets then
		for _, pt in ipairs(DebugPayload.priorityTargets or {}) do
			if pt and pt.wsc and isvector(pt.wsc) then
				local pulse = math.abs(math.sin(CurTime() * 3.5)) * 6
				render.DrawWireframeSphere(pt.wsc, 18 + pulse, 10, 10, Color(255, 215, 0, 240), false)
				render.DrawWireframeBox(
					pt.wsc,
					Angle(0, CurTime() * 45, 0),
					Vector(-12, -12, -12),
					Vector(12, 12, 12),
					Color(255, 180, 0, 220),
					false
				)
			end
		end
	end

	for _, npc in ipairs(DebugPayload.npcs or {}) do
		if npc and npc.sniperPos and isvector(npc.sniperPos) then
			local sniperCol = Color(50, 255, 180, 240)

			render.DrawLine(npc.pos + Vector(0, 0, 32), npc.sniperPos + Vector(0, 0, 32), sniperCol, false)
			render.DrawWireframeBox(
				npc.sniperPos,
				Angle(0, 0, 0),
				Vector(-12, -12, 0),
				Vector(12, 12, 64),
				sniperCol,
				false
			)
			render.DrawWireframeSphere(npc.sniperPos + Vector(0, 0, 60), 8, 8, 8, Color(255, 255, 255, 240), false)

			if npc.enemyIdx then
				for _, enemyNpc in ipairs(DebugPayload.npcs or {}) do
					if enemyNpc.entIdx == npc.enemyIdx then
						render.DrawLine(
							npc.sniperPos + Vector(0, 0, 60),
							enemyNpc.eyePos or (enemyNpc.pos + Vector(0, 0, 50)),
							Color(255, 80, 120, 180),
							false
						)
						break
					end
				end
			end
		end
	end

	for _, npc in ipairs(DebugPayload.npcs or {}) do
		if npc and npc.pos and isvector(npc.pos) then
			if showPriorityTargets and npc.priorityTargetIdx then
				for _, pt in ipairs(DebugPayload.priorityTargets or {}) do
					if pt.entIdx == npc.priorityTargetIdx and pt.wsc then
						render.DrawLine(
							npc.eyePos or (npc.pos + Vector(0, 0, 48)),
							pt.wsc,
							Color(255, 215, 0, 160),
							false
						)
						break
					end
				end
			end

			if npc.waypointPath and istable(npc.waypointPath) and #npc.waypointPath > 1 then
				local wps = npc.waypointPath
				local activeIdx = npc.waypointIndex or 1

				if wps[activeIdx] and isvector(wps[activeIdx]) then
					render.DrawLine(
						npc.pos + Vector(0, 0, 36),
						wps[activeIdx] + Vector(0, 0, 36),
						Color(255, 200, 0, 240),
						false
					)
				end

				for i = 1, #wps do
					local pt = wps[i]
					if isvector(pt) then
						local isCurrent = (i == activeIdx)
						local nodeCol = isCurrent and Color(255, 80, 0, 255) or Color(255, 180, 0, 180)
						render.DrawWireframeBox(pt, Angle(0, 0, 0), Vector(-6, -6, 0), Vector(6, 6, 24), nodeCol, false)

						if i < #wps and isvector(wps[i + 1]) then
							render.DrawLine(
								pt + Vector(0, 0, 24),
								wps[i + 1] + Vector(0, 0, 24),
								Color(255, 150, 0, 220),
								false
							)
						end
					end
				end
			elseif npc.forcedGo and isvector(npc.forcedGo) and not npc.sniperPos then
				render.DrawLine(
					npc.pos + Vector(0, 0, 32),
					npc.forcedGo + Vector(0, 0, 32),
					Color(0, 255, 120, 220),
					false
				)
				render.DrawWireframeBox(
					npc.forcedGo,
					Angle(0, 0, 0),
					Vector(-8, -8, 0),
					Vector(8, 8, 48),
					Color(0, 255, 120, 200),
					false
				)
			end
		end
	end
end)

hook.Add("PopulateToolMenu", "NAPC_HookName", NAPC_PopulateToolMenu)
