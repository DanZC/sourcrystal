	const_def 2 ; object constants
	const SEAFOAM_ISLANDS_B3F_POKE_BALL1
	const SEAFOAM_ISLANDS_B3F_POKE_BALL2
	const SEAFOAM_ISLANDS_B3F_BOULDER1

SeafoamIslandsB3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SeafoamIslandsB3FHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_MAX_REVIVE
	
SeafoamIslandsB3FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_RARE_CANDY

SeafoamIslandsB3FBigPearl:
	itemball BIG_PEARL
	
SeafoamIslandsB3FRevive:
	itemball REVIVE
	
SeafoamIslandsB3FBoulder:
	jumpstd strengthboulder

SeafoamIslandsB3F_MapEvents:
	db 0, 0 ; filler

	db 10 ; warp events
	warp_event 35, 19, SEAFOAM_ISLANDS_B2F, 5
	warp_event  5, 21, SEAFOAM_ISLANDS_B2F, 6
	warp_event 35, 11, SEAFOAM_ISLANDS_B2F, 7
	warp_event 21, 12, SEAFOAM_ISLANDS_B2F, 8	
	warp_event 37, 17, SEAFOAM_ISLANDS_B4F, 1
	warp_event 29, 19, SEAFOAM_ISLANDS_B4F, 2
	warp_event 27,  3, SEAFOAM_ISLANDS_B4F, 3
	warp_event 23,  9, SEAFOAM_ISLANDS_B4F, 4
	warp_event  9, 17, SEAFOAM_ISLANDS_B4F, 5
	warp_event  5,  5, SEAFOAM_ISLANDS_B4F, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event 30, 21, BGEVENT_ITEM, SeafoamIslandsB3FHiddenMaxRevive
	bg_event  9,  7, BGEVENT_ITEM, SeafoamIslandsB3FHiddenRareCandy

	db 3 ; object events
	object_event 26, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, -1
	object_event 19,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB3FBigPearl, EVENT_SEAFOAM_ISLANDS_B3F_BIG_PEARL
	object_event 17, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB3FRevive, EVENT_SEAFOAM_ISLANDS_B3F_REVIVE
