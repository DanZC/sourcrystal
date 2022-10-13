	const_def 2 ; object constants
	const SAFARI_ZONE_GATE_GENTLEMAN
	const SAFARI_ZONE_GATE_JIGGLYPUFF
;	const SAFARI_ZONE_GATE_FISHER1
;	const SAFARI_ZONE_GATE_FISHER2
	const SAFARI_ZONE_GATE_POKEFAN_F
	const SAFARI_ZONE_GATE_KANGASKHAN
	const SAFARI_ZONE_GATE_YOUNGSTER
	const SAFARI_ZONE_GATE_GRAMPS
	const SAFARI_ZONE_GATE_BUENA
	const SAFARI_ZONE_GATE_SLOWPOKE
	const SAFARI_ZONE_GATE_SUPER_NERD
	const SAFARI_ZONE_GATE_TEACHER
	const SAFARI_ZONE_GATE_BUTTERFREE
	const SAFARI_ZONE_GATE_TWIN

SafariZoneGate_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_SAFARI_ZONE_GATE
	return

SafariZoneGateGentlemanScript:
	jumptextfaceplayer SafariZoneGateGentlemanText

SafariZoneGateJigglypuffScript:
	opentext
	writetext SafariZoneGateJigglypuffText
	cry JIGGLYPUFF
	waitbutton
	closetext
	end

SafariZoneGateKangaskhanScript:
	opentext
	writetext SafariZoneGateKangaskhanText
	waitbutton
	closetext
	end

SafariZoneGateSlowpokeScript:
	opentext
	writetext SafariZoneGateSlowpokeText1
	pause 30
	writetext SafariZoneGateSlowpokeText2
	cry SLOWPOKE
	waitbutton
	closetext
	end

SafariZoneGateButterfreeScript:
	opentext
	writetext SafariZoneGateButterfreeText
	cry BUTTERFREE
	waitbutton
	closetext
	end

SafariZoneGatePokefanFScript:
	jumptextfaceplayer SafariZoneGatePokefanFText

SafariZoneGateTwinScript:
	jumptextfaceplayer SafariZoneGateTwinText

SafariZoneGateYoungsterScript:
	jumptextfaceplayer SafariZoneGateYoungsterText

SafariZoneGateBuenaScript:
	jumptextfaceplayer SafariZoneGateBuenaText

SafariZoneGateSuperNerdScript:
	jumptextfaceplayer SafariZoneGateSuperNerdText

SafariZoneGateSign:
	jumptext SafariZoneGateSignText

SafariZoneGateGrampsMartScript:
	faceplayer
	opentext
	writetext SafariZoneGateGrampsMartText
	waitbutton
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_4F
	closetext
	end

SafariZoneGateTeacherMartScript:
	faceplayer
	opentext
	writetext SafariZoneGateTeacherMartText
	waitbutton
	pokemart MARTTYPE_STANDARD, MART_SAFARI_GATE
	closetext
	end

SafariZoneGateGentlemanText:
	text "The SAFARI ZONE"
	line "is great!"
	
	para "I just kept going"
	line "after #MON!"
	
	para "That made my"
	line "JIGGLYPUFF upset"
	cont "though."
	done

SafariZoneGateJigglypuffText:
	text "JIGGLYPUFF: Puu"
	line "pupuu."
	done

SafariZoneGateTwinText:
	text "I've always want-"
	line "ed to catch my"
	cont "first #MON at"
	cont "the SAFARI ZONE."
	done
	
SafariZoneGatePokefanFText:
	text "……………………"
	
	para "I'm not a talker."
	done

SafariZoneGateKangaskhanText:
	text "KANGASKHAN: ……………"
	line "……………………………………………"
	done

SafariZoneGateYoungsterText:
	text "Safari, safari,"
	line "it's so much fun."
	
	para "Safari, safari,"
	line "so interesting,"
	cont "huh!"

	para "So many #MON"
	line "are waiting for"
	cont "us!"

	para "…That's a song"
	line "I made up."
	
	para "I sing it when I"
	line "am in the SAFARI"
	cont "ZONE."
	done

SafariZoneGateBuenaText:
	text "There are many"
	line "cute #MON to"
	cont "choose from, but"
	cont "nothing beats the"
	cont "cuteness of SLOW-"
	cont "POKE."

	para "People often say"
	line "that I look like"
	cont "one!"
	done

SafariZoneGateSlowpokeText1:
	text "SLOWPOKE: …"
	done
	
SafariZoneGateSlowpokeText2:
	text "<……>Yawn?"
	done

SafariZoneGateSuperNerdText:
	text "SAFARI ZONE…"
	para "It makes me feel"
	line "like I am in a"
	cont "foreign country."
	
	para "It brings up a"
	line "strange feeling."
	done

SafariZoneGateGrampsMartText:
	text "I've decided to"
	line "carry #MON"
	cont "drinks."
	
	para "This will be new"
	line "to me, but I will"
	cont "do my best…"
	done

SafariZoneGateTeacherMartText:
	text "Oh, you want to"
	line "buy something?"
	
	para "Can you wait while"
	line "I get it ready?"
	
	para "Just a minute…"
	
	para "……………"
	done

SafariZoneGateButterfreeText:
	text "BUTTERFREE: Freee."
	done

SafariZoneGateSignText:
	text "SAFARI ZONE"
	done
	
SafariZoneGatePokecenterSign:
	jumpstd pokecentersign

SafariZoneGate_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 13,  5, SAFARI_ZONE_ENTRANCE, 3
	warp_event  7, 11, SAFARI_ZONE_GATE_POKECENTER_1F, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 14,  6, BGEVENT_READ, SafariZoneGateSign
	bg_event  8, 11, BGEVENT_READ, SafariZoneGatePokecenterSign

	db 12 ; object events
	object_event  6,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneGateGentlemanScript, -1
	object_event  5,  6, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, SafariZoneGateJigglypuffScript, -1
;	object_event  16,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneGateSign, -1
;	object_event  17,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneGateSign, -1
	object_event 19,  9, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SafariZoneGatePokefanFScript, -1
	object_event 20,  9, SPRITE_KANGASKHAN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SafariZoneGateKangaskhanScript, -1
	object_event 19, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneGateYoungsterScript, -1
	object_event 19, 17, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SafariZoneGateGrampsMartScript, -1
	object_event 20, 20, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SafariZoneGateBuenaScript, -1
	object_event 21, 20, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, SafariZoneGateSlowpokeScript, -1
	object_event 11, 19, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneGateSuperNerdScript, -1
	object_event  8, 17, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, SafariZoneGateTeacherMartScript, -1
	object_event  7, 17, SPRITE_BUTTERFREE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneGateButterfreeScript, -1
	object_event 11, 12, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneGateTwinScript, -1
