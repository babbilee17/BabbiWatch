 BabbiWatch = LibStub("AceAddon-3.0"):NewAddon("BabbiWatch", "AceEvent-3.0","AceConsole-3.0","AceTimer-3.0")

 local AceConfigDialog = LibStub("AceConfigDialog-3.0")
 local AceConfig = LibStub("AceConfig-3.0")
 local L = LibStub("AceLocale-3.0"):GetLocale("BabbiWatch")
 local LSM = LibStub("LibSharedMedia-3.0")
 local self, BAWA, PlaySoundFile = BabbiWatch, BabbiWatch, PlaySoundFile
 local BAWA_TEXT = L["BW_TEXT"]
 local BAWA_VERSION = L["BW_VERSION"]
 local BAWA_TEST_BRANCH = ""
 local BAWA_AUTHOR = " "
 local bawadb
 local soundz,sourcetype,sourceuid,desttype,destuid = {},{},{},{},{}
 local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
 local canSpeakHere = false
 local playerCurrentZone = ""
 local debugMode = 0


 local LSM_BAWA_SOUNDFILES = {
	["BAWA-Demo"] = "Interface\\AddOns\\BabbiWatch\\Voice_Custom\\Will-Demo.ogg",
 }
 

 local BAWA_LOCALEPATH = {
	koKR = "BabbiWatch\\Voice_koKR_Male", --enUS
 }
 self.BAWA_LOCALEPATH = BAWA_LOCALEPATH

 local BAWA_LANGUAGE = {
	["BabbiWatch\\Voice_koKR_Male"] = L["Default(male)"], -- Korean(Babbi), 한국어(밥비)
 }
 self.BAWA_LANGUAGE = BAWA_LANGUAGE

 local BAWA_EVENT = {
	SPELL_CAST_SUCCESS = L["Spell_CastSuccess"],
	SPELL_CAST_START = L["Spell_CastStart"],
	SPELL_AURA_APPLIED = L["Spell_AuraApplied"],
	SPELL_AURA_REMOVED = L["Spell_AuraRemoved"],
	SPELL_INTERRUPT = L["Spell_Interrupt"],
	SPELL_SUMMON = L["Spell_Summon"],
	--UNIT_AURA = "Unit aura changed",
 }
 self.BAWA_EVENT = BAWA_EVENT

 local BAWA_UNIT = {
	any = L["Any"],
	player = L["Player"],
	target = L["Target"],
	focus = L["Focus"],
	mouseover = L["Mouseover"],
	--party = L["Party"],
	--raid = L["Raid"],
	--arena = L["Arena"],
	--boss = L["Boss"],
	custom = L["Custom"], 
 }
 self.BAWA_UNIT = BAWA_UNIT

 local BAWA_TYPE = {
	[COMBATLOG_FILTER_EVERYTHING] = L["Any"],
	[COMBATLOG_FILTER_FRIENDLY_UNITS] = L["Friendly"],
	[COMBATLOG_FILTER_HOSTILE_PLAYERS] = L["Hostile player"],
	[COMBATLOG_FILTER_HOSTILE_UNITS] = L["Hostile unit"],
	[COMBATLOG_FILTER_NEUTRAL_UNITS] = L["Neutral"],
	[COMBATLOG_FILTER_ME] = L["Myself"],
	[COMBATLOG_FILTER_MINE] = L["Mine"],
	[COMBATLOG_FILTER_MY_PET] = L["My pet"],
	[COMBATLOG_FILTER_UNKNOWN_UNITS] = "Unknown unit",
 }
 self.BAWA_TYPE = BAWA_TYPE

 local dbDefaults = {
	profile = {
		all = false,
		arena = true,
		battleground = false,
		epicbattleground = false,
		field = false,
		path = BAWA_LOCALEPATH[GetLocale()] or "BabbiWatch\\Voice_koKR_Male",
		path_menu = BAWA_LOCALEPATH[GetLocale()] or "BabbiWatch\\Voice_koKR_Male",
		throttle = 0,
		smartDisable = false,
		outputUnlock = false,
		output_menu = "MASTER",
		
		debuffApplied = false,
		auraApplied = false,
		auraRemoved = false,
		castStart = false,
		castSuccess = false,
		
		class = true,
		Bundle_CastSuccess_Lockout = false,
		Bundle_CastSuccess_Interrupted = false,

		donlyTF = false,
		Bundle_AuraApplied_Drinking = true,

		aonlyTF = false,

		ronlyTF = false,

		conlyTF= false,
		Bundle_CastStart_Resurrection = true,
		Bundle_CastStart_BigHeal = true,

		sonlyTF = false,
		Bundle_CastSuccess_Success = false,
		Bundle_CastSuccess_BigDamage = true,
		Bundle_CastSuccess_Cure = false,
		Bundle_CastSuccess_Dispel = false,
		Bundle_CastSuccess_Purge = false,

		--ShatteringThrowSuccess = true,  --처음설정
		
		custom = {},
	}	
 }

 BAWA.log = function(msg) DEFAULT_CHAT_FRAME:AddMessage("|cFF33FF22BabbiWatch|r: "..msg) end


 -- LSM BEGIN / inspired from MSBTMedia.lua
 local function RegisterSound(soundName, soundPath)
	if (type(soundName) ~= "string" or type(soundPath) ~= "string") then return end
	if (soundName == "" or soundPath == "") then return end

	soundz[soundName] = soundPath
	LSM:Register("sound", soundName, soundPath)
 end

 for soundName, soundPath in pairs(LSM_BAWA_SOUNDFILES) do RegisterSound(soundName, soundPath) end
 for index, soundName in pairs(LSM:List("sound")) do soundz[soundName] = LSM:Fetch("sound", soundName) end

 local function LSMRegistered(event, mediaType, name)
	if (mediaType == "sound") then
		soundz[name] = LSM:Fetch(mediaType, name)
	end
 end
 -- LSM END
 
 function BabbiWatch:OnInitialize()
	if not self.spellList then
		self.spellList = self:GetSpellList()
	end
	for _,v in pairs(self.spellList) do
		for _,spell in pairs(v) do
			if dbDefaults.profile[spell] == nil then dbDefaults.profile[spell] = true end  --수정됨 bDefaults.profile[spell] = true => false
		end
	end
	
	self.db1 = LibStub("AceDB-3.0"):New("BabbiWatchDB",dbDefaults, "Default");
	DEFAULT_CHAT_FRAME:AddMessage(BAWA_TEXT .. BAWA_VERSION .. BAWA_AUTHOR .." "..BAWA_TEST_BRANCH);
	self:RegisterChatCommand("BabbiWatch", "ShowConfig")
	self:RegisterChatCommand("BAWA", "ShowConfig") --수정됨
	self:RegisterChatCommand("Babbi", "ShowConfig") --수정됨
	self:RegisterChatCommand("밥비", "ShowConfig") --수정됨
	self.db1.RegisterCallback(self, "OnProfileChanged", "ChangeProfile")
	self.db1.RegisterCallback(self, "OnProfileCopied", "ChangeProfile")
	self.db1.RegisterCallback(self, "OnProfileReset", "ChangeProfile")
	bawadb = self.db1.profile
	local options = {
		name = "BabbiWatch",
		desc = L["PVP Voice Alert"],
		type = 'group',
		args = {
			bawavers = {
			order = 0,
			type = "description",
			name = BAWA_VERSION,
			cmdHidden = true
			},
			creditdesc = {
			order = 1,
			type = "description",
			name = L["BabbiWatchCredits"].."\n",
			cmdHidden = true
			},
			
		},
	}
	local bliz_options = CopyTable(options)

--[[ --버튼 삭제 수정됨
	bliz_options.args.load = {
		name = L["Load Configuration"],
		desc = L["Load Configuration Options"],
		type = 'execute',
		func = function()
		self:OnOptionCreate()
			bliz_options.args.load.disabled = true
			GameTooltip:Hide()
			--fix for in 5.3 BLZOptionsFrame can't refresh on load
			InterfaceOptionsFrame:Hide() --수정됨
			InterfaceOptionsFrame:Show()
		end,
		handler = BabbiWatch,
	}
]]--

	LibStub("AceConfig-3.0"):RegisterOptionsTable("BabbiWatch_bliz", bliz_options)
	AceConfigDialog:AddToBlizOptions("BabbiWatch_bliz", "BabbiWatch")
	--LSM.RegisterCallback(LSM_BAWA_SOUNDFILES, "LibSharedMedia_Registered", LSMRegistered) --수정됨 커스텀 주문관련

	self:OnOptionCreate()
end


 function BabbiWatch:OnEnable()
	BabbiWatch:RegisterEvent("PLAYER_ENTERING_WORLD")
	BabbiWatch:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	BabbiWatch:RegisterEvent("UNIT_AURA")
	if not BAWA_LANGUAGE[bawadb.path] then bawadb.path = BAWA_LOCALEPATH[GetLocale()] end
	self.throttled = {}
	self.smarter = 0
 end

 function BabbiWatch:OnDisable()
	-- why is this here
 end

-- play sound by file name
 function BAWA:PlaySound(fileName)
	 PlaySoundFile("Interface\\Addons\\" ..bawadb.path.. "\\"..fileName .. ".ogg", bawadb.output_menu)
 end

 function BabbiWatch:ArenaClass(id)
	for i = 1 , 5 do
		if id == UnitGUID("arena"..i) then
			return select(2, UnitClass ("arena"..i))
		end
	end
 end

 function BabbiWatch:PLAYER_ENTERING_WORLD()
	--CombatLogClearEntries()
	 self:CanTalkHere()
 end

-- play sound by spell id and spell type
 function BabbiWatch:PlaySpell(listName, spellID, sourceGUID, destGUID, ...) --self:PlaySpell("castSuccess", spellID, sourceGUID, destGUID)
	local list = self.spellList[listName]
	if not list[spellID] then return end
	if not bawadb[list[spellID]] then return end  --중요부분 체크 확인
	if bawadb.throttle ~= 0 and self:Throttle("playspell",bawadb.throttle) then return end
	if bawadb.smartDisable then
		if (GetNumGroupMembers() or 0) > 20 then return end
		if self:Throttle("smarter",20) then
			self.smarter = self.smarter + 1
			if self.smarter > 30 then return end
		else 
			self.smarter = 0
		end
	end

		--print(list[spellID])
		--print(bawadb[list[spellID]])
		--print(spellID)
		--print(list[spellID].. sourceGUID.. destGUID)
		self:PlaySound(list[spellID])

 end

 -- Because arrays are for nerds
 function BAWA:CheckFriendlyDebuffs(spellID)
	if spellID == 87204 or			-- Vampiric Touch Horrify
		spellID == 196364 or 		-- Unstable Affliction Silence
		spellID == 1330 or 			-- Garrote Silence
		spellID == 1833 or 			-- Cheap Shot
		spellID == 6770 or 			-- Sap
		spellID == 3355 or 			-- Freezing Trap
		spellID == 212332 or 		-- Smash (DK Abomination)
		spellID == 212337 or 		-- Powerful Smash (DK Abomination)
		spellID == 91800 or 		-- Gnaw (DK Ghoul)
		spellID == 91797 or 		-- Monstrous Claw (DK Ghoul)
		spellID == 163505 or 		-- Rake Stun
		spellID == 199086 or 		-- Warpath Stun
		spellID == 202335 or 		-- Double Barrel Stun
		spellID == 215652 or 		-- Shield of Virtue silence
		spellID == 302144 then 		-- Gladiator's Maledict
		return true
	end
end

 -- Because arrays are for nerds
function BAWA:CheckForEpicBG(instanceMapID)	-- Determines if battleground is in list of epic bgs.
	if instanceMapID == 2118 or		-- Wintergrasp [Epic]
		instanceMapID == 30 or		-- Alterac Valley
		instanceMapID == 628 or		-- Isle of Conquest
		instanceMapID == 1280 or	-- Southshore vs Tarren Mill
		instanceMapID == 1191 or	-- Trashcan
		instanceMapID == 2197 then	-- Korrak's Revenge		
		return true
	end
end

-- Checks settings and world location to determine if alerts should occur.
 		-- I can probably use this to fix the weird problem with PvP flag checking that seemed blizzard-sided
 		-- but I am lazy and that will come later.
function BAWA:CanTalkHere()
	-- !!Triggered from PLAYER_ENTERING_WORLD!!
	--Disable By Location
	local _,currentZoneType = IsInInstance()
	local _,_,_,_,_,_,_,instanceMapID = GetInstanceInfo()
	--local isPvP = UnitIsWarModeDesired("player")
	playerCurrentZone = currentZoneType

	if (not ((currentZoneType == "none" and bawadb.field and not bawadb.onlyFlagged) or 												-- World
		--(currentZoneType == "none" and bawadb.field and (bawadb.onlyFlagged and UnitIsWarModeDesired("player"))) or
		(currentZoneType == "pvp" and bawadb.battleground and not self:CheckForEpicBG(instanceMapID)) or 	-- Battleground
		(currentZoneType == "pvp" and bawadb.epicbattleground and self:CheckForEpicBG(instanceMapID)) or		-- Epic Battleground
		(currentZoneType == "arena" and bawadb.arena) or 													-- Arena
		(currentZoneType == "scenario" and bawadb.arena) or 													-- Scenario
		bawadb.all)) then																					-- Anywhere
		--return false
		canSpeakHere = false
	else
		canSpeakHere = true
	end
	--print("CanTalkHere() = " .. tostring(canSpeakHere))
end
	

 function BabbiWatch:COMBAT_LOG_EVENT_UNFILTERED(event , ...)
	-- Checks if alerts should occur here.
	if (not canSpeakHere) then return end

	 local isSanctuary = GetZonePVPInfo()
	 if (isSanctuary == "sanctuary") then return end

	local timestamp,event,hideCaster,sourceGUID,sourceName,sourceFlags,sourceFlags2,destGUID,destName,destFlags,destFlags2,spellID = CombatLogGetCurrentEventInfo()
	--select ( 1 , ... );
	if not BAWA_EVENT[event] then return end

		--print(sourceName,sourceGUID,destName,destGUID,destFlags,"|cffFF7D0A" .. event.. "|r",spellName,"|cffFF7D0A" .. spellID.. "|r")
		--print("|cffff0000timestamp|r",timestamp,"|cffff0000event|r",event,"|cffff0000hideCaster|r",hideCaster,"|cffff0000sourceGUID|r",sourceGUID,"|cffff0000sourceName|r",sourceName,"|cffff0000sourceFlags|r",sourceFlags,"|cffff0000sourceFlags2|r",sourceFlags2,"|cffff0000destGUID|r",destGUID,"|cffff0000destName|r",destName,"|cffff0000destFlags|r",destFlags,"|cffff0000destFlags2|r",destFlags2,"|cffff0000spellID|r",spellID,"|cffff0000spellName|r",spellName)

	if (destFlags) then
		for k in pairs(BAWA_TYPE) do
			desttype[k] = CombatLog_Object_IsA(destFlags,k)
			--print("desttype:"..k.."="..(desttype[k] or "nil"))
		end
	else
		for k in pairs(BAWA_TYPE) do
			desttype[k] = nil
		end
	end
	if (destGUID) then
		for k in pairs(BAWA_UNIT) do
			destuid[k] = (UnitGUID(k) == destGUID)
			--print("destuid:"..k.."="..(destuid[k] and "true" or "false"))
		end
	else
		for k in pairs(BAWA_UNIT) do
			destuid[k] = nil
			--print("destuid:"..k.."="..(destuid[k] and "true" or "false"))
		end
	end
	destuid.any = true
	if (sourceFlags) then
		for k in pairs(BAWA_TYPE) do
			sourcetype[k] = CombatLog_Object_IsA(sourceFlags,k)
			--print("sourcetype:"..k.."="..(sourcetype[k] or "nil"))
		end
	else
		for k in pairs(BAWA_TYPE) do
			sourcetype[k] = nil
			--print("sourcetype:"..k.."="..(sourcetype[k] or "nil"))
		end
	end
	if (sourceGUID) then
		for k in pairs(BAWA_UNIT) do
			sourceuid[k] = (UnitGUID(k) == sourceGUID)
			--print("sourceuid:"..k.."="..(sourceuid[k] and "true" or "false"))
		end
	else
		for k in pairs(BAWA_UNIT) do
			sourceuid[k] = nil
			--print("sourceuid:"..k.."="..(sourceuid[k] and "true" or "false"))
		end
	end
	sourceuid.any = true

	if (event == "SPELL_AURA_APPLIED" and desttype[COMBATLOG_FILTER_HOSTILE_PLAYERS] and (not bawadb.aonlyTF or destuid.target or destuid.focus) and bawadb.auraApplied) then
		if self:CheckFriendlyDebuffs(spellID) then --적이 걸리면 알리지 않는 목록?
			return
		end
		self:PlaySpell("auraApplied", spellID, sourceGUID, destGUID)

	elseif (event == "SPELL_AURA_APPLIED" and (desttype[COMBATLOG_FILTER_FRIENDLY_UNITS] or desttype[COMBATLOG_FILTER_ME]) and (not bawadb.donlyTF or destuid.target or destuid.focus) and bawadb.debuffApplied) then --fix bawadb.auraApplied => debuffApplied
		if self:CheckFriendlyDebuffs(spellID) then --아군이 걸리면 알리는 목록
			self:PlaySpell("auraApplied", spellID, sourceGUID, destGUID)
		end

	elseif (event == "SPELL_AURA_REMOVED" and desttype[COMBATLOG_FILTER_HOSTILE_PLAYERS] and (not bawadb.ronlyTF or destuid.target or destuid.focus) and bawadb.auraRemoved) then
			self:PlaySpell("auraRemoved", spellID, sourceGUID, destGUID)

	elseif (event == "SPELL_CAST_START" and sourcetype[COMBATLOG_FILTER_HOSTILE_PLAYERS] and (not bawadb.conlyTF or sourceuid.target or sourceuid.focus) and bawadb.castStart) then
			self:PlaySpell("castStart", spellID, sourceGUID, destGUID)

	elseif (event == "SPELL_CAST_SUCCESS" and sourcetype[COMBATLOG_FILTER_HOSTILE_PLAYERS] and (not bawadb.sonlyTF or sourceuid.target or sourceuid.focus) and bawadb.castSuccess) then
		if self:Throttle(tostring(spellID).."default", 0.05) then return end
		if bawadb.class and playerCurrentZone == "arena" then
			if spellID == 42292 or spellID == 208683 or spellID == 195710 or spellID == 336126 then
				local c = self:ArenaClass(sourceGUID) -- PvP Trinket Class Callout
					if c then
					self:PlaySound("Trinket_CastSuccess_"..c);
				end
			else
				self:PlaySpell("castSuccess", spellID, sourceGUID, destGUID)
			end
		else
			self:PlaySpell("castSuccess", spellID, sourceGUID, destGUID)
		end

	elseif (event == "SPELL_INTERRUPT" and desttype[COMBATLOG_FILTER_HOSTILE_PLAYERS] and bawadb.Bundle_CastSuccess_Lockout) then
		self:PlaySpell ("friendlyInterrupt", spellID, sourceGUID, destGUID)

	elseif (event == "SPELL_INTERRUPT" and (desttype[COMBATLOG_FILTER_FRIENDLY_UNITS] or desttype[COMBATLOG_FILTER_ME]) and bawadb.Bundle_CastSuccess_Interrupted) then
		self:PlaySpell ("friendlyInterrupted", spellID, sourceGUID, destGUID)

	end


	-- play custom spells
	--[[
	for k, css in pairs (bawadb.custom) do
		if css.destuidfilter == "custom" and destName == css.destcustomname then
			destuid.custom = true
		else
			destuid.custom = false
		end
		if css.sourceuidfilter == "custom" and sourceName == css.sourcecustomname then
			sourceuid.custom = true
		else
			sourceuid.custom = false
		end

		if css.eventtype[event] and destuid[css.destuidfilter] and desttype[css.desttypefilter] and sourceuid[css.sourceuidfilter] and sourcetype[css.sourcetypefilter] and spellID == tonumber(css.spellid) then
			if self:Throttle(tostring(spellID)..css.name, 0.1) then return end
			--PlaySoundFile(css.soundfilepath, "Master")

			if css.existingsound then -- Added to 2.3.3
				if (css.existinglist ~= nil and css.existinglist ~= ('')) then
					local soundz = LSM:Fetch('sound', css.existinglist)
					PlaySoundFile(soundz, bawadb.output_menu)
				else
					BAWA.log (L["No sound selected for the Custom alert : |cffC41F4B"] .. css.name .. "|r.")
				end
			else
				PlaySoundFile(css.soundfilepath, bawadb.output_menu)
			end
		end
	end]]
 end

-- play drinking in arena
 function BabbiWatch:UNIT_AURA(event,uid)
 	local _,currentZoneType = IsInInstance()

	--if bawadb.drinking then--if uid:find("arena") and bawadb.drinking then 
		if bawadb.drinking then
			if (AuraUtil.FindAuraByName("Drinking",uid) or AuraUtil.FindAuraByName("Food",uid) or AuraUtil.FindAuraByName("Refreshment",uid) or AuraUtil.FindAuraByName("Drink",uid)) and currentZoneType == "arena" then
				if self:Throttle(tostring(104270) .. uid, 4) then return end
			self:PlaySound("drinking")
			end
		end
	--end
 end


 function BabbiWatch:Throttle(key,throttle)
	if (not self.throttled) then
		self.throttled = {}
	end
	-- Throttling of Playing
	if (not self.throttled[key]) then
		self.throttled[key] = GetTime()+throttle
		return false
	elseif (self.throttled[key] < GetTime()) then
		self.throttled[key] = GetTime()+throttle
		return false
	else
		return true
	end
 end 