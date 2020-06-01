	const_def 2 ; object constants
	const PEWTERCITY_COOLTRAINER_F
	const PEWTERCITY_BUG_CATCHER
	const PEWTERCITY_GRAMPS
	const PEWTERCITY_BERRY
	const PEWTERCITY_BERRY2
	const PEWTERCITY_APRICORN
	const PEWTERCITY_APRICORN2

PewterCity_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Fruittrees

.FlyPoint:
	setflag ENGINE_FLYPOINT_PEWTER
	return
	
.Fruittrees
.Berry:
	checkflag ENGINE_DAILY_PEWTER_BERRY
	iftrue .NoBerry
	appear PEWTERCITY_BERRY
.NoBerry:
	;return
	
.Apricorn:
	checkflag ENGINE_DAILY_PEWTER_APRICORN
	iftrue .NoApricorn
	appear PEWTERCITY_APRICORN
.NoApricorn:
	;return
	
.Berry2:
	checkflag ENGINE_DAILY_PEWTER_BERRY2
	iftrue .NoBerry2
	appear PEWTERCITY_BERRY2
.NoBerry2:
	;return
	
.Apricorn2:
	checkflag ENGINE_DAILY_PEWTER_APRICORN2
	iftrue .NoApricorn2
	appear PEWTERCITY_APRICORN2
.NoApricorn2:
	return

PewterCityCooltrainerFScript:
	jumptextfaceplayer PewterCityCooltrainerFText

PewterCityBugCatcherScript:
	jumptextfaceplayer PewterCityBugCatcherText

PewterCityGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SILVER_WING
	iftrue .GotSilverWing
	writetext PewterCityGrampsText
	buttonsound
	verbosegiveitem SILVER_WING
	setevent EVENT_GOT_SILVER_WING
	closetext
	end

.GotSilverWing:
	writetext PewterCityGrampsText_GotSilverWing
	waitbutton
	closetext
	end

PewterCitySign:
	jumptext PewterCitySignText

PewterGymSign:
	jumptext PewterGymSignText

PewterMuseumSign:
	jumptext PewterMuseumSignText

PewterCityMtMoonGiftShopSign:
	jumptext PewterCityMtMoonGiftShopSignText

PewterCityWelcomeSign:
	jumptext PewterCityWelcomeSignText

PewterCityPokecenterSign:
	jumpstd pokecentersign

PewterCityMartSign:
	jumpstd martsign

PewterCityBerryTree:
	opentext
	writetext PewterCityBerryTreeText
	buttonsound
	writetext PewterCityHeyItsBerryText
	buttonsound
	verbosegiveitem RAWST_BERRY
	iffalse .NoRoomInBag
	disappear PEWTERCITY_BERRY
	setflag ENGINE_DAILY_PEWTER_BERRY
.NoRoomInBag
	closetext
	end
	
PewterCityBerryTree2:
	opentext
	writetext PewterCityBerryTreeText
	buttonsound
	writetext PewterCityHeyItsBerry2Text
	buttonsound
	verbosegiveitem CHESTO_BERRY
	iffalse .NoRoomInBag
	disappear PEWTERCITY_BERRY2
	setflag ENGINE_DAILY_PEWTER_BERRY2
.NoRoomInBag
	closetext
	end

PewterCityApricornTree:
    opentext
	writetext PewterCityApricornTreeText
	buttonsound	
	writetext PewterCityHeyItsApricornText
	buttonsound
	verbosegiveitem BLU_APRICORN
	iffalse .NoRoomInBag
	disappear PEWTERCITY_APRICORN
	setflag ENGINE_DAILY_PEWTER_APRICORN
.NoRoomInBag
	closetext
	end
	
PewterCityApricornTree2:
    opentext
	writetext PewterCityApricornTreeText
	buttonsound	
	writetext PewterCityHeyItsApricorn2Text
	buttonsound
	verbosegiveitem WHT_APRICORN
	iffalse .NoRoomInBag
	disappear PEWTERCITY_APRICORN2
	setflag ENGINE_DAILY_PEWTER_APRICORN2
.NoRoomInBag
	closetext
	end
	
PewterCityNoBerry:
	opentext
	writetext PewterCityBerryTreeText
	buttonsound
	writetext PewterCityNothingHereText
	waitbutton
	closetext
	end

PewterCityNoApricorn:
	opentext
	writetext PewterCityApricornTreeText
	buttonsound
	writetext PewterCityNothingHereText
	waitbutton
	closetext
	end

PewterCityCooltrainerFText:
	text "Have you visited"
	line "PEWTER GYM?"

	para "The LEADER uses"
	line "rock-type #MON."
	done

PewterCityBugCatcherText:
	text "At night, CLEFAIRY"
	line "come out to play"
	cont "at MT.MOON."

	para "But not every"
	line "night."
	done

PewterCityGrampsText:
	text "Ah, you came all"
	line "the way out here"
	cont "from JOHTO?"

	para "That brings back"
	line "memories. When I"

	para "was young, I went"
	line "to JOHTO to train."

	para "You remind me so"
	line "much of what I was"

	para "like as a young"
	line "man."

	para "Here. I want you"
	line "to have this item"
	cont "I found in JOHTO."
	done

PewterCityGrampsText_GotSilverWing:
	text "Going to new, un-"
	line "known places and"
	cont "seeing new people…"

	para "Those are the joys"
	line "of travel."
	done

PewterCitySignText:
	text "PEWTER CITY"
	line "A Stone Gray City"
	done

PewterGymSignText:
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"

	para "The Rock Solid"
	line "#MON Trainer"
	done

PewterMuseumSignText:
	text "There's a notice"
	line "here…"

	para "PEWTER MUSEUM OF"
	line "SCIENCE is closed"
	cont "for renovations…"
	done

PewterCityMtMoonGiftShopSignText:
	text "There's a notice"
	line "here…"

	para "MT.MOON GIFT SHOP"
	line "NOW OPEN!"
	done

PewterCityWelcomeSignText:
	text "WELCOME TO"
	line "PEWTER CITY!"
	done

PewterCityBerryTreeText:
	text "It's a"
	line "BERRY tree..."
	done

PewterCityHeyItsBerryText:
	text "Hey! It's"
	line "RAWST BERRY!"
	done
	
PewterCityHeyItsBerry2Text:
	text "Hey! It's"
	line "CHESTO BERRY!"
	done

PewterCityApricornTreeText:
	text "It's an"
	line "APRICORN tree..."
	done

PewterCityHeyItsApricornText:
	text "Hey! It's"
	line "BLU APRICORN!"
	done	
	
PewterCityHeyItsApricorn2Text:
	text "Hey! It's"
	line "WHT APRICORN!"
	done	

PewterCityNothingHereText:
	text "There's nothing"
	line "here..."
	done

PewterCity_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 29, 13, PEWTER_NIDORAN_SPEECH_HOUSE, 1
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 23, 17, PEWTER_MART, 2
	warp_event 13, 25, PEWTER_POKECENTER_1F, 1
	warp_event  7, 29, PEWTER_SNOOZE_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 11 ; bg events
	bg_event 25, 23, BGEVENT_READ, PewterCitySign
	bg_event 11, 17, BGEVENT_READ, PewterGymSign
	bg_event 15,  9, BGEVENT_READ, PewterMuseumSign
	bg_event 33, 19, BGEVENT_READ, PewterCityMtMoonGiftShopSign
	bg_event 19, 29, BGEVENT_READ, PewterCityWelcomeSign
	bg_event 14, 25, BGEVENT_READ, PewterCityPokecenterSign
	bg_event 24, 17, BGEVENT_READ, PewterCityMartSign
	bg_event 27,  5, BGEVENT_READ, PewterCityNoBerry
	bg_event 29,  5, BGEVENT_READ, PewterCityNoBerry
	bg_event 31,  3, BGEVENT_READ, PewterCityNoApricorn
	bg_event 29,  3, BGEVENT_READ, PewterCityNoApricorn

	db 7 ; object events
	object_event 19, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerFScript, -1
	object_event 14, 29, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterCityBugCatcherScript, -1
	object_event 29, 17, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityGrampsScript, -1
	object_event 29,  5, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterCityBerryTree, EVENT_PEWTER_BERRY
	object_event 27,  5, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityBerryTree2, EVENT_PEWTER_BERRY2
	object_event 31,  3, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityApricornTree, EVENT_PEWTER_APRICORN
	object_event 29,  3, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, PewterCityApricornTree2, EVENT_PEWTER_APRICORN2
