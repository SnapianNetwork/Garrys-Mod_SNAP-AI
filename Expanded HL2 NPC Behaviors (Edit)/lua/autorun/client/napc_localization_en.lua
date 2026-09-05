NAPC_Localization_EN = {
	["Combine"] = "Combine",
	["Hunter"] = "Hunter",
	["Metropolice"] = "Metropolice",
	["Citizen"] = "Citizen",
	["Zombie"] = "Zombie",
	["Vortigaunt"] = "Vortigaunt",
	["Damage Scale"] = "Damage Scale",

	["Partition Description"] = {
		note = "Note: This addon only works properly in the default 66-tick environment. It may cause issues if the tick rate of current server is changed.",
		part1 = "Each of these functions can decide the internal workings of the entire addon.",
		part2 = "Each of these functions can apply to Combine, Citizen, Metropolice, or at least two of the three.",
		part3 = "Each of these functions can only apply to one certain type of NPCs or entities.",
		part4 = "Each of these functions can change the numerical attributes of NPCs or entities.",
	},

	["NPC_AVOID_PLAYER_CROSSHAIR"] = {
		OptionName = "The Main Toggle‌",
		help_1 = "To enable this addon or disable it completely.",
		help_2 = "Disable this to make the other options below stop working.",
	},
	["NAPC_WorksOn_ANPlus"] = {
		OptionName = "Enable ANPlus Support",
		help_1 = "Ignore this option if you do not know what ANPlus is.",
		help_2 = "Disable this when you think ANPlus NPCs behave abnormally due to this addon.",
	},
	["NAPC_NPCs_OODA"] = {
		OptionName = "Enable OODA Tactical AI Loop",
		help_1 = "Enables dynamic Observe-Orient-Decide-Act cognitive loop for HL2 NPCs.",
		help_2 = "NPCs will assess threats, coordinate flanking routes, provide suppression, and adapt to combat flow.",
	},
	["NAPC_OODA_SquadTactics"] = {
		OptionName = "Enable OODA Squad Coordination",
		help_1 = "Allows NPCs in the same squad to communicate targets and create crossfire angles.",
		help_2 = "When one NPC suppresses an enemy, others will attempt to flank.",
	},
	["NAPC_OODA_Aggression"] = {
		OptionName = "OODA Aggression Bias",
		help_1 = "1.0 = Balanced.",
		help_2 = "Higher values make NPCs push aggressively; lower values make them prioritize cover and defense.",
	},
	["Combine_AVOID_PLAYER_CROSSHAIR"] = {
		OptionName = "Enable Combine Avoid Crosshair",
	},
	["Citizen_AVOID_PLAYER_CROSSHAIR"] = {
		OptionName = "Enable Citizen Avoid Crosshair",
	},
	["Metropolice_AVOID_PLAYER_CROSSHAIR"] = {
		OptionName = "Enable Metropolice Avoid Crosshair",
	},
	["NAPC_NPCs_MustReloadNow"] = {
		OptionName = "Enable NPCs Reload Timely",
		help_1 = "To make NPCs reload immediately when their weapons are running out of ammunition.",
		help_2 = "I highly recommend using this function UNLESS the reloading behaviors of NPCs are affected by other addons.",
	},
	["NPC_SHOOT_MORE_FREQUENTLY"] = {
		OptionName = "Enable NPCs Shoot Frequently",
		help_1 = "To make NPCs open fire more frequently in combat.",
		help_2 = "This does not work on shotgunners.",
	},
	["NAPC_NPCs_FasterChasing"] = {
		OptionName = "Enable NPCs Focus On Chasing",
		help_1 = "To make NPCs faster approach an enemy when they find the enemy too far to shoot at.",
		help_2 = "When pursuing an enemy player, NPCs will NOT avoid player's crosshair until they catch him.",
	},
	["NAPC_NPCs_CAN_JUMP"] = {
		OptionName = "Enable NPCs Jump",
		help_1 = "To make NPCs jump sometimes (I do not exactly know when).",
	},
	["NAPC_WALK_AROUND"] = {
		OptionName = "Enable NPCs Patrol",
		help_1 = "To make NPCs walk around when they are not in combat.",
		help_2 = "This does not work on metropolices.",
	},
	["NAPC_NPCs_Stealth"] = {
		OptionName = "Enable NPCs Stealth",
		help_1 = "To make NPCs move quietly when an enemy is hiding nearby.",
		help_2 = "This does not work on metropolices.",
	},
	["NAPC_NPCs_NoFlinch"] = {
		OptionName = "Enable NPCs No Flinch",
		help_1 = "To make NPCs not flinch while they are taking damage.",
	},
	["NAPC_RUN_AND_SHOOT"] = {
		OptionName = "Enable NPCs Move Often",
		help_1 = "To make NPCs run more often while shooting unless they have to reload.",
		help_2 = "This does not work on shotgunners.",
	},
	["NAPC_NPCs_TakeCaution"] = {
		OptionName = "Enable NPCs Take Caution",
		help_1 = "To make NPCs more careful and more tactical when the enemies are out of sight.",
	},
	["NAPC_NPCs_AimForHead"] = {
		OptionName = "Enable NPCs Aim For Head",
		help_1 = "To make NPCs able to shoot at an enemy's head when the enemy is close enough.",
		help_2 = "This does not work on shotgunners.",
	},
	["NAPC_NPCs_QuickReloading"] = {
		OptionName = "Enable NPCs Fast Reloading",
		help_1 = "To make NPCs act more quickly when they are ready to reload the weapons.",
	},
	["NAPC_ATTACK_TOGETHER"] = {
		OptionName = "Enable NPCs More Firepower",
		help_1 = "To make NPCs more aggressive in combat.",
		help_2 = "But this will force NPCs to do fewer tactics.",
	},
	["NAPC_NPCs_HIDE_FROM_DMG"] = {
		OptionName = "Enable NPCs Hide From Attack",
		help_1 = "To make NPCs hide away when they take damage from unexpected directions.",
		help_2 = 'This cannot be enabled simultaneously with "Enable NPCs Look For Attacker".',
	},
	["NAPC_NPCs_LookFor_Attacker"] = {
		OptionName = "Enable NPCs Look For Attacker",
		help_1 = "To make NPCs try to find out the enemy after they take damage.",
		help_2 = 'This cannot be enabled simultaneously with "Enable NPCs Hide From Attack".',
	},
	["NAPC_NPCs_StrikeBack"] = {
		OptionName = "Enable NPCs Stop Seeking Cover",
		help_1 = "To make NPCs directly strike back when they are spotted by the enemies during cover-seeking.",
	},
	["NAPC_NPCs_EnemyNearby"] = {
		OptionName = "Enable NPCs EnemyTooClose Action",
		help_1 = "To make NPCs behave better if they find themselves too close to the enemies.",
	},
	["NAPC_NPCs_IGNORE_PLAYER_Dmg"] = {
		OptionName = "Enable NPCs Ignore Player FriendlyFire",
		help_1 = "To make NPCs take no damage from friendly player's attack.",
		help_2 = "This may not work on certain types of damage.",
	},
	["NAPC_NPCs_COWER_PROTECTION"] = {
		OptionName = "Enable NPCs Cowering Protection",
		help_1 = "To make NPCs take only 60% damage while they are cowering.",
		help_2 = "Cowering usually means a gesture of NPC protecting its head with both arms.",
	},
	["NAPC_NPCs_RELOAD_PROTECTION"] = {
		OptionName = "Enable NPCs Reloading Protection",
		help_1 = "To make NPCs take only 80% damage while they are reloading their weapons.",
	},
	["NAPC_BETTER_SHOTGUNNERS"] = {
		OptionName = "Enable Better Shotgunners",
		help_1 = "To make the shotgunners more active in combat.",
	},
	["NAPC_Shotgunner_BigFlyFxxk"] = {
		OptionName = "Enable Combine Shotgunners Pounce",
		help_1 = "To make the Combine shotgunners able to do big jump toward an enemy player.",
	},
	["NAPC_Faster_AR2Balls"] = {
		OptionName = "Enable Faster Energy Ball",
		help_1 = "To make NPC-fired energy balls fly twice as fast as before.",
	},
	["NAPC_AR2Balls_AOEDmg"] = {
		OptionName = "Enable Destructive Energy Ball",
		help_1 = "To make NPC-fired energy balls cause area of effect damage.",
	},
	["NAPC_Combine_AR2_AltFire"] = {
		OptionName = "Enable Combine AR2 Alt-Fire",
		help_1 = "To make every Combine soldier with AR2 able to use AR2 AltFire.",
		help_2 = "Combine Elites won't be affected by this option.",
	},
	["NAPC_Combine_Cloaking"] = {
		OptionName = "Enable Combine Cloaking",
		help_1 = "To make Combine soldiers have cloaking ability and use it sometimes.",
		help_2 = "The cloaking lasts for 5 seconds and has a 6-second cooldown.",
	},
	["NAPC_Metropolice_PistolReady"] = {
		OptionName = "Enable Guarded Metropolice",
		help_1 = "To make metropolices always have their pistols on hand.",
		help_2 = "This only works on metropolice with a pistol.",
	},
	["NAPC_Medic_Citizen"] = {
		OptionName = "Enable Medic Citizen",
		help_1 = "To make armed citizens able to use healthkit to heal others.",
	},
	["NAPC_Turret_AccurateShot"] = {
		OptionName = "Enable Turret Accurate Shot",
		help_1 = "To make HL2 Turrets open fire with higher accuracy.",
	},
	["NAPC_StriderCannon"] = {
		OptionName = "Enable Strider Cannon",
		help_1 = "To make Striders use cannons sometimes.",
		help_2 = "By default, they don't use cannons against player.",
	},
	["NAPC_StriderCn_AgainstPlayer"] = {
		OptionName = "Enable Cannon Against Player",
		help_1 = "To lift cannon usage restrictions for Striders.",
		help_2 = "Strider cannon is really dangerous, for it can kill a player in one shot.",
	},
	["NAPC_Zombine_FrequentRun"] = {
		OptionName = "Enable Zombine Run Frequently",
		help_1 = "To make Zombines run more frequently when they see an enemy.",
	},
	["NAPC_CombineHunter_Enhanced"] = {
		OptionName = "Enable Enhanced Hunter",
		help_1 = "To make Combine hunters more aggressive and more quickly.",
	},
	["NAPC_Hunter_TakingDmgSystem"] = {
		OptionName = "Enable Hunter No Flinch",
		help_1 = "To make Combine hunters have a new damage-taking system, which makes it much more difficult to kill them.",
	},
	["NAPC_NPCs_SCALE_FRIENDLY_Dmg"] = {
		OptionName = "Custom NPCs Friendly Damage",
		help_1 = "1.00 = Default.",
		help_2 = "For example, set this to 0.40 so that NPCs will only take 40% damage from other NPCs' friendly fire.",
		help_3 = "This will not always work.",
	},
	["NAPC_NPCs_ScaleDmg_TO_PLAYERS"] = {
		OptionName = "Custom NPCs Damage To Players",
		help_1 = "1.00 = Default.",
		help_2 = "For example, set this to 1.5 so that players will take 150% damage from hostile NPCs.",
		help_3 = "This will not always work.",
	},
	["NAPC_NPCs_WeaponProficiency"] = {
		OptionName = "Custom NPCs ShootingAccuracy",
		help_1 = "0 = HL2 default NPCs accuracy.",
		help_2 = "Larger value makes NPCs shoot more accurately.",
	},
	["NAPC_NPCs_LookDistance"] = {
		OptionName = "Custom NPCs LookDistance",
		help_1 = "2048 = HL2 default NPCs LookDistance.",
		help_2 = "Long LookDistance is the premise of long AttackRange.",
	},
	["NAPC_NPCs_CUSTOM_HEALTH"] = {
		OptionName = "Boost NPCs Health",
		help_1 = "0 = HL2 default NPCs health.",
		help_2 = "NewHealth = DefaultHealth + SetValue",
	},
	["NAPC_NPCs_CustomFOV"] = {
		OptionName = "Custom NPCs FOV",
		help_1 = "361 = HL2 default NPCs FOV.",
		help_2 = "If you don't know what FOV means, google it.",
	},
	["NAPC_NPCs_RunFromGrenade"] = {
		OptionName = "Enable NPCs Run From Grenades",
		help_1 = "To make NPCs run away when they find a grenade is nearby.",
	},
	["NAPC_Shotgunner_AltFire"] = {
		OptionName = "Enable Shotgunners AltFire",
		help_1 = "To make shotgunners able to use the altfire of HL2 shotgun like players do.",
		help_2 = "They won't do this unless their enemies are close enough.",
	},
	["NAPC_Shotgunner_Slug"] = {
		OptionName = "Enable Combine Shotgunners Use Slug",
		help_1 = "To make Combine shotgunners able to fire an extra kind of bullet that is precise and powerful.",
		help_2 = "They won't do this unless their enemies are far enough.",
	},
	["NAPC_NPCs_AttackRange"] = {
		OptionName = "Custom NPCs AttackRange",
		help_1 = "1 = HL2 default NPCs AttackRange.",
		help_2 = "For example, set Combine AttackRange to 1.5 so that Combine Soldiers' maximum firing range is increased to 150% of the original.",
		help_3 = "This does not work on shotgunners.",
	},
	["NAPC_KeyNPCs_Protection"] = {
		OptionName = "Enable Key NPCs Protection",
		help_1 = "To make Alyx, Barney and Father Grigori immune to most types of damage.",
	},
	["NAPC_NPCs_AimForExplosive"] = {
		OptionName = "Enable NPCs Aim For Explosives",
		help_1 = "To make NPCs purposely shoot explosives near enemies (only works on Half-Life 2 explosives).",
	},
	["NAPC_NPCs_AR2_AltFire"] = {
		OptionName = "Enable NPCs AR2 Alt-Fire",
		help_1 = "To make NPCs other than Combine able to fire energy balls with the AR2.",
	},
	["NAPC_NPCs_MoveSpeed"] = {
		OptionName = "Custom NPCs Movement Speed",
		help_1 = "1 = HL2 default NPC movement speed.",
		help_2 = "A value of 1.5 is already fast enough for regular use.",
	},
	["NAPC_NPCs_HealthRegen"] = {
		OptionName = "Enable NPCs Health Regeneration",
		help_1 = "To make NPCs automatically regenerate health 3 seconds after taking damage, up to 80% of their maximum health.",
	},
	["NAPC_NPCs_WalkAndShoot"] = {
		OptionName = "Enable NPCs Shoot While Walking",
		help_1 = "To make NPCs open fire while walking under certain conditions, just like the VJ NPCs.",
	},
	["NAPC_Combine_MoreGrenades"] = {
		OptionName = "Enable Combine Throw Grenades Frequently",
		help_1 = "To make Combine soldiers throw frag grenades more frequently.",
	},
	["NAPC_Debug_AreaScores"] = {
		OptionName = "Enable Nav Area Scoring Visuals",
		help_1 = "Visualizes tactical navmesh area heatmaps, scoring metrics, and flank routes.",
		help_2 = "Only renders in 3D/HUD when developer mode (developer > 0) is enabled.",
	},
	["NAPC_Manhack_Shooting"] = {
		OptionName = "Enable Manhack Weapon Shooting",
		help_1 = "Allows manhacks deployed by Metropolice to fire bullets inherited from the deploying officer's weapon.",
		help_2 = "Manhacks with SMG or Pistol will periodically fire at enemies within range.",
	},
	["NAPC_Generate_Windows"] = {
		OptionName = "Generate Windows",
		help_1 = "Sweeps the map, indexes all glass windows and breakable surfaces, and highlights their extents in debug visualization.",
	},
	["NAPC_Debug_ShowWindows"] = {
		OptionName = "Show Indexed Windows",
		help_1 = "Toggles 3D debug rendering for indexed windows and geometric apertures.",
	},
	["NAPC_Clear_Windows"] = {
		OptionName = "Clear Windows",
		help_1 = "Clears all cached and indexed window data from memory.",
	},
	["NAPC_NPCs_SMG_AltFire"] = {
		OptionName = "Enable NPCs SMG Alt-Fire",
		help_1 = "Allows NPCs wielding the SMG1 (Combine, Metropolice, Citizens) to launch grenades at distant enemies with simulated trajectory tracking.",
	},
	["NAPC_Metropolice_StunstickSwitch"] = {
		OptionName = "Enable Metropolice Draw Pistol",
		help_1 = "Allows stunstick-wielding Metropolice to discard their stunstick and draw a pistol when facing armed ranged enemies.",
		help_2 = "They will drop the stunstick as a physics entity and draw their sidearm.",
	}
}