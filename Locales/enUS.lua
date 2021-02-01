﻿local L = LibStub("AceLocale-3.0"):NewLocale("BabbiWatch", "enUS",true)
if not L then return end

L["BW_TEXT"] = "|cff69CCF0BabbiWatch|r (|cffFFF569/BW|r)"
L["BW_VERSION"] = "|cffFF7D0A 0.9.2 |r(|cff9482C99.0.2 Shadowlands|r)"
L["Spell_CastSuccess"] = "On Successful Cast"
L["Spell_CastStart"] = "On Beginning of Spell Cast"
L["Spell_AuraApplied"] = "On Buff/Debuff Application"
L["Spell_AuraRemoved"] = "On Buff/Debuff Removal"
L["Spell_Interrupt"] = "On Cast Interrupt"
L["Spell_Summon"] = "On Spell Summon"
L["Any"] = true
L["Player"] = true
L["Target"] = true
L["Focus"] = true
L["Mouseover"] = true
L["Party"] = true
L["Raid"] = true
L["Arena"] = true
L["Boss"] = true
L["Custom"] = true
L["Friendly"] = true
L["Hostile player"] = true
L["Hostile unit"] = true
L["Neutral"] = true
L["Myself"] = true
L["Mine"] = true
L["My pet"] = true
L["Custom Spell"] = true
L["New Sound Alert"] = true
L["name"] = "File Name"
L["same name already exists"] = "Spell name already exists"
L["spellid"] = "Spell ID"
L["Remove"] = "Delete Sound"
L["Are you sure?"] = true
L["Test"] = "Test File Path"
L["Use existing sound"] = true
L["choose a sound"] = "Choose existing sound"
L["file path"] = "Custom File Path"
L["event type"] = "Event Type"
L["Source unit"] = "Source Unit"
L["Source type"] = "Source Type"
L["Custom unit name"] = "Custom Unit Name"
L["Dest unit"] = "Destination Unit"
L["Dest type"] = "Destination Type"
--fix
L["BabbiWatchCredits"] = 
"|r|n|n|cffC41F3B[IMPORTANT]|r|n"..
"|cffC41F3BBabbiWatch Source Code diverged from Gladiatorlos SA2 (ver3.2) and was produced under the GPL License.|r|n|n|n"..

"|cffFFF500[Introducing BabbiWatch]|r|n"..
"Hello, I'm Babbi, an add-on producer playing in Ticondrius alliance, North America.|r|n"..
"BabbiWatch is a PvP add-on to announce the important orders the enemy has made.|r|n"..
"This add-on started at the request of a small number of Korean users and was produced based on GSA and GSA2 add-on sources.|r|n"..
"I hope you give me a lot of feedback and I'll do my best to update.|n|n"..

"|cffFFF500[Notifications]|r|n"..
"All feedback is received from |cffc4302bYoutube(Babbi)|r, |cffA330C9Twitch(babbi17)|r and the Cursorforge site.|n"..
"|cffFF7D0APlease follow and cheer for me!|r|n|n"..

"|cffFFF500[Feature Changes]|r|n"..
"More spell monitoring, spell type classification|r|n"..
"Eliminate unnecessary features, faster response times|r|n"..
"Pursue perfect translation.|r|n|n|n"..

"|cffFFF569[Special Thanks]|r|n"..
"|cff0DD11C<K Alliance>|r Guild Crew|r|n"..
"First Voice Pack Donator and Debug tester |cffC79C6EDoobujam|r|n|n"..

"|cffFFF569[Previous Project Contributor]|r|n"..
"|cff9482C9Abatorlos|r |cffFFF569 - Original GSA Author|r|n"..
"|cffC79C6ExGrit|r |cffFFF569 - GladiatorlosSA2 Creator|r|n"..
"More Contributor and Details wow.curseforge.com/projects/|cffFF7D0Ababbiwatch|r|n"

L["PVP Voice Alert"] = true
L["Load Configuration"] = "<-- Load BAWA Menus"
L["Load Configuration Options"] = true
L["General"] = true
L["General options"] = "General Options"
L["Special"] = true --fix
L["Special options"] = true --fix
L["Enable area"] = "Enabled Locations"
L["Anywhere"] = true
L["Alert works anywhere"] = "Alerts occur anywhere and everywhere."
L["Arena"] = "Arenas"
L["Alert only works in arena"] = "Alerts occur in arenas and PvP Scenarios (such as Island Expeditions)."
L["Battleground"] = "Battlegrounds"
L["Alert only works in BG"] = "Alerts occur in battlegrounds."
L["World"] = true
L["Alert works anywhere else then anena, BG, dungeon instance"] = "Alerts occur in the world such as on Kalimdor or the Broken Isles"
L["Voice config"] = "Voice Options"
L["Voice language"] = true
L["Select language of the alert"] = true
--L["Chinese(female)"] = true
--L["English(female)"] = "English (Female)"
L["Default(male)"] = "Korean(Babbi)"
L["adjusting the voice volume(the same as adjusting the system master sound volume)"] = "Adjusts the voice's volume.|n|nNOTE: The voice uses the client's Master channel. You may need to adjust your other sound options accordingly."
L["Advance options"] = "Advanced Options"
L["Smart disable"] = "Spam Throttle"
L["Disable addon for a moment while too many alerts comes"] = "Briefly disables sound notifications during periods of frequent ability usage."
L["Throttle"] = true
L["The minimum interval of each alert"] = true
L["Abilities"] = true
L["Abilities options"] = true
L["Special Abilities"] = true --fix
L["Special Abilities options"] = true --fix
L["Enable options"] = "Enable Category / Feature"
L["Enable abilities by type"] = true
L["Enable DeBuff Applied"] = "DeBuff Applied" --fix
L["Check this will enable alert for debuff applied to friendly targets from hostile"] = true --fix
L["Enable Buff Applied"] = true --fix
L["Check this will enable alert for buff applied to hostile targets"] = "Enable all alerts in Buff Applied"
L["Enable Buff Down"] = "Buff Down"
L["Check this will enable alert for buff removed from hostile targets"] = "Enable all alerts in Buff Down"
L["Enable Spell Casting"] = "Spell Casting"
L["Chech this will enable alert for spell being casted to friendly targets"] = "Enable all alerts in Spell Casting"
L["Enable special abilities"] = "Special Abilities"
L["Check this will enable alert for instant-cast important abilities"] = "Enable all alerts in Special Abilities"
L["Enable friendly interrupt"] = "Friendly Interrupts"
L["Check this will enable alert for successfully-landed friendly interrupting abilities"] = "Enable the alert for successful interrupts done by you or your allies which lock the enemy out of casting.|n|n('Countered!')"
L["Buff Applied"] = true
L["Target and Focus Only"] = true
L["Alert works only when your current target or focus gains the buff effect or use the ability"] = "If enabled, alerts will only happen if the ability is cast by your current target or focused target.|n|nThis option is separate for each category."
L["Alert Drinking"] = true
L["In arena, alert when enemy is drinking"] = "In arena, alert when enemy is drinking."
L["PvP Trinketed Class"] = true
L["Also announce class name with trinket alert when hostile targets use PvP trinket in arena"] = "In arenas, announces the class that used their Gladiator Medallion. (2 Minute Trinket)|r"
L["General Abilities"] = true
L["|cffFF7D0ADruid|r"] = true
L["|cffF58CBAPaladin|r"] = true
L["|cffFFF569Rogue|r"] = true
L["|cffC79C6EWarrior|r"] = true
L["|cffFFFFFFPriest|r"] = true
L["|cff0070daShaman|r"] = true
L["|cff0070daShaman (Totems)|r"] = true
L["|cff69CCF0Mage|r"] = true
L["|cffC41F3BDeath Knight|r"] = true
L["|cffABD473Hunter|r"] = true
L["|cFF00FF96Monk|r"] = true
L["|cffA330C9Demon Hunter|r"] = true
L["|cff9482C9Warlock|r"] = true
L["Buff Down"] = true
L["Spell Casting"] = true
L["BigHeal"] = "Big Heals"
L["BigHeal_Desc"] = "Clarity of Will (Priest)|nHeal (Priest)|nPower Word: Radiance (Priest)|nHoly Light (|cffF58CBAPaladin|r)|nHealing Wave (|cff0070daShaman|r)|nSurging Mist |cFF00FF96(Monk)|r"
L["Resurrection"] = true
L["Resurrection_Desc"] = "All out-of-combat resurrection abilities."
L["Special Abilities"] = true
L["Friendly Interrupt"] = true
L["Profiles"] = true

L["PvPWorldQuests"] = "NYI"
L["DisablePvPWorldQuests"] = "NYI"
L["DisablePvPWorldQuestsDesc"] = "Disable all alerts in PvP World Quests"
L["OperationMurlocFreedom"] = true

L["EnemyInterrupts"] = "Interrupts (And Solar Beam, because it interrupts AND silences!)"
L["EnemyInterruptsDesc"] = "Enables or disables alerts for ALL enemy Interrupt and Silence abilities."

L["Default / Female voice"] = "Default Voice"
L["Select the default voice pack of the alert"] = " "
L["Optional / Male voice"] = true
L["Select the male voice"] = true
L["Optional / Neutral voice"] = true
L["Select the neutral voice"] = true
L["Gender detection"] = true
L["Activate the gender detection"] = true
L["Voice menu config"] = true
L["Choose a test voice pack"] = true
L["Select the menu voice pack alert"] = true

L["English(male)"] = true
L["No sound selected for the Custom alert : |cffC41F4B"] = true
L["Master Volume"] = true -- changed from L["Volume"] = true
L["Change Output"] = true
L["Unlock the output options"] = true
L["Output"] = true
L["Select the default output"] = true
L["Master"] = "-Master-"
L["SFX"] = true
L["Ambience"] = true
L["Music"] = true
L["Dialog"] = true

L["DPSDispel"] = "Non-Magic Dispels"
L["DPSDispel_Desc"] = "Generic alert for hybrid class dispels that do not remove Magic effects.|n|nRemove Corruption (|cffFF7D0ADruid|r)|nRemove Curse (|cff69CCF0Mage|r)|nDetox (|cFF00FF96Monk|r)|nCleanse Toxins (|cffF58CBAPaladin|r)|nCleansing Light |cffF58CBAPaladin|r)|nPurify Disease (Priest)|nCleanse Spirit (|cff0070daShaman|r)"
L["HealerDispel"] = "Magic Dispels"
L["HealerDispel_Desc"] = "Generic alert for healing class (AND WARLOCKS. >:| ) dispels that remove Magic effects.|n|nNature's Cure (|cffFF7D0ADruid|r)|nDetox (|cFF00FF96Monk|r)|nCleanse (|cffF58CBAPaladin|r)|nPurify (Priest)|nPurify Spirit (|cff0070daShaman|r)|nSinge Magic (|cff9482C9Warlock|r)"
L["CastingSuccess"] = "CC Cast Success"
L["CastingSuccess_Desc"] = "Enables generic 'success' alert when a major enemy cast-time Crowd Control ability successfully finishes a cast.|n|nBe aware that this will announce even if the victim is unaffected, such as on a target that is in a full Diminishing Return cycle.|n|n|cffC41F3BWARNING: ALL of the abilities below will announce their success if this is enabled, even if you have some of them disabled in Spell Casting.|r|n|nCyclone (|cffFF7D0ADruid|r)|nHibernate (|cffFF7D0ADruid|r)|nScare Beast (|cffABD473Hunter|r)|nPolymorph (|cff69CCF0Mage|r)|nRing of Frost (|cff69CCF0Mage|r)|nRepentance (|cffF58CBAPaladin|r)|nMind Control (Priest)|nHex (|cff0070daShaman|r)|nFear (|cff9482C9Warlock|r)"

L["DispelKickback"] = "Dispel Penalties"

L["Purge"] = "Purges"
L["PurgeDesc"] = "Generic alert for purges that remove magic effects from your team, excluding Arcane Torrent.|n|nConsume Magic (|cffA330C9Demon Hunter|r)|nTranquilizing Shot (|cffABD473Hunter|r)|nDispel Magic (Priest)|nPurge (|cff0070daShaman|r)|nDevour Magic (|cff9482C9Warlock|r)"

L["FriendlyInterrupted"] = "Ally Lockout Alert"
L["FriendlyInterruptedDesc"] = "Enable the alert that occurs when an enemy successfully interrupts you or an ally which locks them out of casting.|n|n(Plays the Blizzard 'Quest Failed' sound effect.)"

L["epicbattleground"] = "Epic Battlegrounds"
L["epicbattlegroundDesc"] = "Alerts occur in Epic Battlegrounds.|n|nYou're welcome."

L["OnlyIfPvPFlagged"] = "Only in PvP"
L["OnlyIfPvPFlaggedDesc"] = "If enabled, alerts will no longer play unless you are PvP flagged; such as in War Mode or in a PvP instance. Those areas still need to be enabled for BAWA to function there, even if this option is enabled.|n|n|cffC41F3BWARNING: This also disables alerts while in a Duel, so remember to toggle it off!|r"

L["TankTauntsOFF"] = "Intimidation"
L["TankTauntsOFF_Desc"] = "Alerts the fading of Intimidation: a damage amplification effect originating from tank specializations."
L["TankTauntsON"] = "Intimidation"
L["TankTauntsON_Desc"] = "Alerts the application of Intimidation: a damage amplifcation effect originating from tank specializations."

L["Connected"] = "Connected Alerts"
L["Connected_Desc"] = "Plays a simple 'Connected' alert when certain very powerful cast-time abilities successfully complete their cast.|n|nGreater Pyroblast (|cff69CCF0Mage|r)|nChaos Bolt (|cff9482C9Warlock|r)"

L["RaceAbilities"] = "Race Abilities" --fix
L["CovenantAbilities"] = "Covenant Abilities"

L["FrostDK"] = "Frost"
L["BloodDK"] = "Blood"
L["UnholyDK"] = "Unholy"

L["HavocDH"] = "Havoc"
L["VengeanceDH"] = "Vengeance"

L["FeralDR"] = "Feral"
L["BalanceDR"] = "Balance"
L["RestorationDR"] = "Restoration"
L["GuardianDR"] = "Guardian"

L["MarksmanshipHN"] = "Marksmanship"
L["SurvivalHN"] = "Survival"
L["BeastMasteryHN"] = "Beast Mastery"

L["FrostMG"] = "Frost"
L["FireMG"] = "Fire"
L["ArcaneMG"] = "Arcane"

L["MistweaverMN"] = "Mistweaver"
L["WindwalkerMN"] = "Windwalker"
L["BrewmasterMN"] = "Brewmaster"

L["HolyPD"] = "Holy"
L["RetributionPD"] = "Retribution"
L["ProtectionPD"] = "Protection"

L["HolyPR"] = "Holy"
L["DisciplinePR"] = "Discipline"
L["ShadowPR"] = "Shadow"

L["OutlawRG"] = "Outlaw"
L["AssassinationRG"] = "Assassination"
L["SubtletyRG"] = "Subtlety"

L["RestorationSH"] = "Restoration"
L["EnhancementSH"] = "Enhancement"
L["ElementalSH"] = "Elemental"

L["DestructionWL"] = "Destruction"
L["DemonologyWL"] = "Demonology"
L["AfflictionWL"] = "Affliction"

L["ArmsWR"] = "Arms"
L["FuryWR"] = "Fury"
L["ProtectionWR"] = "Protection"