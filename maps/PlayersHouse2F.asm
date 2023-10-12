	const_def 2 ; object constants
	const PLAYERSHOUSE2F_CONSOLE
	const PLAYERSHOUSE2F_DOLL_1
	const PLAYERSHOUSE2F_DOLL_2
	const PLAYERSHOUSE2F_BIG_DOLL

PlayersHouse2F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_NEWMAP, .InitializeRoom
	callback MAPCALLBACK_TILES, .SetSpawn

; unused
.Null:
	end

.InitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInitialization
	jumpstd initializeevents
	return

.SkipInitialization:
	return

.SetSpawn:
	special ToggleMaptileDecorations
	return

	db 0, 0, 0 ; filler

Doll1Script:
	describedecoration DECODESC_LEFT_DOLL

Doll2Script:
	describedecoration DECODESC_RIGHT_DOLL

BigDollScript:
	describedecoration DECODESC_BIG_DOLL

GameConsoleScript:
	describedecoration DECODESC_CONSOLE

PlayersHousePosterScript:
	conditional_event EVENT_PLAYERS_ROOM_POSTER, .Script

.Script:
	describedecoration DECODESC_POSTER

PlayersHouseRadioScript:
if DEF(_DEBUG)
	opentext
	; full pokegear
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_PAGER_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_EXPN_CARD
; wPagerFlags
	setflag ENGINE_PAGER_CUT
	setflag ENGINE_PAGER_FLY
	setflag ENGINE_PAGER_SURF
	setflag ENGINE_PAGER_STRENGTH
	setflag ENGINE_PAGER_FLASH
	setflag ENGINE_PAGER_WHIRLPOOL
	setflag ENGINE_PAGER_ROCK_SMASH
	; pokedex
	setflag ENGINE_POKEDEX
	; useful items
	giveitem MAX_REPEL, 99
	giveitem MASTER_BALL, 99
	giveitem RARE_CANDY, 99
	giveitem TM_DYNAMICPUNCH
	giveitem TM_HEADBUTT
	giveitem TM_CURSE
	giveitem TM_ROLLOUT
	giveitem TM_ROAR
	giveitem TM_TOXIC
	giveitem TM_ZAP_CANNON
	giveitem TM_ROCK_SMASH
	giveitem TM_PSYCH_UP
	giveitem TM_HIDDEN_POWER
	giveitem TM_SUNNY_DAY
	giveitem TM_SWEET_SCENT
	giveitem TM_SNORE
	giveitem TM_BLIZZARD
	giveitem TM_HYPER_BEAM
	giveitem TM_ICY_WIND
	giveitem TM_PROTECT
	giveitem TM_RAIN_DANCE
	giveitem TM_GIGA_DRAIN
	giveitem TM_ENDURE
	giveitem TM_FRUSTRATION
	giveitem TM_SOLARBEAM
	giveitem TM_IRON_TAIL
	giveitem TM_DRAGONBREATH
	giveitem TM_THUNDER
	giveitem TM_EARTHQUAKE
	giveitem TM_RETURN
	giveitem TM_DIG
	giveitem TM_PSYCHIC_M
	giveitem TM_SHADOW_BALL
	giveitem TM_MUD_SLAP
	giveitem TM_DOUBLE_TEAM
	giveitem TM_ICE_PUNCH
	giveitem TM_SWAGGER
	giveitem TM_SLEEP_TALK
	giveitem TM_SLUDGE_BOMB
	giveitem TM_SANDSTORM
	giveitem TM_FIRE_BLAST
	giveitem TM_SWIFT
	giveitem TM_DEFENSE_CURL
	giveitem TM_THUNDERPUNCH
	giveitem TM_DREAM_EATER
	giveitem TM_DETECT
	giveitem TM_REST
	giveitem TM_ATTRACT
	giveitem TM_THIEF
	giveitem TM_STEEL_WING
	giveitem TM_FIRE_PUNCH
	giveitem TM_FURY_CUTTER
	giveitem TM_NIGHTMARE
	giveitem HM_CUT
	giveitem HM_FLY
	giveitem HM_SURF
	giveitem HM_STRENGTH
	giveitem HM_FLASH
	giveitem HM_WHIRLPOOL
	giveitem HM_WATERFALL
	; all badges
	setflag ENGINE_ZEPHYRBADGE
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_PLAINBADGE
	setflag ENGINE_FOGBADGE
	setflag ENGINE_STORMBADGE
	setflag ENGINE_MINERALBADGE
	setflag ENGINE_GLACIERBADGE
	setflag ENGINE_RISINGBADGE
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
	setevent EVENT_BEAT_FALKNER
	setevent EVENT_BEAT_BUGSY
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_BEAT_MORTY
	setevent EVENT_BEAT_CHUCK
	setevent EVENT_BEAT_JASMINE
	setevent EVENT_BEAT_PRYCE
	setevent EVENT_BEAT_CLAIR
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_JANINE
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_BLUE
	setevent EVENT_BEAT_ELITE_FOUR
	; fly anywhere
	setflag ENGINE_FLYPOINT_NEW_BARK
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	setflag ENGINE_FLYPOINT_VIOLET
	setflag ENGINE_FLYPOINT_AZALEA
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_FLYPOINT_ECRUTEAK
	setflag ENGINE_FLYPOINT_OLIVINE
	setflag ENGINE_FLYPOINT_CIANWOOD
	setflag ENGINE_FLYPOINT_MAHOGANY
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	setflag ENGINE_FLYPOINT_BLACKTHORN
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	setflag ENGINE_FLYPOINT_PALLET
	setflag ENGINE_FLYPOINT_VIRIDIAN
	setflag ENGINE_FLYPOINT_PEWTER
	setflag ENGINE_FLYPOINT_CERULEAN
	setflag ENGINE_FLYPOINT_VERMILION
	setflag ENGINE_FLYPOINT_CELADON
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	setflag ENGINE_FLYPOINT_LAVENDER
	setflag ENGINE_FLYPOINT_FUCHSIA
	setflag ENGINE_FLYPOINT_SAFFRON
	setflag ENGINE_FLYPOINT_CINNABAR
	setflag ENGINE_FLYPOINT_SAFARI_ZONE_GATE
	; post-e4
	setflag ENGINE_CREDITS_SKIP
	; good party
	givepoke SEADRA, 50, LEFTOVERS
	givepoke VENOMOTH, 50, LEFTOVERS
	givepoke VICTREEBEL, 50, LEFTOVERS
	givepoke WEEZING, 50, LEFTOVERS
	givepoke MAGMAR, 50, LEFTOVERS
	givepoke MAGNETON, 50, LEFTOVERS
	loadvar wPartyMon1Moves+0, AURORA_BEAM
	loadvar wPartyMon1Moves+1, DRAGONBREATH
	loadvar wPartyMon1Moves+2, BUBBLEBEAM
	loadvar wPartyMon1Moves+3, DRAGON_RAGE
	loadvar wPartyMon2Moves+0, PSYCHIC_M
	loadvar wPartyMon2Moves+1, GUST
	loadvar wPartyMon2Moves+2, SLEEP_POWDER
	loadvar wPartyMon2Moves+3, LEECH_LIFE
	loadvar wPartyMon2DVs+0, $ea
	loadvar wPartyMon2DVs+1, $aa
	loadvar wPartyMon3Moves+0, RAZOR_LEAF
	loadvar wPartyMon3Moves+1, ACID
	loadvar wPartyMon3Moves+2, WRAP
	loadvar wPartyMon3Moves+3, SLEEP_POWDER
	loadvar wPartyMon3DVs+0, $ea
	loadvar wPartyMon3DVs+1, $aa
	loadvar wPartyMon4Moves+0, SLUDGE_BOMB
	loadvar wPartyMon4Moves+1, SMOKESCREEN
	loadvar wPartyMon4Moves+2, FAINT_ATTACK
	loadvar wPartyMon4Moves+3, EXPLOSION
	loadvar wPartyMon4DVs+0, $ea
	loadvar wPartyMon4DVs+1, $aa
	loadvar wPartyMon5Moves+0, FLAMETHROWER
	loadvar wPartyMon5Moves+1, THUNDERPUNCH
	loadvar wPartyMon5Moves+2, FAINT_ATTACK
	loadvar wPartyMon5Moves+3, DIZZY_PUNCH
	loadvar wPartyMon5DVs+0, $ea
	loadvar wPartyMon5DVs+1, $aa
	loadvar wPartyMon6Moves+0, SPARK
	loadvar wPartyMon6Moves+1, SONICBOOM
	loadvar wPartyMon6Moves+2, DOUBLE_TEAM
	loadvar wPartyMon6Moves+3, THUNDER_WAVE
	loadvar wPartyMon6DVs+0, $ea
	loadvar wPartyMon6DVs+1, $aa
;	; Grant All Pokemon
;	for x, NUM_POKEMON
;	givepoke BULBASAUR + x, 50
;endr
	; intro events
	addcellnum PHONE_MOM
	setmapscene PLAYERS_HOUSE_1F, $1
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	closetext
	end
else

	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayersRadioText1
	pause 45
	writetext PlayersRadioText2
	pause 45
	writetext PlayersRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext PlayersRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd radio1

.AbbreviatedRadio:
	opentext
	writetext PlayersRadioText4
	pause 45
	closetext
	end

endc

PlayersHouseBookshelfScript:
	jumpstd picturebookshelf

PlayersHousePCScript:
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end

PlayersRadioText1:
	text "PROF.OAK'S #MON"
	line "TALK! Please tune"
	cont "in next time!"
	done

PlayersRadioText2:
	text "#MON CHANNEL!"
	done

PlayersRadioText3:
	text "This is DJ MARY,"
	line "your co-host!"
	done

PlayersRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done

PlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7,  0, PLAYERS_HOUSE_1F, 3

	db 0 ; coord events

	db 4 ; bg events
	bg_event  2,  1, BGEVENT_UP, PlayersHousePCScript
	bg_event  3,  1, BGEVENT_READ, PlayersHouseRadioScript
	bg_event  5,  1, BGEVENT_READ, PlayersHouseBookshelfScript
	bg_event  6,  0, BGEVENT_IFSET, PlayersHousePosterScript

	db 4 ; object events
	object_event  4,  2, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameConsoleScript, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  4,  4, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll1Script, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  5,  4, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll2Script, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  0,  1, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigDollScript, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL
