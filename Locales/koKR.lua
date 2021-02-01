local L = LibStub("AceLocale-3.0"):NewLocale("BabbiWatch", "koKR")
if not L then return end

L["BW_TEXT"] = "|cff69CCF0밥비워치|r (|cffFFF569/밥비|r)" ---fix
L["BW_VERSION"] = "|cffFF7D0A version 0.9.2 |r(|cff9482C99.0.2 어둠땅|r)" ---fix
L["Spell_CastSuccess"] = "주문 시전 성공"
L["Spell_CastStart"] = "주문 시전 시작"
L["Spell_AuraApplied"] = "버프 적용"
L["Spell_AuraRemoved"] = "버프 사라짐"
L["Spell_Interrupt"] = "주문 방해"
L["Spell_Summon"] = "소환 주문"
L["Any"] = "모두"
L["Player"] = "플레이어"
L["Target"] = "대상"
L["Focus"] = "주시"
L["Mouseover"] = "마우스오버"
L["Party"] = "파티"
L["Raid"] = "공격대"
L["Arena"] = "투기장"
L["Boss"] = "보스"
L["Custom"] = "사용자지정"
L["Friendly"] = "아군"
L["Hostile player"] = "적대적 플레이어"
L["Hostile unit"] = "적대적 유닛"
L["Neutral"] = "중립"
L["Myself"] = "자신"
L["Mine"] = "자신"
L["My pet"] = "자신의 소환수"
L["Custom Spell"] = "사용자지정 주문"
L["New Sound Alert"] = "새로운 음성 경보"
L["name"] = "이름"
L["same name already exists"] = "같은 이름이 이미 있습니다."
L["spellid"] = "주문ID"
L["Remove"] = "제거"
L["Are you sure?"] = "확실합니까?"
L["Test"] = "테스트"
L["Use existing sound"] = "기존 음성 사용"
L["choose a sound"] = "음성 선택"
L["file path"] = "파일 경로"
L["event type"] = "이벤트 종류"
L["Source unit"] = "시전 유닛"
L["Source type"] = "시전 종류"
L["Custom unit name"] = "사용자지정 유닛 이름"
L["Dest unit"] = "대상 유닛"
L["Dest type"] = "대상 종류"
---fix
L["BabbiWatchCredits"] = 
"|r|n|n|cffC41F3B[중요사항]|r|n"..
"|cffC41F3B밥비워치 소스코드는 GladiatorlosSA2(ver3.2)로부터 분기했으며 GPL License에 의거해 제작되었습니다.|r|n|n|n"..

"|cffFFF500[밥비워치 소개]|r|n"..
"안녕하세요 북미 티콘 얼라에서 활동중인 애드온 제작자 |cffFF7D0A밥비(Babbi)|r 입니다.|r|n"..
"밥비워치는 적이 시전한 중요한 주문을 알리기 위한 PvP 애드온입니다.|r|n"..
"이 애드온은 소수의 한국 유저분들 요청으로 시작되었고 GSA와 GSA2 애드온 소스를 기반으로 제작 되었습니다.|r|n"..
"많은 관심 부탁드립니다!|n|n"..

"|cffFFF500[알림사항]|r|n"..
"모든 피드백은 |cffc4302b유튜브(밥비)|r, |cffA330C9트위치(밥비_)|r 그리고 커서포지 사이트에서 받습니다.|n"..
"팔로우로 응원해주세요! 피드백은 언제든지 알려주세요.|r|n|n".. 

"|cffFFF500[기능 변동사항]|r|n"..
"더 많은 주문 감시|r|n"..
"햇갈리는 주문 유형 분류|r|n"..
"불필요한 기능 삭제|r|n"..
"더 빠른 주문 반응속도|r|n"..
"완벽한 한글화를 추구|r|n|n|n"..

"|cffFFF569[특별히 감사한분]|r|n"..
"북미 티콘드리우스 |cff0DD11C<K Alliance>|r 길드원 여러분|r|n"..
"첫번째 보이스팩 제작 및 테스트를 도와주신 두부잼님|n|n"..

"|cffFFF569[이전 프로젝트 공헌자]|r|n"..
"|cff9482C9Abatorlos|r |cffFFF569 - Original GSA Author|r|n"..
"|cffC79C6ExGrit|r |cffFFF569 - GladiatorlosSA2 Creator|r|n"..
"자세한 사항은 wow.curseforge.com/projects/|cffFF7D0Ababbiwatch|r에 게시됩니다.|r|n"

L["PVP Voice Alert"] = "PVP 음성 경보"
L["Load Configuration"] = "설정 창 열기"
L["Load Configuration Options"] = "설정 옵션 열기"
L["General"] = "일반"
L["General options"] = "일반 옵션"
L["Special"] = "특수 기능" --fix
L["Special options"] = "특수 옵션" --fix
L["Enable area"] = "사용 지역"
L["Anywhere"] = "전체 지역"
L["Alert works anywhere"] = "전체 지역에서 경보"
L["Arena"] = "투기장"
L["Alert only works in arena"] = "오직 투기장에서만 경보"
L["Battleground"] = "전장"
L["Alert only works in BG"] = "오직 전장에서만 경보"
L["World"] = "전역"
L["Alert works anywhere else then anena, BG, dungeon instance"] = "투기장, 전장, 인스턴스 던전이외의 모든 곳에서 작동"
L["Voice config"] = "음성 구성"
L["Voice language"] = "음성 언어"
L["Select language of the alert"] = "사용할 언어 선택"
--L["Chinese(female)"] = true ---fix
--L["English(female)"] = "영어(여성)" ---fix
L["Default(male)"] = "한국어(밥비)" ---fix
L["adjusting the voice volume(the same as adjusting the system master sound volume)"] = "음성 음량 조정(시스템 주 음량 조정과 동일함)"
L["Advance options"] = "고급 옵션"
L["Smart disable"] = "스마트 비활성"
L["Disable addon for a moment while too many alerts comes"] = "너무 많은 경보가 들어오면 애드온을 잠시동안 비활성화함"
L["Throttle"] = "조정"
L["The minimum interval of each alert"] = "각 경보의 최소 간격"
L["Abilities"] = "기능"
L["Abilities options"] = "기능 옵션"
L["Special Abilities"] = "특수 기능" --fix
L["Special Abilities options"] = "특수 기능 옵션" --fix
L["Enable options"] = "활성 옵션" --fix
L["Enable abilities by type"] = "종류별 기능 활성"
L["Enable Debuff Applied"] = "적의 디버프" --fix
L["Check this will enable alert for debuff applied to friendly targets from hostile"] = "여기를 체크하면 적대적 타겟이 적용한 아군 디버프 경보가 활성됩니다." --fix
L["Enable Buff Applied"] = "적 버프" --fix
L["Check this will enable alert for buff applied to hostile targets"] = "여기를 체크하면 적대적 타겟에 적용된 버프 경보가 활성됩니다." --fix
L["Enable Buff Down"] = "버프 사라짐" --fix
L["Check this will enable alert for buff removed from hostile targets"] = "여기를 체크하면 적대적 타겟에 버프 사라짐 경보가 활성됩니다." --fix
L["Enable Spell Casting"] = "주문 시전" --fix
L["Chech this will enable alert for spell being casted to friendly targets"] = "여기를 체크하면 아군 타겟에게 시전하는 주문 경보가 활성됩니다." --fix
L["Enable special abilities"] = "주문 일반" --fix
L["Check this will enable alert for instant-cast important abilities"] = "여기를 체크하면 즉시시전 중요 기술에 대한 경보가 활성됩니다." --fix
L["Enable friendly interrupt"] = "아군 시전방해" --fix
L["Check this will enable alert for successfully-landed friendly interrupting abilities"] = "여기를 체크하면 아군의 시전방해 기술이 들어갔을 때에 대한 경보가 활성됩니다." --fix
L["Buff Applied"] = "적 버프"
L["Target and Focus Only"] = "대상과 주시만"
L["Alert works only when your current target or focus gains the buff effect or use the ability"] = "오직 당신의 현재 대상 및 주시에 한해서 경보가 작동합니다. (버프 효과를 얻거나 기술을 사용했을 때)"
L["Alert Drinking"] = "음식먹기 경보"
L["In arena, alert when enemy is drinking"] = "투기장에서, 적군이 엠탐하는 것을 알려줍니다."
L["PvP Trinketed Class"] = "급장 사용시 직업알림"
L["Also announce class name with trinket alert when hostile targets use PvP trinket in arena"] = "적대적 대상이 투기장에서 급장을 쓸 때에, 직업도 같이 알림"
L["General Abilities"] = "일반 기술"
L["|cffFF7D0ADruid|r"] = "|cffFF7D0A드루이드|r"
L["|cffF58CBAPaladin|r"] = "|cffF58CBA성기사|r"
L["|cffFFF569Rogue|r"] = "|cffFFF569도적|r"
L["|cffC79C6EWarrior|r"] = "|cffC79C6E전사|r"
L["|cffFFFFFFPriest|r"] = "|cffFFFFFF사제|r"
L["|cff0070daShaman|r"] = "|cff0070da주술사|r"
L["|cff0070daShaman (Totems)|r"] = "|cff0070da주술사 (토템)|r"
L["|cff69CCF0Mage|r"] = "|cff69CCF0마법사|r"
L["|cffC41F3BDeath Knight|r"] = "|cffC41F3B죽음의 기사|r"
L["|cffABD473Hunter|r"] = "|cffABD473사냥꾼|r"
L["|cFF00FF96Monk|r"] = "|cFF00FF96수도사|r"
L["|cffA330C9Demon Hunter|r"] = "|cffA330C9악마사냥꾼|r"
L["|cff9482C9Warlock|r"] = "|cff9482C9흑마법사|r"
L["Buff Down"] = "버프 사라짐"
L["Spell Casting"] = "주문 시전"
L["BigHeal"] = "상급 치유"
L["BigHeal_Desc"] = "상급 치유, 천상의 빛, 치유의 물결, 치유의 손길, 포용의 안개"
L["Resurrection"] = "부활"
L["Resurrection_Desc"] = "부활, 구원, 고대의 영혼, 되살리기, 성전사 치유"
L["Special Abilities"] = "주문 일반"
L["Friendly Interrupt"] = "아군의 시전차단"
L["Profiles"] = "프로필"

L["PvPWorldQuests"] = "NYI"
L["DisablePvPWorldQuests"] = "NYI"
L["DisablePvPWorldQuestsDesc"] = "Disable all alerts in PvP World Quests"
L["OperationMurlocFreedom"] = true

L["EnemyInterrupts"] = "차단기 (태양 광선 포함, 왜냐하면 태광은 차단과 침묵이 되니까!)"
L["EnemyInterruptsDesc"] = "모든 적대적 대상의 차단-침묵기 경보 활성/비활성"

L["Default / Female voice"] = "기본 / 여성 음성"
L["Select the default voice pack of the alert"] = "경보에 사용될 기본 음성팩을 선택하세요"
L["Optional / Male voice"] = "선택적 / 남성 음성"
L["Select the male voice"] = "남성 음성을 선택하세요"
L["Optional / Neutral voice"] = "선택적 / 중성 음성"
L["Select the neutral voice"] = "중성 음성을 선택하세요"
L["Gender detection"] = "성별 감지"
L["Activate the gender detection"] = "성별 감지를 활성화합니다"
L["Voice menu config"] = "음성 메뉴 설정"
L["Choose a test voice pack"] = "테스트 음성팩을 선택합니다"
L["Select the menu voice pack alert"] = "음성팩 경보 메뉴를 선택하세요"

L["English(male)"] = "영어(남성)"
L["No sound selected for the Custom alert : |cffC41F4B"] = "사용자 경보에 대한 사운드를 선택하지 않음 : |cffC41F4B"
L["Master Volume"] = "마스터 볼륨"
L["Change Output"] = "재생 변경"
L["Unlock the output options"] = "재생 설정 잠금해제"
L["Output"] = "재생"
L["Select the default output"] = "기본 출력을 선택"
L["Master"] = "마스터"
L["SFX"] = "음향 효과"
L["Ambience"] = "환경 소리"
L["Music"] = "배경음악"
L["Dialog"] = "대화"

L["DPSDispel"] = "비마법 해제"
L["DPSDispel_Desc"] = "하이브리드 직업군을 대상으로 한 비마법 해제 경보.|n|n해제 (|cffFF7D0A드루이드|r)|n저주 해제 (|cff69CCF0마법사|r)|n해독 (|cFF00FF96수도사|r)|n독소 정화 (|cffF58CBA성기사|r)|n정화의 빛 |cffF58CBA성기사|r)|n질병 정화 (사제)|n영혼 정화 (|cff0070da주술사|r)"
L["HealerDispel"] = "마법 해제"
L["HealerDispel_Desc"] = "힐러 직업군(흑마법사 포함)을 대상으로 한 마법/비마법 해제 경보.|n|n자연의 치유력 (|cffFF7D0A드루이드|r)|n해독 (|cFF00FF96수도사|r)|n정화 (|cffF58CBA성기사|r)|n정화 (사제)|n영혼 정화 (|cff0070da주술사|r)|n마법 태우기 (|cff9482C9흑마법사|r)"
L["CastingSuccess"] = "CC 시전성공"
L["CastingSuccess_Desc"] = "적대적 대상의 주요 군중제어 주문이 시전 성공시, 경보 활성화.|n|n대상의 CC면역-점감 상태와 관계 없이, 경보는 항상 발생 된다는 점을 주의 하십시오.|n|n|cffC41F3B경고 : 활성화시 아래 목록의 스킬들의 시전 성공 경보를 발생 시킵니다. 만약 시전 경보만 원할시엔 이 기능을 비활성화 해주십시오.|r|n|n회오리 바람 (|cffFF7D0A드루이드|r)|n겨울잠 (|cffFF7D0A드루이드|r)|n변이 (|cff69CCF0마법사|r)|n서리 고리 (|cff69CCF0마법사|r)|n참회 (|cffF58CBA성기사|r)|n정신 지배 (사제)|n사술 (|cff0070da주술사|r)|n공포 (|cff9482C9흑마법사|r)"

L["DispelKickback"] = "해제시 반동 효과"

L["Purge"] = "버프 해제 당함"
L["PurgeDesc"] = "비전 격류를 제외한, 적대적 대상이 아군의 이로운 효과를 해제시 알림.|n|n마법 삼키기 (|cffA330C9악마 사냥꾼|r)|n마법 무효화 (사제)|n정화 (|cff0070da주술사|r)|n마법 삼키기 (|cff9482C9흑마법사|r)"

L["FriendlyInterrupted"] = "아군 시전방해 당함 경보" --fix
L["FriendlyInterruptedDesc"] = "여기를 체크 하면 아군이 적에게 시전방해를 당했을때의 경보가 활성됩니다.|n|n('퀘스트 실패' 기본 효과음 재생)" --fix

L["epicbattleground"] = "대규모 전장"
L["epicbattlegroundDesc"] = "Alerts occur in Epic Battlegrounds.|n|nYou're welcome."

L["OnlyIfPvPFlagged"] = true
L["OnlyIfPvPFlaggedDesc"] = true

L["TankTauntsOFF"] = "탱특 도발 사라짐"
L["TankTauntsOFF_Desc"] = "탱커 특성의 PVP 도발 효과 사라짐 알림"
L["TankTauntsON"] = "탱특 도발 경보"
L["TankTauntsON_Desc"] = "탱커 특성의 PVP 도발 효과 발생시 알림"

L["Connected"] = "강한 데미지 경고"
L["Connected_Desc"] = "상급 불덩이작렬, 혼돈의 화살등 경보"

L["RaceAbilities"] = "종족 특성" --fix
L["CovenantAbilities"] = "서약단 능력"

L["FrostDK"] = true
L["BloodDK"] = true
L["UnholyDK"] = true

L["HavocDH"] = true
L["VengeanceDH"] = true

L["FeralDR"] = true
L["BalanceDR"] = true
L["RestorationDR"] = true
L["GuardianDR"] = true

L["MarksmanshipHN"] = true
L["SurvivalHN"] = true
L["BeastMasteryHN"] = true

L["FrostMG"] = true
L["FireMG"] = true
L["ArcaneMG"] = true

L["MistweaverMN"] = true
L["WindwalkerMN"] = true
L["BrewmasterMN"] = true

L["HolyPD"] = true
L["RetributionPD"] = true
L["ProtectionPD"] = true

L["HolyPR"] = true
L["DisciplinePR"] = true
L["ShadowPR"] = true

L["OutlawRG"] = true
L["AssassinationRG"] = true
L["SubtletyRG"] = true

L["RestorationSH"] = true
L["EnhancementSH"] = true
L["ElementalSH"] = true

L["DestructionWL"] = true
L["DemonologyWL"] = true
L["AfflictionWL"] = true

L["ArmsWR"] = true
L["FuryWR"] = true
L["ProtectionWR"] = true