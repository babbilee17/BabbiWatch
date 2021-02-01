local BAWA = BabbiWatch
local bawadb
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceConfig = LibStub("AceConfig-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("BabbiWatch")
local LSM = LibStub("LibSharedMedia-3.0")
local options_created = false -- ***** @

local BAWA_OUTPUT = {["MASTER"] = L["Master"],["SFX"] = L["SFX"],["AMBIENCE"] = L["Ambience"],["MUSIC"] = L["Music"],["DIALOG"] = L["Dialog"]}

function BAWA:ShowConfig()
	for i=1,2 do InterfaceOptionsFrame_OpenToCategory(GetAddOnMetadata("BabbiWatch", "Title")) end -- ugly fix

end

function BAWA:ShowConfig2() -- ***** @
	if options_created == false then
		self:OnOptionCreate()
	end
	AceConfigDialog:Open("BabbiWatch")
end

function BAWA:ChangeProfile()
	bawadb = self.db1.profile
	for k,v in BabbiWatch:IterateModules() do
		if type(v.ChangeProfile) == 'function' then
			v:ChangeProfile()
		end
	end
end

function BAWA:AddOption(name, keyName)
	return AceConfigDialog:AddToBlizOptions("BabbiWatch", name, "BabbiWatch", keyName)
end

local function setOption(info, value)
	local name = info[#info]
	bawadb[name] = value
	--print(value) --수정됨
	if value then
		PlaySoundFile("Interface\\Addons\\"..bawadb.path.."\\"..name..".ogg", bawadb.output_menu); --수정됨 bawadb.path_menu를 bawadb.path로 음성테스트 선택 없애버릴려고
	end
	BAWA:CanTalkHere()
end

local function getOption(info)
	local name = info[#info]
	return bawadb[name]
end

local function spellOption(order, spellID, ...)
	local spellname, _, icon = GetSpellInfo(spellID)	
	if (spellname ~= nil) then
		return {
			type = 'toggle',
			name = "\124T" .. icon .. ":24\124t" .. spellname,			
			desc = function ()
				GameTooltip:SetOwner(UIParent, "ANCHOR_CURSOR")
				GameTooltip:SetHyperlink(GetSpellLink(spellID))
				GameTooltip:Show()
				--print(GetSpellInfo((spellID)))
			end, -- https://i.imgur.com/ChzUb.jpg
			-- why are you reading this disaster, go away this is embarrassing
			descStyle = "custom",
			order = order,
		}
	else
		BAWA.log("spell id: " .. spellID .. " is invalid")
		return {
			type = 'toggle',
			name = "Unknown Spell; ID:" .. spellID,	
			order = order,
		}
	end
end


local function listOption(spellList, listType, ...)
	local args = {}
	for k, v in pairs(spellList) do
		local BAWA_SpellName = BAWA.spellList[listType][v]
		if BAWA_SpellName then
			rawset (args, BAWA_SpellName, spellOption(k, v))
			GameTooltip:Hide()
		else 
		end
	end
	return args
end


--function BAWA:MakeCustomOption(key)
	--[[
	local options = self.options.args.custom.args
	local db = bawadb.custom
	options[key] = {
		type = 'group',
		name = function() return db[key].name end,
		set = function(info, value) local name = info[#info] db[key][name] = value end,
		get = function(info) local name = info[#info] return db[key][name] end,
		order = db[key].order,
		args = {
			name = {
				name = L["name"],
				type = 'input',
				set = function(info, value)
					if db[value] then BAWA.log(L["same name already exists"]) return end
					db[value] = db[key]
					db[value].name = value
					db[value].order = #db + 1
					db[value].soundfilepath = "Interface\\AddOns\\BabbiWatch\\Voice_Custom\\"..value..".ogg"
					db[key] = nil
					options[value] = options[key]
					options[key] = nil
					key = value
				end,
				order = 10,
			},
			spellid = {
				name = L["spellid"],
				type = 'input',
				order = 20,
				pattern = "%d+$",
			},
			remove = {
				type = 'execute',
				order = 25,
				name = L["Remove"],
				confirm = true,
				confirmText = L["Are you sure?"],
				func = function() 
					db[key] = nil
					options[key] = nil
				end,
			},
			existingsound = {
				name = L["Use existing sound"],
				type = 'toggle',
				order = 41,
			},
			soundfilepath = {
				name = L["file path"],
				type = 'input',
				width = 'double',
				order = 26,
				disabled = function() return db[key].existingsound end,
			},
			test = {
				type = 'execute',
				order = 28,
				name = L["Test"],
				disabled = function() return db[key].existingsound end,
				func = function() PlaySoundFile(db[key].soundfilepath, "Master") end,
			},
			NewLinetest = {
					type= 'description',
					order = 29,
					name= '',
			},
			existinglist = {
				name = L["choose a sound"],
				type = 'select',
				dialogControl = 'LSM30_Sound',
				values =  LSM:HashTable("sound"),
				disabled = function() return not db[key].existingsound end,
				order = 40,
			},
			NewLine3 = {
				type= 'description',
				order = 45,
				name= '',
			},
			eventtype = {
				type = 'multiselect',
				order = 50,
				name = L["event type"],
				values = self.BAWA_EVENT,
				get = function(info, k) return db[key].eventtype[k] end,
				set = function(info, k, v) db[key].eventtype[k] = v end,
			},
			sourcetypefilter = {
				type = 'select',
				order = 59,
				name = L["Source type"],
				values = self.BAWA_TYPE,
			},
			desttypefilter = {
				type = 'select',
				order = 60,
				name = L["Dest type"],
				values = self.BAWA_TYPE,
			},
			sourceuidfilter = {
				type = 'select',
				order = 61,
				name = L["Source unit"],
				values = self.BAWA_UNIT,
			},
			sourcecustomname = {
				type= 'input',
				order = 62,
				name= L["Custom unit name"],
				disabled = function() return not (db[key].sourceuidfilter == "custom") end,
			},
			destuidfilter = {
				type = 'select',
				order = 65,
				name = L["Dest unit"],
				values = self.BAWA_UNIT,
			},
			destcustomname = {
				type= 'input',
				order = 68,
				name = L["Custom unit name"],
				disabled = function() return not (db[key].destuidfilter == "custom") end,
			},
			--NewLine5 = {
			--	type = 'header',
			--	order = 69,
			--	name = "",
			--},
			
		}
	}
	]]--
--end

	
function BAWA:OnOptionCreate()
	bawadb = self.db1.profile
	options_created = true -- ***** @
	self.options = {
		type = "group",
		name = GetAddOnMetadata("BabbiWatch", "Title"),  --	GetAddOnMetadata("addon", "field") - addon의 TOC 파일에서 다음 필드 중 지정된 필드 값을 반환합니다: Title, Notes, Author, Version 및 X- 로 시작하는 필드
		args = {
			general = {
				type = 'group',
				name = L["General"],
				desc = L["General options"],
				set = setOption,
				get = getOption,
				order = 1,
				args = {
					voice = {
						type = 'group',
						inline = true,
						name = L["Voice config"],
						order = 1,
						args = {
							path = {
								type = 'select',
								name = L["Default / Female voice"],
								desc = L["Select the default voice pack of the alert"],
								values = self.BAWA_LANGUAGE,
								order = 1,
							},
							volumn = {
								type = 'range',
								max = 1,
								min = 0,
								step = 0.1,
								name = L["Master Volume"],
								desc = L["adjusting the voice volume(the same as adjusting the system master sound volume)"],
								set = function (info, value) SetCVar ("Sound_MasterVolume",tostring (value)) end,
								get = function () return tonumber (GetCVar ("Sound_MasterVolume")) end,
								order = 6,
							},
						},
					},
					enableArea = {
						type = 'group',
						inline = true,
						name = L["Enable area"],
						order = 2,
						args = {
							all = {
								type = 'toggle',
								name = L["Anywhere"],
								desc = L["Alert works anywhere"],
								order = 10,
							},
							--onlyflagged = {
							--	type = 'toggle',
							--	name = L["OnlyIfPvPFlagged"],
							--	desc = L["OnlyIfPvPFlaggedDesc"],
							--	disabled = function() return not bawadb.field or bawadb.all end,
							--	order = 20,
							--},
							NewLine1 = {
								type= 'description',
								order = 30,
								name= '',
							},
							arena = {
								type = 'toggle',
								name = L["Arena"],
								desc = L["Alert only works in arena"],
								disabled = function() return bawadb.all end,
								order = 40,
							},
							battleground = {
								type = 'toggle',
								name = L["Battleground"],
								desc = L["Alert only works in BG"],
								disabled = function() return bawadb.all end,
								order = 50,
							},
							epicbattleground = {
								type = 'toggle',
								name = L["epicbattleground"],
								desc = L["epicbattlegroundDesc"],
								disabled = function() return bawadb.all end,
								order = 60,
							},
							NewLine2 = {
								type= 'description',
								order = 70,
								name= '',
							},
							field = {
								type = 'toggle',
								name = L["World"],
								desc = L["Alert works anywhere else then anena, BG, dungeon instance"],
								disabled = function() return bawadb.all end,
								order = 80,
							},
						},
					},
					advance = {
						type = 'group',
						inline = true,
						name = L["Advance options"],
						order = 3,
						args = {
							smartDisable = {
								type = 'toggle',
								name = L["Smart disable"],
								desc = L["Disable addon for a moment while too many alerts comes"],
								order = 1,
							},
							throttle = {
								type = 'range',
								max = 5,
								min = 0,
								step = 0.1,
								name = L["Throttle"],
								desc = L["The minimum interval of each alert"],
								disabled = function() return not bawadb.smartDisable end,
								order = 2,
							},
							NewLineOutput = {
								type= 'description',
								order = 3,
								name= '',
							},
							outputUnlock = {
								type = 'toggle',
								name = L["Change Output"],
								desc = L["Unlock the output options"],
								order = 8,
								confirm = true,
								confirmText = L["Are you sure?"],
							},
							output_menu = {
								type = 'select',
								name = L["Output"],
								desc = L["Select the default output"],
								values = BAWA_OUTPUT,
								order = 10,
								disabled = function() return not bawadb.outputUnlock end,
							},
						},
					},
				},
			},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			spells = {
				type = 'group',
				name = L["Abilities"],
				desc = L["Abilities options"],
				set = setOption,
				get = getOption,
				childGroups = "tab",
				order = 2,
				args = {
				--[[
				menu_voice = {
						type = 'group',
						inline = true,
						name = L["Voice menu config"], 
						order = -3,
						args = {
							path_menu = {
								type = 'select',
								name = L["Choose a test voice pack"],
								desc = L["Select the menu voice pack alert"], 
								values = self.BAWA_LANGUAGE,
								order = 1,
							},
						},
				},]]--
					spellGeneral = {
						type = 'group',
						name = L["Enable options"],
						desc = L["Enable abilities by type"],
						inline = true,
						order = -2,
						args = {
							debuffApplied = {
								type = 'toggle',
								name = L["Enable Debuff Applied"],
								desc = L["Check this will enable alert for debuff applied to friendly targets from hostile"],
								order = 0,
							},
							auraApplied = {
								type = 'toggle',
								name = L["Enable Buff Applied"],
								desc = L["Check this will enable alert for buff applied to hostile targets"],
								order = 1,
							},
							auraRemoved = { --auraRemoved aruaRemoved
								type = 'toggle',
								name = L["Enable Buff Down"],
								desc = L["Check this will enable alert for buff removed from hostile targets"],
								order = 2,
							},
							castStart = {
								type = 'toggle',
								name = L["Enable Spell Casting"],
								desc = L["Chech this will enable alert for spell being casted to friendly targets"],
								order = 3,
							},
							castSuccess = {
								type = 'toggle',
								name = L["Enable special abilities"],
								desc = L["Check this will enable alert for instant-cast important abilities"],
								order = 4,
							},
						},
					},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
					spellDebuffApplied = {
						type = 'group',
						--inline = true,
						name = L["Enable Debuff Applied"],
						disabled = function() return not bawadb.debuffApplied end,
						order = 0,
						args = {
							bundle = {
								type = 'group',
								name = L["Enable options"],
								desc = L["Enable abilities by type"],
								inline = true,
								order = 14,
								args = {
									donlyTF = {	-- AuraApplied
										type = 'toggle',
										name = L["Target and Focus Only"],
										desc = L["Alert works only when your current target or focus gains the buff effect or use the ability"],
										order = 10,
									},
								},
							},
							dispelkickback = { -- DebuffApplied
								type = 'group',
								inline = true,
								name = L["DispelKickback"],
								order = 40,
								args = listOption({87204,196364},"debuffApplied"),
							},
							dk	= {	-- DebuffApplied
								type = 'group',
								inline = true,
								name = L["|cffC41F3BDeath Knight|r"],
								order = 50,
								args = listOption({212332,212337,91800,91797},"debuffApplied"),
							},						
							druid = { -- DebuffApplied
								type = 'group',
								inline = true,
								name = L["|cffFF7D0ADruid|r"],
								order = 70,
								args = listOption({163505},"debuffApplied"),
							},
							hunter = { -- DebuffApplied
								type = 'group',
								inline = true,
								name = L["|cffABD473Hunter|r"],
								order = 80,
								args = listOption({3355},"debuffApplied"),
							},						
							paladin = { -- DebuffApplied
								type = 'group',
								inline = true,
								name = L["|cffF58CBAPaladin|r"],
								order = 110,
								args = listOption({217824},"debuffApplied"),
							},
							monk = { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cFF00FF96Monk|r"],
								order = 100,
								args = listOption({202346},"debuffApplied"),
							},
							rogue = { -- DebuffApplied
								type = 'group',
								inline = true,
								name = L["|cffFFF569Rogue|r"],
								order = 130,
								args = listOption({1833,1330,6770},"debuffApplied"),
							},
							warrior	= { -- DebuffApplied
								type = 'group',
								inline = true,
								name = L["|cffC79C6EWarrior|r"],
								order = 160,
								args = listOption({199085},"debuffApplied"),
							},
							
						},
					},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------			
					spellAuraApplied = {
						type = 'group',
						--inline = true,
						name = L["Buff Applied"],
						disabled = function() return not bawadb.auraApplied end,
						order = 1,
						args = {
							bundle = {
								type = 'group',
								name = L["Enable options"],
								desc = L["Enable abilities by type"],
								inline = true,
								order = 14,
								args = {
									aonlyTF = {	-- AuraApplied
										type = 'toggle',
										name = L["Target and Focus Only"],
										desc = L["Alert works only when your current target or focus gains the buff effect or use the ability"],
										order = 10,
									},
									Bundle_AuraApplied_Drinking = { -- AuraApplied 
										type = 'toggle',
										name = L["Alert Drinking"],
										desc = L["In arena, alert when enemy is drinking"],
										order = 20,
									},
									--tankTauntsON = { -- AuraApplied
										--type = 'toggle',
										--name = L["TankTauntsON"],
										--desc = L["TankTauntsON_Desc"],
										--order = 25,
									--},
								},
							},
							generalaura = { --AuraApplied
								type = 'group',
								inline = true,
								name = L["General Abilities"],
								order = 30,					      		
								args = listOption({195901,214027,34709},"auraApplied"),
							},
							covenants = { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["CovenantAbilities"],
								order = 32,
								args = listOption({310143, 319217}, "auraApplied"),
							},
							
							dk	= {	-- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cffC41F3BDeath Knight|r"],
								order = 50,
								args = listOption({48792,55233,51271,48707,152279,219809,194679,194844,207319,116888,49039,288977,315443,311648},"auraApplied"),
							},
							demonhunter = {	-- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cffA330C9Demon Hunter|r"],
								order = 60,
								args = listOption({198589,212800,209426,162264,187827,188501,196555,207810},"auraApplied"),
							},
							druid = { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cffFF7D0ADruid|r"],
								order = 70,
								args = listOption({102560,102543,102558,33891,61336,22812,252216,1850,69369,102342,102351,155835,29166,194223,236696,305497,163505,106951,108291,108292.108293,108294,323546},"auraApplied"),
							},
							hunter = { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cffABD473Hunter|r"],
								order = 80,
								args = listOption({19263,53271,62305,53480,186265,186257,212640,193530,266779,3355,202748,212704},"auraApplied"),
							},
							mage = { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cff69CCF0Mage|r"],
								order = 90,
								args = listOption({45438,12042,12472,198111,198144,86949,87024,190319,110909,342246,324220},"auraApplied"),
							},
							monk = { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cFF00FF96Monk|r"],
								order = 100,
								args = listOption({243435,201318,115203,122278,122783,115176,201325,116849,152173,197908,209584,310454},"auraApplied"),
							},
							paladin = { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cffF58CBAPaladin|r"],
								order = 110,
								args = listOption({1022,1044,642,105809,31884,231895,31850,205191,184662,212641,86659,228049,216331,210294,498,204018,215652},"auraApplied"),
							},
							priest	= { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cffFFFFFFPriest|r"],
								order = 120,
								args = listOption({33206,47585,47788,197862,197871,200183,197268,193223,109964,47536,194249,218413,15286,213610,213602,10060},"auraApplied"),
							},
							rogue = { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cffFFF569Rogue|r"],
								order = 130,
								args = listOption({2983,31224,5277,51690,121471,185313,185422,199754,31230,45182,1833,1330,6770,207736,1966,343142},"auraApplied"),
							},
							shaman	= { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cff0070daShaman|r"],
								order = 140,
								args = listOption({108271,79206,114050,114051,114052,210918},"auraApplied"), 
							},
							warlock	= { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cff9482C9Warlock|r"],
								order = 150,
								args = listOption({108416,104773,113860,196098,212295},"auraApplied"),
							},
							warrior	= { -- AuraApplied
								type = 'group',
								inline = true,
								name = L["|cffC79C6EWarrior|r"],
								order = 160,
								args = listOption({184364,871,18499,46924,227847,1719,262228,107574,118038,198817,197690,23920,236273,260708,202147,12975,223658,199086},"auraApplied"),
							},
						},
					},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------					
					spellAuraRemoved = {
						type = 'group',
						--inline = true,
						name = L["Buff Down"],
						disabled = function() return not bawadb.auraRemoved end,
						order = 2,
						args = {
							bundle = {
								type = 'group',
								name = L["Enable options"],
								desc = L["Enable abilities by type"],
								inline = true,
								order = 14,
								args = {
									ronlyTF = { -- AuraRemoved
										type = 'toggle',
										name = L["Target and Focus Only"],
										desc = L["Alert works only when your current target or focus gains the buff effect or use the ability"],
										order = 10,
									},
									--tankTauntsOFF = { -- AuraRemoved
									--	type = 'toggle',
									--	name = L["TankTauntsOFF"],
									--	desc = L["TankTauntsOFF_Desc"],
									--	disabled = function() return not bawadb.tankTauntsON or bawadb.auraRemoved end,
									--	order = 20,
									--},
								},
							},					
							generalauradown = { --AuraRemoved
								type = 'group',
								inline = true,
								name = L["General Abilities"],
								order = 30,
								args = listOption({34709},"auraRemoved"),
							},
							dk = { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cffC41F3BDeath Knight|r"],
								order = 40,
								args = listOption({48792,48707,219809,207319,152279,49039,288977,315443},"auraRemoved"),
							},
							demonhunter = { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cffA330C9Demon Hunter|r"],
								order = 50,
								args = listOption({198589,212800,209426,162264,187827,188501,196555,207810},"auraRemoved"),
							},
							druid = { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cffFF7D0ADruid|r"],
								order = 60,
								args = listOption({102560,102543,102558,33891,117679,236696,29166,108291,108292.108293,108294},"auraRemoved"),
							},
							hunter = { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cffABD473Hunter|r"],
								order = 70,
								args = listOption({19263,186265,193530,266779,193526,212704},"auraRemoved"),
							},
							mage = { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cff69CCF0Mage|r"],
								order = 80,
								args = listOption({45438,198111,198144,190319,12042,12472,110909,342246},"auraRemoved"),
							},
							monk = { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cFF00FF96Monk|r"],
								order = 90,
								args = listOption({243435,201318,115203,115176,122470,116849,209584},"auraRemoved"),
							},
							paladin = { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cffF58CBAPaladin|r"],
								order = 100,
								args = listOption({1022,642,31850,205191,184662,86659,228049,25771,216331,204018,210294,6940,199448},"auraRemoved"),
							},
							priest	= { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cffFFFFFFPriest|r"],
								order = 110,
								args = listOption({33206,47585,109964,197268,193223,194249,218413,15286,213610,215769,213602},"auraRemoved"),
							},
							rogue = { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cffFFF569Rogue|r"],
								order = 120,
								args = listOption({31224,5277,74001,51690,199754,1966,343142},"auraRemoved"),
							},
							shaman	= { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cff0070daShaman|r"],
								order = 130,
								args = listOption({108271,210918},"auraRemoved"),
							},
							warlock = { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cff9482C9Warlock|r"],
								order = 140,
								args = listOption({212295,104773,196098,113860,113858},"auraRemoved"),
							},
							warrior	= { -- AuraRemoved
								type = 'group',
								inline = true,
								name = L["|cffC79C6EWarrior|r"],
								order = 150,
								args = listOption({871,114030,118038,197690,236273,260708,223658,147833},"auraRemoved"),
							},
						},
					},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
					spellCastStart = {
						type = 'group',
						--inline = true,
						name = L["Spell Casting"],
						disabled = function() return not bawadb.castStart end,
						order = 2,
						args = {
							bundle = {
								type = 'group',
								name = L["Enable options"],
								desc = L["Enable abilities by type"],
								inline = true,
								order = 14,
								args = {
									conlyTF = { -- CastStart
										type = 'toggle',
										name = L["Target and Focus Only"],
										desc = L["Alert works only when your current target or focus gains the buff effect or use the ability"],
										order = 1,
									},
									Bundle_CastStart_Resurrection = { -- CastStart
										type = 'toggle',
										name = L["Resurrection"],
										desc = L["Resurrection_Desc"],
										order = 20,
									},
									Bundle_CastStart_BigHeal = { -- CastStart
										type = 'toggle',
										name = L["BigHeal"],
										desc = L["BigHeal_Desc"],
										order = 30,
									},		
								},
							},		
							covenants = { -- CastStart
								type = 'group',
								inline = true,
								name = L["CovenantAbilities"],
								order = 32,
								args = listOption({300728}, "castStart"),
							},
							--dk = { -- CastStart
							--	type = 'group',
							--	inline = true,
							--	name = L["|cffC41F3BDeath Knight|r"],
							--	order = 40,
							--	args = listOption({},"castStart"),
							--},	
							demonhunter = { -- CastStart
								type = 'group',
								inline = true,
								name = L["|cffA330C9Demon Hunter|r"],
								order = 50,
								args = listOption({323639},"castStart"),
							},
							druid = { -- CastStart
								type = 'group',
								inline = true,
								name = L["|cffFF7D0ADruid|r"],
								order = 60,
								args = listOption({274281,274282,274283,2637,33786,339},"castStart"),
							},
							hunter = { -- CastStart
								type = 'group',
								inline = true,
								name = L["|cffABD473Hunter|r"],
								order = 70,
								args = listOption({982,19434,1513},"castStart"),
							},
							mage = { -- CastStart
								type = 'group',
								inline = true,
								name = L["|cff69CCF0Mage|r"],
								order = 80,
								args = listOption({28271,28272,61305,61721,61025,61780,161372,161355,161353,161354,126819,118,31687,203286,199786,113724,257537,314793,307443,314791},"castStart"),
							},
							monk = { -- CastStart
								type = 'group',
								inline = true,
								name = L["|cFF00FF96Monk|r"],
								order = 90,
								args = listOption({198898},"castStart"),
							},
							paladin = { -- CastStart
								type = 'group',
								inline = true,
								name = L["|cffF58CBAPaladin|r"],
								order = 100,
								args = listOption({20066,10326},"castStart"),
							},
							priest	= { -- CastStart
								type = 'group',
								inline = true,
								name = L["|cffFFFFFFPriest|r"],
								order = 110,
								args = listOption({9484,605,32375,265202,289666,325013,323673},"castStart"),
							},
							--rogue = { -- CastStart
							--	type = 'group',
							--	inline = true,
							--	name = L["|cffFFF569Rogue|r"],
							--	order = 120,
							--	args = listOption({},"castStart"),
							--},
							shaman	= { -- CastStart
								type = 'group',
								inline = true,
								name = L["|cff0070daShaman|r"],
								order = 130,
								args = listOption({210873,211004,211015,211010,51514,191634,320137,210714,320674,328923},"castStart"),
							},
							warlock	= { -- CastStart
								type = 'group',
								inline = true,
								name = L["|cff9482C9Warlock|r"],
								order = 140,
								args = listOption({5782,710,152108,691,712,697,112866,112867,112870,112868,112869,30146,157757,157898,688,30108,116858,30283,115268,6358,265187,29893,183601,6201,325289,325640,264106},"castStart"),
							},
							warrior = { -- CastStart
								type = 'group',
								inline = true,
								name = L["|cffC79C6EWarrior|r"],
								order = 150,
								args = listOption({64382},"castStart"),
							},
						},
					},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------					
					spellCastSuccess = {
						type = 'group',
						--inline = true,
						name = L["Special Abilities"],
						disabled = function() return not bawadb.castSuccess end,
						order = 3,
						args = {
							bundle = {
								type = 'group',
								name = L["Enable options"],
								desc = L["Enable abilities by type"],
								inline = true,
								order = 14,
								args = {
									sonlyTF = { -- CastSuccess
										type = 'toggle',
										name = L["Target and Focus Only"],
										desc = L["Alert works only when your current target or focus gains the buff effect or use the ability"],
										order = 10,
									},
									Bundle_CastSuccess_Success = { -- CastSuccess
										type = 'toggle',
										name = L["CastingSuccess"],
										desc = L["CastingSuccess_Desc"],
										--disabled = function() return bawadb.castStart end,
										order = 15,
									},
									Bundle_CastSuccess_BigDamage = { -- CastSuccess
										type = 'toggle',
										name = L["Connected"],
										desc = L["Connected_Desc"],
										--disabled = function() return bawadb.castStart end,
										order = 17,
									},
									Bundle_CastSuccess_Cure = { -- CastSuccess
										type = 'toggle',
										name = L["DPSDispel"],
										desc = L["DPSDispel_Desc"],
										order = 20,
									},
									Bundle_CastSuccess_Dispel = { -- CastSuccess
										type = 'toggle',
										name = L["HealerDispel"],
										desc = L["HealerDispel_Desc"],
										order = 24,
									},
									Bundle_CastSuccess_Purge = { -- CastSuccess
										type = 'toggle',
										name = L["Purge"],
										desc = L["PurgeDesc"],
										order = 25,
									},			
								},
							},		
							general = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["General Abilities"],
								order = 30,
								args = listOption({178207,272678,80353,90355,160452,32182,204361,204362,42292,214027,195710,208683,23034,23035,213664,6262},"castSuccess"),
							},
							race = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["RaceAbilities"],
								order = 31,
								args = listOption({28730,107079,20549,25046,50613,69179,155145,129597,202719,80483,232633,58984,20594,7744,59752,287712,295707,265221,256948,257040,255654}, "castSuccess"),
							},
							covenants = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["CovenantAbilities"],
								order = 32,
								args = listOption({324631,323436}, "castSuccess"),
							},
							enemyInterrupts = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["EnemyInterrupts"],
								order = 35,
								args = listOption({47528,183752,78675,106839,147362,187707,2139,116705,96231,1766,57994,19647,132409,119910,251523,251922,288047,171140,171138,115781,212619,119910,6552},"castSuccess"),
							},
							dk	= { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cffC41F3BDeath Knight|r"],
								order = 40,
								args = listOption({47476,207127,47568,207289,207349,49206,77606,108194,108199,152280,207167,204160,305392,190778,275699,49576,212468,212552,49028,48265,203173,48743,46584,51052,46585,327574,288853,343294,279302,324128,312202},"castSuccess"),
							},
							demonhunter = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cffA330C9Demon Hunter|r"],
								order = 50,
								args = listOption({202138,202140,207684,207682,202137,179057,206649,205604,205629,205630,211881,203704,221527,217832,196718,198013,235903,317009,306830,323639,329554},"castSuccess"),
							},
							druid = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cffFF7D0ADruid|r"],
								order = 70,
								args = listOption({740,99,5211,102359,102417,102383,49376,16979,102416,102401,203651,201664,61391,132469,5215,236026,22570,209749,2908,202246,102793,197721,325727,327071,327022,327037,323764},"castSuccess"),
							},
							hunter = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cffABD473Hunter|r"],
								order = 80,
								args = listOption({109248,109304,131894,202914,208652,205691,201430,213691,187650,186387,1543,199483,236776,248518,325028,308491,257284,19577,324149,328231},"castSuccess"),
							},
							mage = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cff69CCF0Mage|r"],
								order = 90,
								args = listOption({66,12051,30449,110959,153561,198158,205021,235219,235450,235313,11426,205025,108839,31661,55342,122},"castSuccess"),
							},
							monk = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cFF00FF96Monk|r"],
								order = 100,
								args = listOption({116841,119381,123904,115078,119996,137639,115310,115080,233759,122470,116844,233759,202370,325197,322118,325216,327104,326860},"castSuccess"),
							},
							paladin = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cffF58CBAPaladin|r"],
								order = 110,
								args = listOption({6940,199448,199452,31821,853,190784,115750,210256,633,343527,152262,343721,316958,328282,328620,328622,328281,304971,328204},"castSuccess"),
							},
							priest	= { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cffFFFFFFPriest|r"],
								order = 120,
								args = listOption({8122,34433,64044,15487,64843,19236,123040,204263,2050,88625,205369,211522,108968,271466,62618,263165,73325,215769,209780,289657,32379,316262,327661,313347,325013,324724},"castSuccess"),
							},
							rogue = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cffFFF569Rogue|r"],
								order = 130,
								args = listOption({2094,1856,212182,79140,207777,200806,198529,199804,408,193316,1776,13750,1784,206328,328305,185311,323547,323654,328547},"castSuccess"),
							},
							shaman	= { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cff0070daShaman|r"],
								order = 140,
								args = listOption({198067,198103,192249,108281,118345,204437,51490,320125},"castSuccess"),
							},
							shamanTotems	= { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cff0070daShaman (Totems)|r"],
								order = 141,
								args = listOption({204330,204331,98008,51485,108280,192058,192077,192222,207399,198838,204336,8143,16191,324386,8512},"castSuccess"),
							},
							warlock = { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cff9482C9Warlock|r"],
								order = 150,
								args = listOption({6789,48020,111859,111895,111896,111897,111898,1122,205180,201996,199954,199892,199890,80240,5484,312321,205179,344566},"castSuccess"),
							},
							warrior	= { -- CastSuccess
								type = 'group',
								inline = true,
								name = L["|cffC79C6EWarrior|r"],
								order = 160,
								args = listOption({97462,5246,46968,107570,152277,228920,176289,1160,213915,236077,236236,236320,6544,206572,325886,307865,64382,316531},"castSuccess"),
							},
						},
					},
				},
			},

			special = {
				type = 'group',
				name = L["Special"],
				desc = L["Special options"],
				set = setOption,
				get = getOption,
				order = 3,
				args = {
					spellSpecial = {
						type = 'group',
						name = L["Enable options"],
						desc = L["Enable abilities by type"],
						inline = true,
						order = 1,
						args = {
							class = { -- CastSuccess
								type = 'toggle',
								name = L["PvP Trinketed Class"],
								desc = L["Also announce class name with trinket alert when hostile targets use PvP trinket in arena"],
								--disabled = function() return not bawadb.trinket end,
								order = 1,
							},
							Bundle_CastSuccess_Lockout = {
								type = 'toggle',
								name = L["Enable friendly interrupt"],
								desc = L["Check this will enable alert for successfully-landed friendly interrupting abilities"],
								order = 2,
							},
							Bundle_CastSuccess_Interrupted = {
								type = 'toggle',
								name = L["FriendlyInterrupted"],
								desc = L["FriendlyInterruptedDesc"],
								order = 3,
							},
						},
					},
				},
			}

			--,
			--custom = {
			--	type = 'group',
			--	name = L["Custom"],
			--	desc = L["Custom Spell"],
			--	--set = function(info, value) local name = info[#info] bawadb.custom[name] = value end,
			--	--get = function(info) local name = info[#info]	return bawadb.custom[name] end,
			--	order = 4,
			--	args = {
			--		newalert = {
			--			type = 'execute',
			--			name = L["New Sound Alert"],
			--			order = -1,
						--[[args = {
							newname = {
								type = 'input',
								name = "name",
								set = function(info, value) local name = info[#info] if bawadb.custom[vlaue] then log("name already exists") return end bawadb.custom[vlaue]={} end,			
							}]]
			--			func = function()
			--				bawadb.custom[L["New Sound Alert"]] = {
			--					name = L["New Sound Alert"],
			--					soundfilepath = "Interface\\AddOns\\BabbiWatch\\Voice_Custom\\Will-Demo.ogg",--"..L["New Sound Alert"]..".ogg",
			--					sourceuidfilter = "any",
			--					destuidfilter = "any",
			--					eventtype = {
			--						SPELL_CAST_SUCCESS = true,
			--						SPELL_CAST_START = false,
			--						SPELL_AURA_APPLIED = false,
			--						SPELL_AURA_REMOVED = false,
			--						SPELL_INTERRUPT = false,
			--					},
			--					sourcetypefilter = COMBATLOG_FILTER_EVERYTHING,
			--					desttypefilter = COMBATLOG_FILTER_EVERYTHING,
			--					order = 0,
			--				}
			--				self:MakeCustomOption(L["New Sound Alert"])
			--			end,
			--			disabled = function()
			--				if bawadb.custom[L["New Sound Alert"]] then
			--					return true
			--				else
			--					return false
			--				end
			--			end,
			--		}
			--	}
			--}
		}
	}

	for k, v in pairs(bawadb.custom) do
		--self:MakeCustomOption(k)
	end	
	AceConfig:RegisterOptionsTable("BabbiWatch", self.options)
	self:AddOption(L["General"], "general")
	self.options.args.profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db1)
	self.options.args.profiles.order = -1
	
	
	self:AddOption(L["Abilities"], "spells")
	self:AddOption(L["Special"], "special")
	--self:AddOption(L["Custom"], "custom")
	self:AddOption(L["Profiles"], "profiles")
end