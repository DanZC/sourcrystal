	const_def 2 ; object constants
	const SEAFOAM_ISLANDS_B4F_ARTICUNO
	const SEAFOAM_ISLANDS_B4F_POKE_BALL1
	const SEAFOAM_ISLANDS_B4F_POKE_BALL2

SeafoamIslandsB4F_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .Articuno

.Articuno:
	checkevent EVENT_FOUGHT_ARTICUNO
	iftrue .NoAppear
	checkcode VAR_BADGES
	ifequal NUM_BADGES, .Appear
	jump .NoAppear

.Appear:
	appear SEAFOAM_ISLANDS_B4F_ARTICUNO
	return

.NoAppear:
	disappear SEAFOAM_ISLANDS_B4F_ARTICUNO
	return
	
SeafoamIslandsB4FHiddenCalcium:
	hiddenitem CALCIUM, EVENT_SEAFOAM_ISLANDS_B4F_HIDDEN_CALCIUM

SeafoamIslandsB4FUltraBall:
	itemball ULTRA_BALL
	
SeafoamIslandsB4FBigPearl:
	itemball BIG_PEARL
	
SeafoamIslandsArticuno:
    opentext
    writetext ArticunoText
	cry ARTICUNO
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_KANTO_LEGEND
	loadwildmon ARTICUNO, 50
	startbattle
	disappear SEAFOAM_ISLANDS_B4F_ARTICUNO
	setevent EVENT_FOUGHT_ARTICUNO
	reloadmapafterbattle
	end
	
ArticunoText:
    text "Gyaoo!"
	done

SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 35, 17, SEAFOAM_ISLANDS_B3F, 5
	warp_event 27, 19, SEAFOAM_ISLANDS_B3F, 6
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 7
	warp_event 21, 11, SEAFOAM_ISLANDS_B3F, 8
	warp_event  7, 17, SEAFOAM_ISLANDS_B3F, 9
	warp_event  3,  5, SEAFOAM_ISLANDS_B3F, 10

	db 0 ; coord events

	db 1 ; bg events
	bg_event 20, 18, BGEVENT_ITEM, SeafoamIslandsB4FHiddenCalcium

	db 3 ; object events
	object_event 19, 18, SPRITE_ARTICUNO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0,  SeafoamIslandsArticuno, EVENT_ARTICUNO_APPEAR
	object_event 21,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB4FUltraBall, EVENT_SEAFOAM_ISLANDS_B4F_ULTRA_BALL
	object_event 33,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB4FBigPearl, EVENT_SEAFOAM_ISLANDS_B4F_BIG_PEARL
