NAPC_Localization_CN = {
	["Combine"] = "联合军",
	["Hunter"] = "联合军猎手",
	["Metropolice"] = "国民护卫队",
	["Citizen"] = "反抗军",
	["Zombie"] = "猎头蟹丧尸",
	["Vortigaunt"] = "弗地冈人",
	["Damage Scale"] = "伤害比例",
	
	["Partition Description"] = {
		note = "注意：本模组在默认66tick的环境中才能正常运行。若当前服务器改变了tick值，则使用本模组时可能出现问题。",
		part1 = "这些选项可决定整个插件的内部运行机制。",
		part2 = "这些选项可同时生效于联合军、反抗军、国民护卫队，或这三者中的至少两者。",
		part3 = "这些选项中的每一个仅适用于特定类型的NPC或实体。",
		part4 = "这些选项可调整特定种类的NPC或实体的一些数值属性。"
	},
	
    ["NPC_AVOID_PLAYER_CROSSHAIR"] = {
        OptionName = "主开关",
        help_1 = "用于启用本插件或彻底禁用它。",
        help_2 = "禁用此选项后，下方其他选项将不再生效。"
    },
    ["NAPC_WorksOn_ANPlus"] = {
        OptionName = "启用ANPlus支持",
        help_1 = "如果你不清楚ANPlus是什么，可忽略此选项。",
        help_2 = "如果你认为本插件会导致ANPlus替换的NPC出现行为异常，可禁用此选项。"
    },
    ["Combine_AVOID_PLAYER_CROSSHAIR"] = {
        OptionName = "启用联合军躲避准星"
    },
    ["Citizen_AVOID_PLAYER_CROSSHAIR"] = {
        OptionName = "启用反抗军躲避准星"
    },
	["Metropolice_AVOID_PLAYER_CROSSHAIR"] = {
        OptionName = "启用国民护卫队躲避准星"
    },
    ["NAPC_NPCs_MustReloadNow"] = {
        OptionName = "启用NPC及时换弹",
        help_1 = "让NPC在武器弹药即将耗尽时立即换弹。",
        help_2 = "除非你有其他AI插件会影响NPC的换弹行为，否则我强烈建议启用此选项。"
    },
    ["NPC_SHOOT_MORE_FREQUENTLY"] = {
        OptionName = "启用NPC高频射击",
        help_1 = "让NPC在战斗中更频繁地开火。",
        help_2 = "此选项对霰弹枪手无效。"
    },
    ["NAPC_NPCs_FasterChasing"] = {
        OptionName = "启用NPC专注追击",
        help_1 = "让NPC发现敌人距离过远无法射击时，更快地逼近敌人。",
        help_2 = "NPC追击敌方玩家时，在追上对方前不会躲避玩家的准星。"
    },
    ["NAPC_NPCs_CAN_JUMP"] = {
        OptionName = "启用NPC跳跃",
        help_1 = "让NPC能够利用地图上的跳跃节点进行跳跃。"
    },
    ["NAPC_WALK_AROUND"] = {
        OptionName = "启用NPC巡逻",
        help_1 = "让NPC在非战斗状态下四处走动。",
        help_2 = "此选项对国民护卫队无效。"
    },
    ["NAPC_NPCs_Stealth"] = {
        OptionName = "启用NPC潜行",
        help_1 = "让NPC在发现附近有隐藏的敌人时安静移动。",
        help_2 = "此选项对国民护卫队无效。"
    },
    ["NAPC_NPCs_NoFlinch"] = {
        OptionName = "启用NPC无畏缩",
        help_1 = "让NPC在受到伤害时不会产生受击动作，也即不会被打断当前行为。"
    },
    ["NAPC_RUN_AND_SHOOT"] = {
        OptionName = "启用NPC频繁移动",
        help_1 = "让NPC在射击时更频繁地跑动（除非必须换弹）。",
        help_2 = "此选项对霰弹枪手无效。"
    },
    ["NAPC_NPCs_TakeCaution"] = {
        OptionName = "启用NPC谨慎行动",
        help_1 = "让NPC在敌人脱离视野时变得更加谨慎、更有战术性。"
    },
    ["NAPC_NPCs_AimForHead"] = {
        OptionName = "启用NPC瞄准头部",
        help_1 = "让NPC在敌人足够近时能够瞄准其头部射击。",
        help_2 = "此选项对霰弹枪手无效。"
    },
    ["NAPC_NPCs_QuickReloading"] = {
        OptionName = "启用NPC快速换弹",
        help_1 = "让NPC准备换弹时的动作更加迅速。"
    },
    ["NAPC_ATTACK_TOGETHER"] = {
        OptionName = "启用NPC增强火力",
        help_1 = "让NPC在战斗中更加激进。",
        help_2 = "但这会导致NPC减少战术的使用。"
    },
    ["NAPC_NPCs_HIDE_FROM_DMG"] = {
        OptionName = "启用NPC躲避攻击",
        help_1 = "让NPC受到来自未知方向的伤害时躲起来。",
        help_2 = "此选项无法与“启用NPC寻找攻击者”同时启用。"
    },
    ["NAPC_NPCs_LookFor_Attacker"] = {
        OptionName = "启用NPC寻找攻击者",
        help_1 = "让NPC在受到伤害后试图找出攻击者。",
        help_2 = "此选项无法与“启用NPC躲避攻击”同时启用。"
    },
    ["NAPC_NPCs_StrikeBack"] = {
        OptionName = "启用NPC停止寻找掩护",
        help_1 = "让NPC在寻找掩护的过程中被敌人发现时直接反击。"
    },
    ["NAPC_NPCs_EnemyNearby"] = {
        OptionName = "启用NPC近战策略优化",
        help_1 = "让NPC在离敌人太近时做出更合理的反应。"
    },
    ["NAPC_NPCs_IGNORE_PLAYER_Dmg"] = {
        OptionName = "启用NPC忽略友方玩家伤害",
        help_1 = "让NPC不会受到友方玩家攻击造成的伤害。",
        help_2 = "此选项可能对某些类型的伤害无效。"
    },
    ["NAPC_NPCs_COWER_PROTECTION"] = {
        OptionName = "启用NPC蜷缩防护",
        help_1 = "让NPC在蜷缩状态下仅承受60%的伤害。",
        help_2 = "蜷缩状态通常指NPC用双臂护住头部的动作。"
    },
    ["NAPC_NPCs_RELOAD_PROTECTION"] = {
        OptionName = "启用NPC换弹防护",
        help_1 = "让NPC在换弹时仅承受80%的伤害。"
    },
    ["NAPC_BETTER_SHOTGUNNERS"] = {
        OptionName = "启用强化霰弹枪手",
        help_1 = "让霰弹枪手在战斗中更加活跃。"
    },
    ["NAPC_Shotgunner_BigFlyFxxk"] = {
        OptionName = "启用联合军霰弹枪手飞扑",
        help_1 = "让联合军霰弹枪手能够向者敌方玩家进行跳跃突进。"
    },
    ["NAPC_Faster_AR2Balls"] = {
        OptionName = "启用能量球加速",
        help_1 = "让NPC发射的能量球飞行速度提升至原先的两倍。"
    },
    ["NAPC_AR2Balls_AOEDmg"] = {
        OptionName = "启用能量球范围伤害",
        help_1 = "让NPC发射的能量球在反弹或自毁爆炸时造成一定的范围伤害。"
    },
    ["NAPC_Combine_AR2_AltFire"] = {
        OptionName = "启用联合军AR2副武器开火",
        help_1 = "让所有持有AR2的联合军士兵都能使用AR2副武器开火。",
        help_2 = "联合军精英不会受此选项影响。"
    },
    ["NAPC_Combine_Cloaking"] = {
        OptionName = "启用联合军隐形",
        help_1 = "让联合军士兵在某些特定情况下使用隐形。",
        help_2 = "隐形状态持续5秒，冷却时间为6秒。"
    },
    ["NAPC_Metropolice_PistolReady"] = {
        OptionName = "启用戒备状态国民护卫队",
        help_1 = "让国民护卫队始终将手枪拿在手中。",
        help_2 = "此选项仅对持有手枪的国民护卫队生效。"
    },
    ["NAPC_Medic_Citizen"] = {
        OptionName = "启用医疗型反抗军",
        help_1 = "让持有武器的反抗军能够使用医疗包治疗他人。"
    },
    ["NAPC_Turret_AccurateShot"] = {
        OptionName = "启用炮塔精准射击",
        help_1 = "让半条命2炮塔的射击精准度提升。"
    },
    ["NAPC_StriderCannon"] = {
        OptionName = "启用三脚机甲主炮",
        help_1 = "让三脚机甲偶尔地使用主炮攻击敌人。",
        help_2 = "默认情况下，它们不会对敌方玩家使用主炮。"
    },
    ["NAPC_StriderCn_AgainstPlayer"] = {
        OptionName = "启用主炮对玩家开火",
        help_1 = "解除三脚机甲使用主炮的限制。",
        help_2 = "三脚机甲主炮极其危险，正常情况下一发即可击杀玩家。"
    },
    ["NAPC_Zombine_FrequentRun"] = {
        OptionName = "启用联合军丧尸频繁奔跑",
        help_1 = "让联合军丧尸发现敌人时更频繁地奔跑。"
    },
    ["NAPC_CombineHunter_Enhanced"] = {
        OptionName = "启用强化的联合军猎手",
        help_1 = "让联合军猎手变得更加激进且行动更迅速。"
    },
    ["NAPC_Hunter_TakingDmgSystem"] = {
        OptionName = "启用联合军猎手无畏缩",
        help_1 = "为联合军猎手启用一套独立的受击系统，大幅提升击杀它的难度。"
    },
    ["NAPC_NPCs_SCALE_FRIENDLY_Dmg"] = {
        OptionName = "自定义NPC友军伤害",
        help_1 = "1.00 = 默认值。",
        help_2 = "例如，将此选项设为0.40，NPC仅会承受其他NPC友军火力造成的40%伤害。",
        help_3 = "此选项可能在特定情况下失效。"
    },
    ["NAPC_NPCs_ScaleDmg_TO_PLAYERS"] = {
        OptionName = "自定义NPC对玩家伤害",
        help_1 = "1.00 = 默认值。",
        help_2 = "例如，将此选项设为1.5，玩家会承受敌对NPC造成的150%伤害。",
        help_3 = "此选项可能在特定情况下失效。"
    },
    ["NAPC_NPCs_WeaponProficiency"] = {
        OptionName = "自定义射击精准度",
        help_1 = "0 = 半条命2默认NPC精准度。",
        help_2 = "数值越大，NPC的射击精准度就越高。"
    },
    ["NAPC_NPCs_LookDistance"] = {
        OptionName = "自定义视野距离",
        help_1 = "2048 = 半条命2默认NPC视野距离。",
        help_2 = "长视野距离是长攻击范围的前提。"
    },
    ["NAPC_NPCs_CUSTOM_HEALTH"] = {
        OptionName = "提升NPC生命值",
        help_1 = "0 = 半条命2默认NPC生命值。",
        help_2 = "新生命值 = 默认生命值 + 设置值。"
    },
	["NAPC_NPCs_CustomFOV"] = {
		OptionName = "自定义NPC视野广度",
		help_1 = "361 = 半条命2默认NPC视野广度。",
		help_2 = "不要把视野广度（FOV）与视野距离弄混。"
	},
	["NAPC_NPCs_RunFromGrenade"] = {
		OptionName = "启用NPC躲避手榴弹",
		help_1 = "让NPC发现附近有手榴弹时逃跑。"
	},
	["NAPC_Shotgunner_AltFire"] = {
		OptionName = "启用霰弹枪手双重开火",
		help_1 = "让霰弹枪手能像玩家一样使用HL2霰弹枪的次要开火模式。",
		help_2 = "只有在敌人足够进时才会使用这种开火模式。"
	},
	["NAPC_Shotgunner_Slug"] = {
		OptionName = "启用联合军霰弹枪手发射独头弹",
		help_1 = "让联合军霰弹枪手使用精准的高威力独头弹。",
		help_2 = "只有在敌人处于较远的位置时才会使用这种子弹。"
	},
	["NAPC_NPCs_AttackRange"] = {
		OptionName = "自定义攻击范围",
		help_1 = "1 = 半条命2默认NPC攻击范围。",
		help_2 = "例如，将联合军的攻击范围设为1.5，则联合军可开火攻击的范围将变为原本的150%。",
		help_3 = "此选项对霰弹枪手无效。"
	},
	["NAPC_KeyNPCs_Protection"] = {
		OptionName = "启用关键NPC保护",
		help_1 = "让艾利克斯，巴尼和格利高里神父这三个剧情NPC免疫绝大多数的伤害。"
	},
	["NAPC_NPCs_AimForExplosive"] = {
		OptionName = "启用NPC瞄准爆炸物",
		help_1 = "让NPC能够主动射击敌人身边的爆炸物（仅限于来自半条命2的爆炸物）。"
	},
	["NAPC_NPCs_AR2_AltFire"] = {
		OptionName = "启用NPC发射AR2能量球",
		help_1 = "让联合军以外的NPC也能够使用AR2发射能量球。"
	},
	["NAPC_NPCs_MoveSpeed"] = {
		OptionName = "自定义NPC行动速度",
		help_1 = "1 = 半条命2默认NPC行动速度。",
		help_2 = "在实际使用中，1.5倍速已经足够快了。"
	},
	["NAPC_NPCs_HealthRegen"] = {
		OptionName = "启用NPC生命值自动回复",
		help_1 = "让NPC在受伤三秒后开始自动回复生命值，最多回复到最大生命值的80%。"
	},
	["NAPC_NPCs_WalkAndShoot"] = {
		OptionName = "启用NPC行走射击姿态",
		help_1 = "让NPC在特定情况下一边行走一边射击，就像某些VJ NPC那样。"
	},
	["NAPC_Combine_MoreGrenades"] = {
		OptionName = "启用联合军频繁投掷手雷",
		help_1 = "让联合军士兵在战斗中更多地使用手雷。"
	}
}