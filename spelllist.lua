function BabbiWatch:GetSpellList ()
	return {
		debuffApplied ={
			--Priest
			[87204] = "Priest_BadAuraApplied_BacklashFear", 		--빽뎀공포 -- Vampiric Touch Dispel (Priest)
			
			--Warlock
			[196364] = "Warlock_BadAuraApplied_BacklashSilence",	--빽뎀침묵 -- Unstable Affliction Dispel (Warlock)
			
			--Rogue
			[1330] = "Rogue_BadAuraApplied_Garrote",				--목조르기
			[1833] = "Rogue_BadAuraApplied_CheapShot",			--비열한 습격
			[6770] = "Rogue_BadAuraApplied_Sap",					--절
			
			--Hunter
			[3355] = "Hunter_BadAuraApplied_Trapped",				--얼덫 -- Freezing Trap Success
			--Druid
			[163505] = "Druid_BadAuraApplied_RakeStun",			--암습

			--DK
			[212332] = "DK_BadAuraApplied_Smash",
			[212337] = "DK_BadAuraApplied_Smash",
			[91800] = "DK_BadAuraApplied_Smash", 				--구울스턴
			[91797] = "DK_BadAuraApplied_Smash", 				--구울강화스턴

			--Warrior
			[199085] = "Warrior_BadAuraApplied_Warpath",			--199086 스킬

			--Monk
			[202346] = "Monk_BadAuraApplied_DoubleBarrel",		--이중 맥주통 --202335 스킬 Double Barrel (Brewmaster Honor Talent that stuns)

			--Paladin
			[217824] = "Paladin_BadAuraApplied_ShieldOfVirtue",	--고결의 방패 --215652 스킬

			
		},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		auraApplied ={					-- aura applied [spellid] = ".mp3 file name",
			-- GENERAL

			-- General (Aura Applied)
			[195901] = "ALL_AuraApplied_Trinket1",
			[214027] = "ALL_AuraApplied_Trinket1",
			[336139] = "ALL_AuraApplied_Trinket1",
			[34709] = "ALL_AuraApplied_ShadowSight",
			
			-- Drinking (Aura Applied)
			[104270] = "Bundle_AuraApplied_Drinking",
			[167152] = "Bundle_AuraApplied_Drinking",
			[5006] = "Bundle_AuraApplied_Drinking",
			[274194] = "Bundle_AuraApplied_Drinking",
			[262568] = "Bundle_AuraApplied_Drinking",
			[274913] = "Bundle_AuraApplied_Drinking",
			[257427] = "Bundle_AuraApplied_Drinking",
			[257428] = "Bundle_AuraApplied_Drinking",
			[272819] = "Bundle_AuraApplied_Drinking",
			[279739] = "Bundle_AuraApplied_Drinking",

			-- Covenant Abilities (Aura Applied)
			[310143] = "ALL_AuraApplied_Soulshape", -- Nightfae Signature
			[319217] = "ALL_AuraApplied_Podtender", -- Nightfae Cheat Death
			[320224] = "ALL_AuraApplied_Podtender", -- Nightfae Cheat Death
			[320225] = "ALL_AuraApplied_Podtender", -- Nightfae Cheat Death
			[320226] = "ALL_AuraApplied_Podtender", -- Nightfae Cheat Death
			[320221] = "ALL_AuraApplied_Podtender", -- Nightfae Cheat Death
			[348121] = "ALL_AuraApplied_Podtender", -- Nightfae Cheat Death

			-- Death Knight (Aura Applied)
			[48792] = "DK_AuraApplied_IceboundFortitude",
			[55233] = "DK_AuraApplied_VampiricBlood",
			[51271] = "DK_AuraApplied_PillarofFrost",
			[48707] = "DK_AuraApplied_AntiMagicShell",
			[152279] = "DK_AuraApplied_BreathOfSindragosa",
			[219809] = "DK_AuraApplied_Tombstone",
			[194679] = "DK_AuraApplied_Runetap",
			[194844] = "DK_AuraApplied_Bonestorm",
			[207319] = "DK_AuraApplied_CorpseShield",
			[116888] = "DK_AuraApplied_Purgatory", -- Purgatory
			[49039] = "DK_AuraApplied_Lichborne", -- Lichborne
			[288977] = "DK_AuraApplied_Transfusion",
			[315443] = "DK_AuraApplied_Abominationlimb",
			[311648] = "DK_AuraApplied_Swarmingmist", -- Venthyr

			-- Demon Hunter (Aura Applied)
			[198589] = "DH_AuraApplied_Blur",
			[212800] = "DH_AuraApplied_Blur",
			[162264] = "DH_AuraApplied_Metamorphosis",
			[187827] = "DH_AuraApplied_Metamorphosis", -- Vengeance
			[188501] = "DH_AuraApplied_SpectralSight",
			[196555] = "DH_AuraApplied_Netherwalk",
			[207810] = "DH_AuraApplied_NetherBond",

			-- Druid (Aura Applied)
			[102560] = "Druid_AuraApplied_IncarnationElune",
			[102543] = "Druid_AuraApplied_IncarnationKitty",
			[102558] = "Druid_AuraApplied_IncarnationUrsoc",
			[33891] = "Druid_AuraApplied_IncarnationTree",
			[61336] = "Druid_AuraApplied_SurvivalInstincts",
			[22812] = "Druid_AuraApplied_Barkskin",
			[1850] = "Druid_AuraApplied_Dash",
			[252216] = "Druid_AuraApplied_Dash", -- Tiger Dash
			[106951] = "Druid_AuraApplied_Berserk",
			[69369] = "Druid_AuraApplied_PredatorSwiftness",
			[112071] = "Druid_AuraApplied_CelestialAlignment",
			[194223] = "Druid_AuraApplied_CelestialAlignment",
			[102342] = "Druid_AuraApplied_IronBark",
			[102351] = "Druid_AuraApplied_CenarionWard",
			[155835] = "Druid_AuraApplied_BristlingFur",
			[29166] = "Druid_AuraApplied_Innervate",
			[236696] = "Druid_AuraApplied_Thorns", -- (Feral/Balance)
			[305497] = "Druid_AuraApplied_Thorns", -- Resto/Feral/Balance 8.2
			[108291] = "Druid_AuraApplied_HeartOfTheWild", -- Heart of the Wild
			[108292] = "Druid_AuraApplied_HeartOfTheWild", -- Heart of the Wild
			[108293] = "Druid_AuraApplied_HeartOfTheWild", -- Heart of the Wild
			[108294] = "Druid_AuraApplied_HeartOfTheWild", -- Heart of the Wild
			[323546] = "Druid_AuraApplied_Ravenousfrenzy", -- Venthyr

			-- Hunter (Aura Applied)
			[19263] = "Hunter_AuraApplied_Deterrence",
			[186265] = "Hunter_AuraApplied_Deterrence", -- Aspect of the Turtle
			[53271] = "Hunter_AuraApplied_MastersCall",
			[53480] = "Hunter_AuraApplied_RoarOfSacrifice", -- Pet Skill
			[186257] = "Hunter_AuraApplied_Cheetah",
			[212640] = "Hunter_AuraApplied_MendingBandage",
			[193530] = "Hunter_AuraApplied_TrueShot",	-- Aspect of the Wild
			[266779] = "Hunter_AuraApplied_TrueShot",	-- Coordinated Assault
			[202748] = "Hunter_AuraApplied_SurvivalTactics", -- Survival Tactics (Honor Talent Feign Death Passive)
			[212704] = "Hunter_AuraApplied_BeastWithin", -- The Beast Within; Beastial Wrath Fear/Horror Immunity Honor Talent

			-- Mage (Aura Applied)
			[45438] = "Mage_AuraApplied_IceBlock",
			[12042] = "Mage_AuraApplied_ArcanePower",
			[12472] = "Mage_AuraApplied_Icyveins",
			[198111] = "Mage_AuraApplied_TemporalShield",
			[198144] = "Mage_AuraApplied_IceForm",
			[86949] = "Mage_AuraApplied_Cauterize",
			[87024] = "Mage_AuraApplied_Cauterize",
			[190319] = "Mage_AuraApplied_Combustion",
			[110909] = "Mage_AuraApplied_AlterTime",
			[342246] = "Mage_AuraApplied_AlterTime",
			[108978] = "Mage_AuraApplied_AlterTime",
			[324220] = "Mage_AuraApplied_Deathborne", -- Necrolord

			-- Monk (Aura Applied)
			[122278] = "Monk_AuraApplied_DampenHarm",
			[122783] = "Monk_AuraApplied_DiffuseMagic",
			[115203] = "Monk_AuraApplied_FortifyingBrew", --Fortifying Brew (Brewmaster)
			[201318] = "Monk_AuraApplied_FortifyingBrew", --Fortifying Brew (Windwalker PvP Talent)
			[243435] = "Monk_AuraApplied_FortifyingBrew", --Fortifying Brew (Mistweaver)
			[115176] = "Monk_AuraApplied_ZenMeditation", -- Zen Meditation (Brewmaster)
			[116849] = "Monk_AuraApplied_Lifecocoon",
			[152173] = "Monk_AuraApplied_Serenity",
			[197908] = "Monk_AuraApplied_ManaTea",
			[209584] = "Monk_AuraApplied_ZenFocusTea",
			[310454] = "Monk_AuraApplied_Weaponoforder", -- Kyrian
						
			-- Paladin (Aura Applied)
			[1022] = "Paladin_AuraApplied_HandofProtection", 
			[1044] = "Paladin_AuraApplied_HandofFreedom",
			[642] = "Paladin_AuraApplied_DivineShield", 
			[31884] = "Paladin_AuraApplied_AvengingWrath", -- Protection/Retribution
			[231895] = "Paladin_AuraApplied_Crusade",
			[105809] = "Paladin_AuraApplied_HolyAvenger",
			[31850] = "Paladin_AuraApplied_ArdentDefender",
			[205191] = "Paladin_AuraApplied_EyeForAnEye",
			[184662] = "Paladin_AuraApplied_VengeanceShield",
			[86659] = "Paladin_AuraApplied_AncientKings", -- Guardian of Ancient Kings
			[212641] = "Paladin_AuraApplied_AncientKings", -- Guardian of Ancient Kings (Glyph)
			[228049] = "Paladin_AuraApplied_ForgottenQueens",
			[216331] = "Paladin_AuraApplied_AvengingCrusader",
			[210294] = "Paladin_AuraApplied_DivineFavor",
			[498] = "Paladin_AuraApplied_DivineProtection", -- Divine Protection
			[204018] = "Paladin_AuraApplied_Spellwarding", -- Blessing of Spellwarding
			
			-- Priest (Aura Applied)
			[33206] = "Priest_AuraApplied_PainSuppression",
			[47585] = "Priest_AuraApplied_Dispersion",
			[47788] = "Priest_AuraApplied_GuardianSpirit",
			[10060] = "Priest_AuraApplied_PowerInfusion",
			[197862] = "Priest_AuraApplied_ArchangelHealing",
			[197871] = "Priest_AuraApplied_ArchangelDamage",
			[200183] = "Priest_AuraApplied_Apotheosis",
			[213610] = "Priest_AuraApplied_HolyWard",
			[197268] = "Priest_AuraApplied_RayOfHope",
			[193223] = "Priest_AuraApplied_SurrenderToMadness",
			[319952] = "Priest_AuraApplied_SurrenderToMadness",
			[47536] = "Priest_AuraApplied_Rapture",
			[109964] = "Priest_AuraApplied_Rapture",
			[194249] = "Priest_AuraApplied_VoidForm",
			[218413] = "Priest_AuraApplied_VoidForm",
			[15286] = "Priest_AuraApplied_VampiricEmbrace",
			[213602] = "Priest_AuraApplied_GreaterFade",

			-- Rogue (Aura Applied)
			[185313] = "Rogue_AuraApplied_ShadowDance",
			[185422] = "Rogue_AuraApplied_ShadowDance",
			[2983] = "Rogue_AuraApplied_Sprint",
			[31224] = "Rogue_AuraApplied_CloakofShadows", 
			[5277] = "Rogue_AuraApplied_Evasion",
			[51690] = "Rogue_AuraApplied_KillingSpree",
			[121471] = "Rogue_AuraApplied_ShadowBlades",
			[199754] = "Rogue_AuraApplied_Riposte",
			[31230] = "Rogue_AuraApplied_CheatDeath",
			[45182] = "Rogue_AuraApplied_CheatDeath",
			[343142] = "Rogue_AuraApplied_Dreadblades",
			[207736] = "Rogue_AuraApplied_ShadowyDuel",
			[1966] = "Rogue_AuraApplied_Feint", -- Feint
			
			-- Shaman (Aura Applied)
			[79206] = "Shaman_AuraApplied_SpiritwalkersGrace",
			[114050] = "Shaman_AuraApplied_Ascendance",
			[114051] = "Shaman_AuraApplied_Ascendance",
			[114052] = "Shaman_AuraApplied_Ascendance",
			[210918] = "Shaman_AuraApplied_EtherealForm",
			[108271] = "Shaman_AuraApplied_AstralShift",
			
			-- Warlock (Aura Applied)
			[108416] = "Warlock_AuraApplied_DarkPact",
			[104773] = "Warlock_AuraApplied_UnendingResolve",
			[196098] = "Warlock_AuraApplied_DarkSoul", -- Soul Harvest (Legion's Version)
			[113860] = "Warlock_AuraApplied_DarkSoul", -- Dark Soul: Misery (Affliction)
			[113858] = "Warlock_AuraApplied_DarkSoul", -- Dark Soul: Instability (Destruction)
			[212295] = "Warlock_AuraApplied_NetherWard",

			-- Warrior (Aura Applied)
			[184364] = "Warrior_AuraApplied_EnragedRegeneration",
			[871] = "Warrior_AuraApplied_ShieldWall", 
			[18499] = "Warrior_AuraApplied_BerserkerRage",
			[46924] = "Warrior_AuraApplied_Bladestorm", 
			[227847] = "Warrior_AuraApplied_Bladestorm",
			[1719] = "Warrior_AuraApplied_BattleCry", -- Recklessness (Fury)
			[262228] = "Warrior_AuraApplied_BattleCry", -- Deadly Calm (Arms)
			[118038] = "Warrior_AuraApplied_DieByTheSword", 
			[107574] = "Warrior_AuraApplied_Avatar",
			
			[198817] = "Warrior_AuraApplied_SharpenBlade",
			[197690] = "Warrior_AuraApplied_DefensiveStance",
			
			[23920] = "Warrior_AuraApplied_SpellReflection",
			[330279] = "Warrior_AuraApplied_SpellReflection", -- Overwatch PvP talent
			[236273] = "Warrior_AuraApplied_Duel",
			[260708] = "Warrior_AuraApplied_SweepingStrikes", -- Sweeping Strikes
			[202147] = "Warrior_AuraApplied_SecondWind", -- Second Wind
			[12975] = "Warrior_AuraApplied_LastStand", -- Last Stand

		},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		auraRemoved = {					-- aura removed [spellid] = ".mp3 file name",

			[34709] = "ALL_AuraRemove_ShadowSightDown",		-- Shadow Sight Crystal in Arenas

			--DK
			[48792] = "DK_AuraRemove_IceboundFortitudedown",	--Icebound Fortitude
			[48707] = "DK_AuraRemove_AntiMagicShellDown",		--Anti-Magic Shell
			[219809] = "DK_AuraRemove_TombstoneDown",			--Tombstone
			[207319] = "DK_AuraRemove_CorpseDown",			--Corpse Shield
			[152279] = "DK_AuraRemove_BreathOfSindragosaDown",--Breath of Sindragosa
			[49039] = "DK_AuraRemove_LichborneDown", -- Lichborne
			[288977] = "DK_AuraRemove_TransfusionDown", -- Transfusion
			[315443] = "DK_AuraRemove_AbominationLimbDown", -- Abomination's Limb

			--DH
			[198589] = "DH_AuraRemove_BlurDown",				--Blur
			[212800] = "DH_AuraRemove_BlurDown",				--Blur (Other ID)
			[162264] = "DH_AuraRemove_MetamorphDown",			--Metamorphosis
			[187827] = "DH_AuraRemove_MetamorphDown",			--Metamorphosis (Vengeance)
			[188501] = "DH_AuraRemove_SightsDown",			--Spectral Sight
			[196555] = "DH_AuraRemove_NetherwalkDown",		--Netherwalk
			[207810] = "DH_AuraRemove_BondageDown",			--Nether Bond

			--Druid
			[102560] = "Druid_AuraRemove_IncarnationDown",		--Incarnation (Boomkin)
			[102543] = "Druid_AuraRemove_IncarnationDown",		--Incarnation (Cat)
			[102558] = "Druid_AuraRemove_IncarnationDown",		--Incarnation (Bear)
			[33891] = "Druid_AuraRemove_IncarnationDown",		--Incarnation (Tree)
			[236696] = "Druid_AuraRemove_ThornsDown",			--Thorns (Feral)
			[305497] = "Druid_AuraRemove_ThornsDown",			--Thorns 8.2
			[108291] = "Druid_AuraRemove_HeartOfTheWildDown", -- Heart of the Wild
			[108292] = "Druid_AuraRemove_HeartOfTheWildDown", -- Heart of the Wild
			[108293] = "Druid_AuraRemove_HeartOfTheWildDown", -- Heart of the Wild
			[108294] = "Druid_AuraRemove_HeartOfTheWildDown", -- Heart of the Wild
			
			--Hunter
			[19263] = "Hunter_AuraRemove_Deterrencedown", 		--Deterrence
			[186265] = "Hunter_AuraRemove_Deterrencedown",		--Aspect of the Turtle
			[193530] = "Hunter_AuraRemove_TrueShotDown",			--Aspect of the Wild
			[266779] = "Hunter_AuraRemove_TrueShotDown",			--Coordinated Assault
			[212704] = "Hunter_AuraRemove_BeastWithinDown",	-- The Beast Within; Beastial Wrath Fear/Horror Immunity Honor Talent

			--Mage
			[45438] = "Mage_AuraRemove_IceBlockdown", 			--Ice Block
			[198111] = "Mage_AuraRemove_TemporalDown",			--Temporal Shield
			[198144] = "Mage_AuraRemove_IceFormDown",			--Ice Form
			[190319] = "Mage_AuraRemove_CombustionDown", -- Combustion
			[12042] = "Mage_AuraRemove_APdown", -- Arcane Power
			[12472] = "Mage_AuraRemove_IcyVeinsDown", -- Icy Veins
			[110909] = "Mage_AuraRemove_AlterTimeDown", -- Alter Time
			[342246] = "Mage_AuraRemove_AlterTimeDown", -- Alter Time again I guess
			[108978] = "Mage_AuraRemove_AlterTimeDown", -- Alter Time again I guess again I guess

			--Monk
			[201318] = "Monk_AuraRemove_FortifyingBrewDown",	--Fortifying Brew (Windwalker PvP talent)
			[115203] = "Monk_AuraRemove_FortifyingBrewDown",	--Fortifying Brew (Brewmaster)
			[243435] = "Monk_AuraRemove_FortifyingBrewDown",	--Fortifying Brew (Mistweaver)
			[115176] = "Monk_AuraRemove_ZenMeditationDown",		--Zen Meditation (Brewmaster)
			[122470] = "Monk_AuraRemove_KarmaDown",				
			[116849] = "Monk_AuraRemove_LifeCocoonDown",		--Life Coccoon
			[209584] = "Monk_AuraRemove_ZenFocusTeaDown",		--Zen Focus Tea

			--Paladin
			[642] = "Paladin_AuraRemove_Bubbledown",				--Divine Shield
			[1022] = "Paladin_AuraRemove_Protectiondown",			--Blessing of Protection
			[31850] = "Paladin_AuraRemove_DefenderDown",			--Ardent Defender
			[205191] = "Paladin_AuraRemove_EyeDown",				--Eye for an Eye
			[184662] = "Paladin_AuraRemove_VengeanceShieldDown",	--Vengeance Shield
			[86659] = "Paladin_AuraRemove_KingsDown",				--Guardian of Ancient Kings
			[228049] = "Paladin_AuraRemove_QueensDown",			--Guardian of Forgotten Queens
			[25771] = "Paladin_AuraRemove_ForbearanceDown",		-- Forbearance
			[216331] = "Paladin_AuraRemove_AvengingCrusaderDown",	-- Avenging Crusader
			[210294] = "Paladin_AuraRemove_DivineFavorDown", -- Divine Favor
			[204018] = "Paladin_AuraRemove_SpellWardingDown",	-- Blessing of Spellwarding
			[6940] = "Paladin_AuraRemove_SacrificeDown", -- Blessing of Sacrifice
			[199448] = "Paladin_AuraRemove_SacrificeDown", -- Ultimate Sacrifice
			[199452] = "Paladin_AuraRemove_SacrificeDown", -- Placeholder for Ultimate Sacrifice

			--Priest
			[47585] = "Priest_AuraRemove_Dispersiondown",			--Dispersion
			[33206] = "Priest_AuraRemove_PSdown",					--Pain Suppression
			[213610] = "Priest_AuraRemove_WardDown",				--Holy Ward
			[197268] = "Priest_AuraRemove_HopeDown",				--Ray of Hope
			[193223] = "Priest_AuraRemove_MadnessDown",			--Surrender to Madness
			[319952] = "Priest_AuraRemove_MadnessDown",			-- It's baaaack
			[194249] = "Priest_AuraRemove_VoidFormDown",			--Voidform
			[218413] = "Priest_AuraRemove_VoidFormDown",			--Voidform
			[15286] = "Priest_AuraRemove_VampiricEmbraceDown",	--Vampiric Embrace
			[215769] = "Priest_AuraRemove_RedeemerDown",			-- Spirit of the Redeemer (Priest pretend death talent)
			[213602] = "Priest_AuraRemove_GreaterFadeDown",	-- Greater Fade

			--Rogue
			[31224] = "Rogue_AuraRemove_Cloakdown", 				--Cloak of Shadows
			[51690] = "Rogue_AuraRemove_KillingSpreeDown",		--Killing Spree
			[1966] = "Rogue_AuraRemove_FeintDown",			-- Feint
			[5277] = "Rogue_AuraRemove_Evasiondown", 			--Evasion
			[199754] = "Rogue_AuraRemove_RiposteDown",			--Riposte
			[343142] = "Rogue_AuraRemove_DreadbladesDown",		--Curse of the Dreadblades

			--Shaman
			[108271] = "Shaman_AuraRemove_AstralShiftDown",		--Astral Shift
			[210918] = "Shaman_AuraRemove_EtherealDown",			--Ethereal Form

			--Warlock
			[212295] = "Warlock_AuraRemove_NetherWardDown",		--Nether Ward
			[104773] = "Warlock_AuraRemove_UnendingResolveDown", -- Unending Resolve
			[196098] = "Warlock_AuraRemove_DarkSoulDown", -- Dark Soul
			[113860] = "Warlock_AuraRemove_DarkSoulDown", -- Dark Soul
			[113858] = "Warlock_AuraRemove_DarkSoulDown", -- Dark Soul

			--Warrior
			[871] = "Warrior_AuraRemove_ShieldWallDown", 			--Shield Wall
			[118038] = "Warrior_AuraRemove_DieByTheSwordDown",		--Die by the Sword
			[197690] = "Warrior_AuraRemove_DefensiveStanceDown(DamageStance)",			--Defensive Stance (Falling off)
			[23920] = "Warrior_AuraRemove_SpellReflectionDown",			-- Protection
			[330279] = "Warrior_AuraRemove_SpellReflectionDown",			-- Overwatch PvP Talent
			[236273] = "Warrior_AuraRemove_DuelDown",				-- Duel (Warrior PvP Talent)
			[260708] = "Warrior_AuraRemove_SweepingStrikesDown",-- Sweeping Strikes
			[147833] = "Warrior_AuraRemove_InterveneDown", --가로막기끝 추가 --수정됨

			},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



		castStart = {					-- cast start [spellid] = ".mp3 file name",
		
		--GENERAL
			-- Big Heals
			[2060] = "Bundle_CastStart_BigHeal", -- Heal (Holy Priest)
			[82326] = "Bundle_CastStart_BigHeal", -- Holy Light (Paladin)
			[77472] = "Bundle_CastStart_BigHeal", -- Healing Wave (Shaman)
			--[5185] = "Bundle_CastStart_BigHeal", -- Healing Touch (Druid)
			--[116670] = "Bundle_CastStart_BigHeal", -- Vivify (Mistweaver)
			[227344] = "Bundle_CastStart_BigHeal", -- Surging Mist (Honor Talent)
			[194509] = "Bundle_CastStart_BigHeal", -- Power Word: Radiance (Discipline)
			--[204065] = "Bundle_CastStart_BigHeal", -- Shadow Covenant (Discipline)
			[152118] = "Bundle_CastStart_BigHeal", -- Clarity of Will (Discipline)
			--[186263] = "Bundle_CastStart_BigHeal", -- Shadow Mend (Discipline/Shadow Priest)
			--[116694] = "Bundle_CastStart_BigHeal", -- Effuse (Mistweaver)
			--[124682] = "Bundle_CastStart_BigHeal", -- Enveloping Mists (Mistweaver)
			
			-- Non-Combat Resurrections
			[2006] = "Bundle_CastStart_Resurrection", -- Resurrection (Priest)
			[7328] = "Bundle_CastStart_Resurrection", -- Redemption (Paladin)
			[2008] = "Bundle_CastStart_Resurrection", -- Ancestral Spirit (Shaman)
			[115178] = "Bundle_CastStart_Resurrection", -- Resusicate (Monk)
			[50769] = "Bundle_CastStart_Resurrection",  -- Revive (Druid)
			-- Non-Combat Mass Resurrections
			[212040] = "Bundle_CastStart_Resurrection", -- Revitalize (Druid Mass Rez)
			[212051] = "Bundle_CastStart_Resurrection", -- Reawaken (Monk Mass Rez)
			[212036] = "Bundle_CastStart_Resurrection", -- Mass Resurrection (Priest Mass Rez)
			[212056] = "Bundle_CastStart_Resurrection", -- Absolution (Paladin Mass Rez)
			[212048] = "Bundle_CastStart_Resurrection", -- Ancestral Vision (Shaman Mass Rez)

			-- Covenants
			[300728] = "ALL_CastStart_Doorofshadows", -- Venthyr signature
			
			-- Death Knight (Spell Casting)
				--None! :D
				
			-- Demon Hunter (Spell Casting)
			[323639] = "DH_CastStart_Thehunt",		-- Nightfae

			-- Druid (Spell Casting)
			[33786] = "Druid_CastStart_Cyclone",
			[339] = "Druid_CastStart_EntanglingRoots",
			[235963] = "Druid_CastStart_EntanglingRoots", -- Feral Druid Honor Talent
			[274281] = "Druid_CastStart_LittleMoon",
			[274282] = "Druid_CastStart_MiddleMoon",
			[274283] = "Druid_CastStart_FullMoon",
			[2637] = "Druid_CastStart_Hibernate", -- Hibernate
			
			-- Hunter (Spell Casting)
			[982] = "Hunter_CastStart_RevivePet",
			[19434] = "Hunter_CastStart_AimedShot",
			[1513] = "Hunter_CastStart_ScareBeast",
			
			-- Mage (Spell Casting)
			[118] = "Mage_CastStart_Polymorph", -- Sheep
			[28271] = "Mage_CastStart_Polymorph", -- Turtle
			[28272] = "Mage_CastStart_Polymorph", -- Pig
			[61305] = "Mage_CastStart_Polymorph", -- Black Cat
			[61721] = "Mage_CastStart_Polymorph", -- Rabbit
			[61025] = "Mage_CastStart_Polymorph", -- Serpent
			[61780] = "Mage_CastStart_Polymorph", -- Turkey
			[161372] = "Mage_CastStart_Polymorph", -- Peacock
			[161355] = "Mage_CastStart_Polymorph", -- Penguin
			[161353] = "Mage_CastStart_Polymorph", -- Polar Bear Cub
			[161354] = "Mage_CastStart_Polymorph", -- Monkey
			[126819] = "Mage_CastStart_Polymorph", -- Porcupine
			[277787] = "Mage_CastStart_Polymorph", -- Direhorn
			[277792] = "Mage_CastStart_Polymorph", -- Bumblebee
			[31687] = "Mage_CastStart_WaterElemental",
			[203286] = "Mage_CastStart_GreaterPyro",
			[199786] = "Mage_CastStart_GlacialSpike",
			[113724] = "Mage_CastStart_RingofFrost",
			[257537] = "Mage_CastStart_Ebonbolt",
			[314793] = "Mage_CastStart_Mirrorsoftorment",
			[307443] = "Mage_CastStart_Radiantspark", -- Kyrian
			[314791] = "Mage_CastStart_Shiftingpower", -- Nightfae
			
			-- Monk (Spell Casting)
			[198898] = "Monk_CastStart_CraneSong",

			-- Paladin (Spell Casting)
			[20066] = "Paladin_CastStart_Repentance",
			[10326] = "Paladin_CastStart_Turnevil",
			
			-- Priest (Spell Casting)
			[9484] = "Priest_CastStart_ShackleUndead", 
			[605] = "Priest_CastStart_MindControl",
			[32375] = "Priest_CastStart_MassDispell",
			[265202] = "Priest_CastStart_HolyWordSalvation", -- Holy Word Salvation
			[289666] = "Priest_CastStart_GreaterHeal", -- >:(
			[325013] = "Priest_CastStart_Boonoftheascended",
			[323673] = "Priest_CastStart_Mindgames",

			-- Shaman (Spell Casting)
			[51514] = "Shaman_CastStart_Hex", -- Frog
			[210873] = "Shaman_CastStart_Hex", -- Compy
			[211004] = "Shaman_CastStart_Hex", -- Spider
			[211015] = "Shaman_CastStart_Hex", -- Cockroach
			[211010] = "Shaman_CastStart_Hex", -- Snake
			[269352] = "Shaman_CastStart_Hex", -- Skeletal Hatchling
			[277778] = "Shaman_CastStart_Hex", -- Zandalari Tendonripper
			[277784] = "Shaman_CastStart_Hex", -- Wicker Mongrel
			[309328] = "Shaman_CastStart_Hex", -- Living Honey
			[191634] = "Shaman_CastStart_Stormkeeper",
			[320137] = "Shaman_CastStart_Stormkeeper",
			[210714] = "Mage_CastStart_Icefury", -- Icefury
			[320674] = "Shaman_CastStart_Chainharvest", -- Venthyr
			[328923] = "Shaman_CastStart_Faetransfusion", -- Nightfae
			
			-- Warlock (Spell Casting)
			[710] = "Warlock_CastStart_Banish",
			[5782] = "Warlock_CastStart_Fear",
			[691] = "Warlock_CastStart_SummonDemon", -- Felhunter
			[712] = "Warlock_CastStart_SummonDemon", -- Succubus
			[697] = "Warlock_CastStart_SummonDemon", -- Voidwalker
			[688] = "Warlock_CastStart_SummonDemon", -- Imp
			[30146] = "Warlock_CastStart_SummonDemon", -- Felguard
			[157757] = "Warlock_CastStart_SummonDemon", -- Doomguard
			[157898] = "Warlock_CastStart_SummonDemon", -- Infernal
			[112866] = "Warlock_CastStart_SummonDemon", -- Fel Imp (Glyph)
			[112867] = "Warlock_CastStart_SummonDemon", -- Void Lord (Glyph)
			[112870] = "Warlock_CastStart_SummonDemon", -- Wrathguard (Glyph)
			[112868] = "Warlock_CastStart_SummonDemon", -- Shivarra (Glyph)
			[112869] = "Warlock_CastStart_SummonDemon", -- Observer (Glyph)
			[152108] = "Warlock_CastStart_Cataclysm",
			[30283] = "Warlock_CastStart_ShadowFury",
			[30108] = "Warlock_CastStart_UnstableAffliction",
			[116858] = "Warlock_CastStart_ChaosBolt",
			[6358] = "Warlock_CastStart_Seduction",
			[115268] = "Warlock_CastStart_Seduction",
			
			[265187] = "Warlock_CastStart_DemonicTyrant", -- Summon Demonic Tyrant
			[29893] = "Warlock_CastStart_CreateHealthstone",
			[183601] = "Warlock_CastStart_CreateHealthstone",
			[6201] = "Warlock_CastStart_CreateHealthstone",
			[325289] = "Warlock_CastStart_Decimatingbolt", -- Necrolord
			[321792] = "Warlock_CastStart_Impendingcatastrophe", -- Venthyr
			[325640] = "Warlock_CastStart_Soulrot", -- Nightfae
			[264106] = "Warlock_CastStart_Deathbolt",

			-- Warrior (Spell Casting)
			[64382] = "Warrior_CastStart_ShatteringThrow",
		},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		castSuccess = {					--cast success [spellid] = ".mp3 file name",
			-- Cure (DPS Dispel)
			[213644] = "Bundle_CastSuccess_Cure", 		-- Cleanse Toxins (Retribution/Protection Paladin)
			[236186] = "Bundle_CastSuccess_Cure",		-- Cleansing Light (Paladin Honor Talent)
			[51886] = "Bundle_CastSuccess_Cure", 		-- Cleanse Spirit (Enhancement/Elemental Shaman)
			[2782] = "Bundle_CastSuccess_Cure", 		-- Remove Corruption (Guardian/Feral/Balance Druid)
			[213634] = "Bundle_CastSuccess_Cure", 		-- Purify Disease (Shadow Priest)
			[218164] = "Bundle_CastSuccess_Cure", 		-- Detox (Brewmaster/Windwalker Monk)
			[475] = "Bundle_CastSuccess_Cure",			-- Remove Curse (Mage)
			--I miss Remove Curse for mages. :( This spot is reserved for its memory. 
			
			-- Dispel (Healer (Magic) Dispel)
			[4987] = "Bundle_CastSuccess_Dispel", 		-- Cleanse (Holy Paladin)
			[77130] = "Bundle_CastSuccess_Dispel", 	-- Purify Spirit (Restoration Shaman)
			[88423] = "Bundle_CastSuccess_Dispel", 	-- Nature's Cure (Restoration Druid)
			[527] = "Bundle_CastSuccess_Dispel", 		-- Purify (Holy/Discipline Priest)
			[115450] = "Bundle_CastSuccess_Dispel", 	-- Detox (Mistweaver Monk)
			-- Warlocks, because they're special snowflakes.
			[89808] = "Bundle_CastSuccess_Dispel", 	-- Singe Magic
			[137178] = "Bundle_CastSuccess_Dispel",	-- Singe Magic (Green)
			[119905] = "Bundle_CastSuccess_Dispel",	-- Singe Magic 2, Electric Boogaloo
			[212623] = "Bundle_CastSuccess_Dispel",	-- Singe Magic (PvP Talent)
			[212620] = "Bundle_CastSuccess_Dispel",	-- Singe Magic (PvP Talent, looks to be unused)
			
			-- CastSuccess (Major, cast-time CCs that went off)
				--Polymorph (Mage)
			[118] = "Bundle_CastSuccess_Success", -- Sheep
			[28271] = "Bundle_CastSuccess_Success", -- Turtle
			[28272] = "Bundle_CastSuccess_Success", -- Pig
			[61305] = "Bundle_CastSuccess_Success", -- Black Cat
			[61721] = "Bundle_CastSuccess_Success", -- Rabbit
			[61025] = "Bundle_CastSuccess_Success", -- Serpent
			[61780] = "Bundle_CastSuccess_Success", -- Turkey
			[161372] = "Bundle_CastSuccess_Success", -- Peacock
			[161355] = "Bundle_CastSuccess_Success", -- Penguin
			[161353] = "Bundle_CastSuccess_Success", -- Polar Bear Cub
			[161354] = "Bundle_CastSuccess_Success", -- Monkey
			[126819] = "Bundle_CastSuccess_Success", -- Porcupine
			[277787] = "Bundle_CastSuccess_Success", -- Direhorn
			[277792] = "Bundle_CastSuccess_Success", -- Bumblebee

			[113724] = "Bundle_CastSuccess_Success", -- Ring of Frost
				--Hex (Shaman)
			[51514] = "Bundle_CastSuccess_Success", -- Frog
			[210873] = "Bundle_CastSuccess_Success", -- Compy
			[211004] = "Bundle_CastSuccess_Success", -- Spider
			[211015] = "Bundle_CastSuccess_Success", -- Cockroach
			[211010] = "Bundle_CastSuccess_Success", -- Snake		
			[269352] = "Bundle_CastSuccess_Success", -- Skeletal Hatchling
			[277778] = "Bundle_CastSuccess_Success", -- Zandalari Tendonripper
			[277784] = "Bundle_CastSuccess_Success", -- Wicker Mongrel
			[309328] = "Bundle_CastSuccess_Success", -- Living Honey
				--
			[5782] = "Bundle_CastSuccess_Success", -- Fear (Warlock)
			[33786] = "Bundle_CastSuccess_Success", -- Cyclone (Druid)
			--[209753] = "success", -- Cyclone (Druid)
			[19386] = "Bundle_CastSuccess_Success", --Wyvern Sting (Hunter)
			[20066] = "Bundle_CastSuccess_Success", -- Repentence (Paladin)
			[605] = "Bundle_CastSuccess_Success", -- Mind Control (Priest)
			[2637] = "Bundle_CastSuccess_Success", -- Hibernate (Druid)/leave/lea
			[1513] = "Bundle_CastSuccess_Success", -- Scare Beast (Hunter)
			
			-- Connected (Big Beefy cast-time abilities that successfully connect.)
			[203286] = "Bundle_CastSuccess_BigDamage", -- Greater Pyro
			[116858] = "Bundle_CastSuccess_BigDamage", -- Chaos Bolt
			
			-- Purges
			[528] = "Bundle_CastSuccess_Purge",		-- Dispel Magic (Priest)
			[370] = "Bundle_CastSuccess_Purge", 		-- Purge (Shaman)
			[19505] = "Bundle_CastSuccess_Purge",		-- Devour Magic (Warlock :|)
			[278326] = "Bundle_CastSuccess_Purge",		-- Consume Magic (Demon Hunter apparently????)
			[19801] = "Bundle_CastSuccess_Purge",		-- Tranquilizing Shot (Hunter)
		
			--GENERAL
			[2825] = "Bundle_CastSuccess_BloodLust",
			[32182] = "Bundle_CastSuccess_BloodLust",
			[80353] = "Bundle_CastSuccess_BloodLust",
			[90355] = "Bundle_CastSuccess_BloodLust",
			[160452] = "Bundle_CastSuccess_BloodLust",
			[178207] = "Bundle_CastSuccess_BloodLust",
			[204361] = "Bundle_CastSuccess_BloodLust",
			[272678] = "Bundle_CastSuccess_BloodLust",	--Primal Rage (Hunter)
			[204362] = "Bundle_CastSuccess_BloodLust",

			[107079] = "Race_CastSuccess_QuakingPalm",
			[20549] = "Race_CastSuccess_WarStomp",
			[28730] = "Race_CastSuccess_ArcaneTorrent",
			[25046] = "Race_CastSuccess_ArcaneTorrent",
			[50613] = "Race_CastSuccess_ArcaneTorrent",
			[69179] = "Race_CastSuccess_ArcaneTorrent",
			[155145] = "Race_CastSuccess_ArcaneTorrent",
			[129597] = "Race_CastSuccess_ArcaneTorrent",
			[202719] = "Race_CastSuccess_ArcaneTorrent",
			[80483] = "Race_CastSuccess_ArcaneTorrent",
			[232633] = "Race_CastSuccess_ArcaneTorrent",
			[58984] = "Race_CastSuccess_Shadowmeld",
			[20594] = "Race_CastSuccess_Stoneform",
			[7744] = "Race_CastSuccess_WillOfTheForsaken",
			[59752] = "Race_CastSuccess_EveryMan", 
			[287712] = "Race_CastSuccess_Haymaker",
			[295707] = "Race_CastSuccess_Regeneratin",

			[208683] = "Bundle_CastSuccess_Trinket", -- Gladiator's Medallion Legion
			[195710] = "Bundle_CastSuccess_Trinket", -- Honorable Medallion Legion
			[336126] = "Bundle_CastSuccess_Trinket", -- Gladiator's Medallion Shadowlands
			[42292] = "Bundle_CastSuccess_Trinket", -- Inherited Insignias (Heirloom PvP Trinkets)
			[23035] = "ALL_CastSuccess_BattleStandard",
			[23034] = "ALL_CastSuccess_BattleStandard",

			[213664] = "Monk_CastSuccess_NimbleBrew", -- Nimble Brew consumable
			[6262] = "ALL_CastSuccess_Healthstone", -- Healthstone consumable
			[265221] = "Race_CastSuccess_Fireblood", -- Fireblood (Dark Iron Dwarf)
			[256948] = "Race_CastSuccess_SpatialRift", -- Spatial Rift (Void Elf)
			[257040] = "Race_CastSuccess_SpatialRift2", -- Spatial Rift Teleport (Spatial Warp) (Void Elf)
			[255654] = "Race_CastSuccess_BullRush", -- Bull Rush (Highmountain Racial)
			
			-- Covenant (Cast Success)
			[324631] = "ALL_CastSuccess_Fleshcraft", -- Necrolord signature
			[323436] = "ALL_CastSuccess_Phialofserenity", -- Kyrian signature
			
			-- Death Knight (Cast Success)
			[47528] = "DK_CastSuccess_MindFreeze",
			[47476] = "DK_CastSuccess_Strangulate",
			[47568] = "DK_CastSuccess_RuneWeapon", -- Empowered Rune Weapon
			[207127] = "DK_CastSuccess_RuneWeapon", -- Hungering Rune Weapon
			[207289] = "DK_CastSuccess_RuneWeapon", -- Unholy Assault (Unholy)
			[49206] = "DK_CastSuccess_Gargoyle", 			-- Summon Gargoyle
			[207349] = "DK_CastSuccess_Gargoyle",			-- Dark Arbiter
			[77606] = "DK_CastSuccess_Darksimulacrum",
			[51052] = "DK_CastSuccess_AntiMagicZone",
			[108194] = "DK_CastSuccess_Asphyxiate",
			[108199] = "DK_CastSuccess_GorefiendGrasp",
			[207167] = "DK_CastSuccess_BlindingSleet",
			[204160] = "DK_CastSuccess_ChillStreak",
			[305392] = "DK_CastSuccess_ChillStreak",
			[279302] = "DK_CastSuccess_SindragosaFury", -- Frostwyrm's Fury
			[343294] = "DK_CastSuccess_SoulReaper",
			[275699] = "DK_CastSuccess_Apocalypse",
			[49576] = "DK_CastSuccess_DeathGrip",
			[212552] = "DK_CastSuccess_WraithWalk",
			[48265] = "DK_CastSuccess_DeathsAdvance", -- Death's Advance
			[203173] = "DK_CastSuccess_DeathChain", -- Death Chain
			[48743] = "DK_CastSuccess_DeathPact", -- Death Pact
			[46584] = "DK_CastSuccess_RaiseDead", -- Raise Dead
			[46585] = "DK_CastSuccess_RaiseDead", -- Raise Dead
			[327574] = "DK_CastSuccess_SacrificialPact",
			[288853] = "DK_CastSuccess_RaiseAbomination", -- Raise Abomination
			[324128] = "DK_CastSuccess_Deathdue", -- Night Fae
			[312202] = "DK_CastSuccess_Shackletheunworthy", -- Kyrian
			
			-- Demon Hunter (Cast Success)
			[183752] = "DH_CastSuccess_Disrupt",
			[179057] = "DH_CastSuccess_ChaosNova",
			[206649] = "DH_CastSuccess_LeotherasEye",
			[205604] = "DH_CastSuccess_ReverseMagic",
			[205629] = "DH_CastSuccess_Trample",
			[205630] = "DH_CastSuccess_IllidansGrasp",
			[202138] = "DH_CastSuccess_GripSigil",
			[207684] = "DH_CastSuccess_FearSigil",
			[202140] = "DH_CastSuccess_FearSigil",
			[202137] = "DH_CastSuccess_SilenceSigil",
			[207682] = "DH_CastSuccess_SilenceSigil",
			[211881] = "DH_CastSuccess_FelEruption",
			[203704] = "DH_CastSuccess_ManaBreak",
			[217832] = "DH_CastSuccess_Imprison",		-- Demons Only (until 7.1.5 because lol holinka)
			[221527] = "DH_CastSuccess_Imprison",		-- Honor Talent (on Players)
			[196718] = "DH_CastSuccess_Darkness",
			[198013] = "DH_CastSuccess_EyeBeam",
			[235903] = "DH_CastSuccess_ManaRift",
			[317009] = "DH_CastSuccess_Sinfulbrand",	-- Venthyr
			[306830] = "DH_CastSuccess_Elysiandecree", -- Kyrian			
			[329554] = "DH_CastSuccess_Fodderoftheflame", -- Necrolord

			-- Druid (Cast Success)
			[740] = "Druid_CastSuccess_Tranquility",
			[78675] = "Druid_CastSuccess_SolarBeam",
			[102359] = "Druid_CastSuccess_MassEntanglement",
			[99] = "Druid_CastSuccess_DisorientingRoar",
			[5211] = "Druid_CastSuccess_MightyBash",
			[102417] = "Druid_CastSuccess_WildCharge",
			[102383] = "Druid_CastSuccess_WildCharge",
			[49376] = "Druid_CastSuccess_WildCharge",
			[16979] = "Druid_CastSuccess_WildCharge",
			[102416] = "Druid_CastSuccess_WildCharge",
			[102401] = "Druid_CastSuccess_WildCharge",
			[106839] = "Druid_CastSuccess_SkullBash",
			[203651] = "Druid_CastSuccess_Overgrowth",
			[201664] = "Druid_CastSuccess_DemoRoar",
			[61391] = "Druid_CastSuccess_Typhoon",
			[132469] = "Druid_CastSuccess_Typhoon",
			[5215] = "Druid_CastSuccess_Prowl",
			[22570] = "Druid_CastSuccess_Maim",
			[236026] = "Druid_CastSuccess_Maim",
			[209749] = "Druid_CastSuccess_FaerieSwarm",
			[2908] = "Druid_CastSuccess_Soothe",
			[202246] = "Druid_CastSuccess_Overrun", -- Overrun Guardian Druid Honor Talent
			[102793] = "Druid_CastSuccess_UrsolsVortex", -- Ursol's Vortex
			[197721] = "Druid_CastSuccess_Flourish", -- Flourish
			[325727] = "Druid_CastStart_Adaptiveswarm", -- Necrolord
			[323764] = "Druid_CastSuccess_ConvokeTheSpirits", -- Nightfae
			[327071] = "Druid_CastSuccess_Kindredfocus", -- Kyrian 1
			[327022] = "Druid_CastSuccess_Kindredempowerment", -- Kyrian 2
			[327037] = "Druid_CastSuccess_Kindredprotection", -- Kyrian 3
			
			-- Hunter (Cast Success)
			[147362] = "Hunter_CastSuccess_Countershot",
			[109248] = "Hunter_CastSuccess_BindingShot",
			[109304] = "Hunter_CastSuccess_Exhilaration",
			[131894] = "Hunter_CastSuccess_MurderOfCrows",
			[121818] = "Hunter_CastSuccess_Stampede",
			[201430] = "Hunter_CastSuccess_Stampede",
			[202914] = "Hunter_CastSuccess_SpiderSting",
			[208652] = "Hunter_CastSuccess_DireHawk",
			[205691] = "Hunter_CastSuccess_DireBasilisk",
			[187707] = "Hunter_CastSuccess_Muzzle",
			[187650] = "Hunter_CastSuccess_FreezingTrap",
			[213691] = "Hunter_CastSuccess_ScatterShot",
			[186387] = "Hunter_CastSuccess_BurstingShot",
			[1543] = "Hunter_CastSuccess_Flare",
			[199483] = "Hunter_CastSuccess_Camouflage",
			[236776] = "Hunter_CastSuccess_BoomTrap", -- Hi-Explosive Trap
			[248518] = "Hunter_CastSuccess_Interlope", -- Interlope
			[325028] = "Hunter_CastSuccess_Deathchakram", -- Necrolord
			[308491] = "Hunter_CastSuccess_Resonatingarrow", -- Kyrian
			[257284] = "Hunter_CastSuccess_HuntersMark",
			[19577] = "Hunter_CastSuccess_Intimidation", -- Intimidation 펫스턴
			[324149] = "Hunter_CastSuccess_Flayedshot", -- Venthyr
			[328231] = "Hunter_CastSuccess_Wildspirits", -- Nightfae
			
			-- Mage (Cast Success)
			[2139] = "Mage_CastSuccess_Counterspell", 
			[66] = "Mage_CastSuccess_GreaterInvisibility", 
			[12051] = "Mage_CastSuccess_Evocation",
			[110959] = "Mage_CastSuccess_GreaterInvisibility",
			[153561] = "Mage_CastSuccess_Meteor",
			[198158] = "Mage_CastSuccess_MassInvis",
			[30449] = "Mage_CastSuccess_SpellSteal",
			[205021] = "Mage_CastSuccess_RayOfFrost",
			[235219] = "Mage_CastSuccess_ColdSnap",
			[235450] = "Mage_CastSuccess_MageShield", -- Prismatic Barrier
			[235313] = "Mage_CastSuccess_MageShield", -- Blazing Barrier
			[11426] = "Mage_CastSuccess_MageShield", -- Ice Barrier
			[205025] = "Mage_CastSuccess_PresenceOfMind",
			[108839] = "Mage_CastSuccess_IceFloes",
			[31661] = "Mage_CastSuccess_DragonBreath", -- Dragon's Breath
			[55342] = "Mage_CastSuccess_MirrorImage",
			[122] = "Mage_CastSuccess_FrostNova",
			
			-- Monk (Cast Success)
			[116841] = "Monk_CastSuccess_TigersLust",
			[119381] = "Monk_CastSuccess_LegSweep", --팽차
			[123904] = "Monk_CastSuccess_InvokeXuen", --쉬엔
			[115078] = "Monk_CastSuccess_Paralysis", --마비
			[116705] = "Monk_CastSuccess_SpearStrike", --손날 찌르기
			[119996] = "Monk_CastSuccess_Transfer", --해탈
			[137639] = "Monk_CastSuccess_StormEarthFire", --폭대불
			[115310] = "Monk_CastSuccess_Revival", --재활
			
			[325197] = "Monk_CastSuccess_Fistweaving", --주학
			[322118] = "Monk_CastSuccess_InvokeSerpent", --위론 소환
			--[214326] = "explodingKeg",
			[115080] = "Monk_CastSuccess_TouchOfDeath", --절명
			[322109] = "Monk_CastSuccess_TouchOfDeath", --절명
			[233759] = "Monk_CastSuccess_GrappleWeapon", --갈고리무기
			[122470] = "Monk_CastSuccess_TouchOfKarma", --업보
			--[209525] = "soothingMist",
			--[205320] = "strikeOfTheWindlord",
			[116844] = "Monk_CastSuccess_RingOfPeace", --평고
			[202370] = "Monk_CastSuccess_MightyOxKick", --황소 발차기
			[325216] = "Monk_CastSuccess_Bonedustbrew", --골분주 -- Necrolord
			[327104] = "Monk_CastSuccess_Faelinestomp", --페이 지맥 울리기 -- Night Fae
			[326860] = "Monk_CastSuccess_Fallenorder", --망자의 연맹 -- Venthyr
			
			-- Paladin (Cast Success)
			[96231] = "Paladin_CastSuccess_Rebuke", --비난
			[853] = "Paladin_CastSuccess_Hammerofjustice", 	--심판의 망치
			[31821] = "Paladin_CastSuccess_AuraMastery", --오라 숙련
			[190784] = "Paladin_CastSuccess_Pony",	--군마 -- Divine Steed (Was Holy/Ret, now all specs)
			[115750] = "Paladin_CastSuccess_BlindingLight", --눈부신 빛
			[210256] = "Paladin_CastSuccess_Sanctuary", --성역의 축복
			[633] = "Paladin_CastSuccess_LayOnHands", --신축
			[6940] = "Paladin_CastSuccess_Sacrifice", --희축 	-- Blessing of Sacrifice
			[199448] = "Paladin_CastSuccess_UltimateSacrifice",	--궁극의 희생 -- Blessing of Sacrifice (Ultimate Sacrifice PvP Talent)
			[199452] = "Paladin_CastSuccess_UltimateSacrifice",	--궁극의 희생 -- Placeholder for Ultimate Sacrifice
			[343527] = "Paladin_CastSuccess_ExecutionSentence", --사형선고
			[152262] = "Paladin_CastSuccess_Seraphim", --고위 천사
			[343721] = "Paladin_CastSuccess_Finalreckoning", --최후의 집행
			[316958] = "Paladin_CastSuccess_Ashenhallow", --잿빛 신성화
			[328282] = "Paladin_CastSuccess_Blessingofspring", --봄의 축복
			[328620] = "Paladin_CastSuccess_Blessingofsummer", --여름의 축복
			[328622] = "Paladin_CastSuccess_Blessingofautumn", --가을의 축복
			[328281] = "Paladin_CastSuccess_Blessingofsummer", --겨울의 축복
			[304971] = "Paladin_CastSuccess_Divinetoll", --천상의 종 --Kyrian
			[328204] = "Paladin_CastSuccess_Vanquisherhammer", --제압자의 망치 -- Necrolord
			
			-- Priest (Cast Success)
			[8122] = "Priest_CastSuccess_Fear4", 		-- Psychic Scream
			[34433] = "Priest_CastSuccess_Shadowfiend", 
			[64044] = "Priest_CastSuccess_PsychicHorror", --덜덜이 -- Psychic Horror
			[15487] = "Priest_CastSuccess_Silence",
			[64843] = "Priest_CastSuccess_DivineHymn",
			[19236] = "Priest_CastSuccess_DesperatePrayer",
			[123040] = "Priest_CastSuccess_Mindbender",
			[204263] = "Priest_CastSuccess_ShiningForce",
			[2050] = "Priest_CastSuccess_HolySerenity",
			[88625] = "Priest_CastSuccess_Chastise",
			[205369] = "Priest_CastSuccess_MindBomb", --정신 폭탄
			[211522] = "Priest_CastSuccess_Psyfiend", --영혼의 마귀
			[108968] = "Priest_CastSuccess_Voidshift", --피바꾸기
			[62618] = "Priest_CastSuccess_WordBarrier", --방벽
			[271466] = "Priest_CastSuccess_WordBarrier", --방벽 -- Luminous Barrier
			[263165] = "Priest_CastSuccess_VoidTorrent", --공허의 격류
			[73325] = "Priest_CastSuccess_LeapOfFaith", --신의 도약
			[215769] = "Priest_CastSuccess_Redeemer", --구원의 영혼
			[32379] = "Priest_CastSuccess_ShadowWordDeath", --어둠의 권능(죽음)-- Shadow Word: Death
			[289657] = "Priest_CastSuccess_Holywordconcentration", --빛의 권능: 집중(신사오숙)
			[316262] = "Priest_CastSuccess_Thoughtsteal", --생각 훔치기
			[327661] = "Priest_CastSuccess_Faeguardians", --페이 수호자 -- Night Fae
			[325013] = "Priest_CastStart_Boonoftheascended", --승천자의 은혜 -- Kyrian
			[324724] = "Priest_CastSuccess_Unholynova", --부정한 폭발 -- Necrolord

			-- Rogue (Cast Success)
			[2094] = "Rogue_CastSuccess_Blind", --실명
			[1766] = "Rogue_CastSuccess_Kick", --발차기
			[1856] = "Rogue_CastSuccess_Vanish", --소멸
			[212182] = "Rogue_CastSuccess_SmokeBomb", --연막
			[79140] = "Rogue_CastSuccess_Vendetta", --원한
			[207777] = "Rogue_CastSuccess_Dismantle", --장비 분해
			[200806] = "Rogue_CastSuccess_Exsanguinate", --방혈
			[198529] = "Rogue_CastSuccess_PlunderArmor", --방어구 약탈
			[408] = "Rogue_CastSuccess_Kidney", --급가
			[199804] = "Rogue_CastSuccess_Kidney", --급가
			[193316] = "Rogue_CastSuccess_DiceRoll", --뼈주사위
			[1776] = "Rogue_CastSuccess_Gouge", --후려치기 
			[13750] = "Rogue_CastSuccess_AdrenalineRush", --아드레날린 촉진
			[1784] = "Rogue_CastSuccess_Stealth",
			[206328] = "Rogue_CastSuccess_Neurotoxin", --신경독 -- Neurotoxin Honor Talent
			[328305] = "Rogue_CastSuccess_Sepsis", --피고름
			[185311] = "Rogue_CastSuccess_CrimsonVial", --진홍색 약병
			[323547] = "Rogue_CastSuccess_Echoingreprimand", --울려퍼지는 문책 -- Kyrian
			[323654] = "Rogue_CastSuccess_Flagellation", --채찍질 -- Venthyr
			[328547] = "Rogue_CastSuccess_Serratedbonespikes", --톱니 뼈 가시 -- Necrolord

			-- Shaman (Cast Success)
			[108281] = "Shaman_AuraApplied_AncestralGuidance", --고대의 인도
			[57994] = "Shaman_CastSuccess_WindShear", --칼바
			[198067] = "Shaman_CastSuccess_FireElemental", -- Updated for Legion
			[198103] = "Shaman_CastSuccess_EarthElemental", -- Updated for Legion
			[192249] = "Shaman_CastSuccess_StormElemental", -- Updated for Legion
			[204437] = "Shaman_CastSuccess_LightningLasso", --번개 올가미
			[305483] = "Shaman_CastSuccess_LightningLasso", -- 8.2 --번개 올가미
			[51490] = "Shaman_CastSuccess_Thunderstorm", --천둥폭풍
			[320125] = "Shaman_CastSuccess_Echoingshock", --메아리치는 충격
			[326059] = "Shaman_CastSuccess_Primordialwave", --태고의 파도 -- Necrolord
			
			-- Shaman (Totems)
			[98008] = "Shaman_CastSuccess_SpiritLinkTotem", --정고토 --"Shaman_CastSuccess_SpritLinkTotem"
			[51485] = "Shaman_CastSuccess_Earthgrab", --구속 토템
			[108280] = "Shaman_CastSuccess_HealingTide", --치유해일 토템
			[108269] = "Shaman_CastSuccess_Capacitor", --축전 토템
			[192058] = "Shaman_CastSuccess_Capacitor", --축전 토템 Updated for Legion						
			[152255] = "Shaman_CastSuccess_LiquidMagma", --용암 토템		
			[192222] = "Shaman_CastSuccess_LiquidMagma", -- Updated for Legion
			[192077] = "Shaman_CastSuccess_WindRushTotem", --바람걸음 토템
			[204330] = "Shaman_CastSuccess_SkyfuryTotem", --하늘격노 토템
			[204331] = "Shaman_CastSuccess_CounterstrikeTotem", --반격 토템
			[8512] = "Shaman_CastSuccess_WindfuryTotem",	
			[207399] = "Shaman_CastSuccess_ReincarnationTotem", --윤회 토템
			[198838] = "Shaman_CastSuccess_ProtectionTotem", --대지벽 토템
			[204336] = "Shaman_CastSuccess_Grounding", --마흡 토템 -- Updated for Legion
			[8143] = "Shaman_CastSuccess_TremorTotem", --진동 토템 -- Tremor Totem!
			[16191] = "Shaman_CastSuccess_ManaTideTotem", --마나 해일 토템
			[324386] = "Shaman_CastSuccess_Vespertotem", --만과 토템
			
			-- Warlock (Cast Success)
			[6789] = "Warlock_CastSuccess_MortalCoil", --필멸의 고리
			[5484] = "Warlock_CastSuccess_TerrorHowl", --공울
			[19647] = "Warlock_CastSuccess_SpellLock",
			[119910] = "Warlock_CastSuccess_SpellLock",
			[171140] = "Warlock_CastSuccess_SpellLock",
			[171138] = "Warlock_CastSuccess_SpellLock",
			[212619] = "Warlock_CastSuccess_SpellLock",
			[115781] = "Warlock_CastSuccess_SpellLock",
			[132409] = "Warlock_CastSuccess_SpellLock",
			[119910] = "Warlock_CastSuccess_SpellLock",
			[251523] = "Warlock_CastSuccess_SpellLock",
			[251922] = "Warlock_CastSuccess_SpellLock",
			[288047] = "Warlock_CastSuccess_SpellLock",
			[119898] = "Warlock_CastSuccess_SpellLock", -- OH LOOK ANOTHER ONE
			[48020] = "Warlock_CastSuccess_DemonicCircleTeleport", --소환진 이동
			[111859] = "Warlock_CastSuccess_GrimoireOfService",
			[111895] = "Warlock_CastSuccess_GrimoireOfService",
			[111896] = "Warlock_CastSuccess_GrimoireOfService",
			[111897] = "Warlock_CastSuccess_GrimoireOfService",
			[111898] = "Warlock_CastSuccess_GrimoireOfService",
			[1122] = "Warlock_CastSuccess_SummonInfernal",
			[201996] = "Warlock_CastSuccess_Callobserver",
			[205180] = "Warlock_CastSuccess_Darkglare",
			[199954] = "Warlock_CastSuccess_CurseOfFragility", --연약함의 저주 -- Curse of Fragility
			[199892] = "Warlock_CastSuccess_CurseOfWeakness", --무력화 저주 -- Curse of Weakness
			[199890] = "Warlock_CastSuccess_CurseOfTongues", --언어의 저주 -- Curse of Tongues
			[80240] = "Warlock_CastSuccess_Havoc", --대혼란
			[312321] = "Warlock_CastSuccess_Scouringtithe", --헌금 갈취
			[205179] = "Warlock_CastSuccess_Phantomsingularity", --유령 특이점
			[344566] = "Warlock_CastSuccess_RapidContagion", --신속한 전염

			-- Warrior (Cast Success)
			[97462] = "Warrior_CastSuccess_CommandingShout", --지휘의 외침(재집결의 외침)
			[5246] = "Warrior_CastSuccess_Fear3", --위협 -- Intimidating Shout
			[6552] = "Warrior_CastSuccess_Pummel", --자루치기
			[46968] = "Warrior_CastSuccess_Shockwave", --충격파
			[107570] = "Warrior_CastSuccess_StormBolt", --폭망
			[152277] = "Warrior_CastSuccess_Ravager", --쇠날발톱 -- Arms
			[228920] = "Warrior_CastSuccess_Ravager", --쇠날발톱 -- Protection
			[1160] = "Warrior_CastSuccess_DemoShout", --사기의 외침
			[213915] = "Warrior_CastSuccess_MassSpellReflection", --대규모 주문 반사
			[236077] = "Warrior_CastSuccess_Disarm", --무장해제
			[236236] = "Warrior_CastSuccess_Disarm", --무장해제
			[236320] = "Warrior_CastSuccess_WarBanner", --전투깃발
			[6544] = "Warrior_CastSuccess_HeroicLeap", --영웅의 도약
			[206572] = "Warrior_CastSuccess_DragonCharge", --용의 돌진 -- Dragon Charge
			[325886] = "Warrior_CastSuccess_Ancientaftershock", --고대의 여진 
			[324143] = "Warrior_CastSuccess_Conquerorbanner", --정복자의 깃발 -- Necrolord
			[307865] = "Warrior_CastSuccess_Spearofbastion", --보루의 창 -- Kyrian
			[64382] = "Warrior_CastSuccess_ShatteringThrowSuccess", --분쇄의 투척 성공
			[316531] = "Warrior_CastSuccess_Intervene", --가로막기 --수정됨
		},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Bundle_CastSuccess_Lockout = {			--friendly interrupt [spellid] = ".mp3 file name", --아군이 침묵 성공시
			[19647] = "Bundle_CastSuccess_Lockout", -- Warlock Spell Locks begin
			[119910] = "Bundle_CastSuccess_Lockout", --짤 침묵
			[171140] = "Bundle_CastSuccess_Lockout",
			[171138] = "Bundle_CastSuccess_Lockout",
			[212619] = "Bundle_CastSuccess_Lockout",
			[115781] = "Bundle_CastSuccess_Lockout",
			[132409] = "Bundle_CastSuccess_Lockout",
			[119910] = "Bundle_CastSuccess_Lockout",
			[251523] = "Bundle_CastSuccess_Lockout",
			[251922] = "Bundle_CastSuccess_Lockout",
			[288047] = "Bundle_CastSuccess_Lockout",
			[119898] = "Bundle_CastSuccess_Lockout", -- Spell Locks end
			[2139] = "Bundle_CastSuccess_Lockout", -- Counterspell
			[1766] = "Bundle_CastSuccess_Lockout", -- Kick
			[6552] = "Bundle_CastSuccess_Lockout", -- Pummel
			[47528] = "Bundle_CastSuccess_Lockout", -- Mind Freeze
			[96231] = "Bundle_CastSuccess_Lockout", -- Rebuke
			[93985] = "Bundle_CastSuccess_Lockout", -- Skull Bash
			[97547] = "Bundle_CastSuccess_Lockout", -- Solar Beam
			[57994] = "Bundle_CastSuccess_Lockout", -- Wind Shear
			[116705] = "Bundle_CastSuccess_Lockout", -- Spear Hand Strike
			[147362] = "Bundle_CastSuccess_Lockout", -- Counter Shot
			[183752] = "Bundle_CastSuccess_Lockout", -- Consume Magic (Demon Hunter)
			[187707] = "Bundle_CastSuccess_Lockout", -- Muzzle (Survival Hunter)
		},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Bundle_CastSuccess_Interrupted = {			--friendly interrupt [spellid] = ".mp3 file name", --아군이 침묵 당했을때
			[19647] = "Bundle_CastSuccess_Interrupted", -- Spell Lock
			[171140] = "Bundle_CastSuccess_Interrupted", -- Spell Lock
			[171138] = "Bundle_CastSuccess_Interrupted", -- Spell Lock
			[212619] = "Bundle_CastSuccess_Interrupted", -- Spell Lock
			[119910] = "Bundle_CastSuccess_Interrupted", -- Spell Lock
			[115781] = "Bundle_CastSuccess_Interrupted", -- Spell Lock (Optical Blast)
			[119898] = "Bundle_CastSuccess_Interrupted", -- Spell Lock YET AGAIN
			[2139] = "Bundle_CastSuccess_Interrupted", -- Counterspell
			[1766] = "Bundle_CastSuccess_Interrupted", -- Kick
			[6552] = "Bundle_CastSuccess_Interrupted", -- Pummel
			[47528] = "Bundle_CastSuccess_Interrupted", -- Mind Freeze
			[96231] = "Bundle_CastSuccess_Interrupted", -- Rebuke
			[93985] = "Bundle_CastSuccess_Interrupted", -- Skull Bash
			[97547] = "Bundle_CastSuccess_Interrupted", -- Solar Beam
			[57994] = "Bundle_CastSuccess_Interrupted", -- Wind Shear
			[116705] = "Bundle_CastSuccess_Interrupted", -- Spear Hand Strike
			[147362] = "Bundle_CastSuccess_Interrupted", -- Counter Shot
			[183752] = "Bundle_CastSuccess_Interrupted", -- Consume Magic (Demon Hunter)
			[187707] = "Bundle_CastSuccess_Interrupted", -- Muzzle (Survival Hunter)
		},
	}
end
