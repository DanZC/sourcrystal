	const_def 2 ; object constants
	const ROUTE11_YOUNGSTER1
	const ROUTE11_YOUNGSTER2
	const ROUTE11_YOUNGSTER3
	const ROUTE11_YOUNGSTER4
	const ROUTE11_BERRY
	const ROUTE11_APRICORN
	const ROUTE11_BIG_SNORLAX

Route11_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .Fruittrees
	
.Fruittrees
.Berry:
	checkflag ENGINE_DAILY_ROUTE11_BERRY
	iftrue .NoBerry
	appear ROUTE11_BERRY
.NoBerry:
	;return
	
.Apricorn:
	checkflag ENGINE_DAILY_ROUTE11_APRICORN
	iftrue .NoApricorn
	appear ROUTE11_APRICORN
.NoApricorn:
	return

TrainerYoungsterOwen:
	trainer YOUNGSTER, OWEN, EVENT_BEAT_YOUNGSTER_OWEN, YoungsterOwenSeenText, YoungsterOwenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterOwenAfterBattleText
	waitbutton
	closetext
	end

Route11DiglettsCaveSign:
	jumptext Route11DiglettsCaveSignText

Route11Snorlax:
	opentext
	special SnorlaxAwake
	iftrue .Awake
	writetext UnknownText_0x1aab64
	waitbutton
	closetext
	end

.Awake:
	writetext UnknownText_0x1aab84
	pause 15
	cry SNORLAX
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 50
	startbattle
	disappear ROUTE11_BIG_SNORLAX
	setevent EVENT_FOUGHT_SNORLAX
	reloadmapafterbattle
	end

TrainerYoungsterJason:
	trainer YOUNGSTER, JASON, EVENT_BEAT_YOUNGSTER_JASON, YoungsterJasonSeenText, YoungsterJasonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJasonAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicHerman:
	trainer PSYCHIC_T, HERMAN, EVENT_BEAT_PSYCHIC_HERMAN, PsychicHermanSeenText, PsychicHermanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicHermanAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicFidel:
	trainer PSYCHIC_T, FIDEL, EVENT_BEAT_PSYCHIC_FIDEL, PsychicFidelSeenText, PsychicFidelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFidelAfterBattleText
	waitbutton
	closetext
	end

Route11Sign:
	jumptext Route11SignText

Route11BerryTree:
	opentext
	writetext Route11BerryTreeText
	buttonsound
	writetext Route11HeyItsBerryText
	buttonsound
	verbosegiveitem ORAN_BERRY
	iffalse .NoRoomInBag
	disappear ROUTE11_BERRY
	setflag ENGINE_DAILY_ROUTE11_BERRY
.NoRoomInBag
	closetext
	end
	
Route11ApricornTree:
    opentext
	writetext Route11ApricornTreeText
	buttonsound	
	writetext Route11HeyItsApricornText
	buttonsound
	verbosegiveitem GRN_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE11_APRICORN
	setflag ENGINE_DAILY_ROUTE11_APRICORN
.NoRoomInBag
	closetext
	end

Route11NoBerry:
	opentext
	writetext Route11BerryTreeText
	buttonsound
	writetext Route11NothingHereText
	waitbutton
	closetext
	end

Route11NoApricorn:
	opentext
	writetext Route11ApricornTreeText
	buttonsound
	writetext Route11NothingHereText
	waitbutton
	closetext
	end

Route11HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_11_HIDDEN_REVIVE

YoungsterOwenSeenText:
	text "There's no cheat-"
	line "ing in #MON."

	para "Let's keep it fair"
	line "and square!"
	done

YoungsterOwenBeatenText:
	text "Huh? How did this"
	line "happen?"
	done

YoungsterOwenAfterBattleText:
	text "I fought fair and"
	line "square with honor."

	para "I don't regret"
	line "this at all."
	done

YoungsterJasonSeenText:
	text "It itches and"
	line "tickles a bit when"

	para "I wear shorts in"
	line "the grass."
	done

YoungsterJasonBeatenText:
	text "Aiyaaah!"
	line "I got stomped!"
	done

YoungsterJasonAfterBattleText:
	text "I'm going to catch"
	line "more #MON in"
	cont "the grass."
	done

PsychicHermanSeenText:
	text "…"
	done

PsychicHermanBeatenText:
	text "…"
	done

PsychicHermanAfterBattleText:
	text "…"

	para "I lost while I had"
	line "my eyes closed…"
	done

PsychicFidelSeenText:
	text "I can see it…"

	para "Everything to see"
	line "about you…"
	done

PsychicFidelBeatenText:
	text "I couldn't foresee"
	line "your power…"
	done

PsychicFidelAfterBattleText:
	text "Strength in con-"
	line "viction…"

	para "You're strong be-"
	line "cause you believe"
	cont "in your #MON."
	done

Route11SignText:
	text "ROUTE 11"
	done
	
UnknownText_0x1aab64:
	text "SNORLAX is snoring"
	line "peacefully…"
	done

UnknownText_0x1aab84:
	text "The #GEAR was"
	line "placed near the"
	cont "sleeping SNORLAX…"

	para "…"

	para "SNORLAX woke up!"
	done
	
Route11DiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done
	
Route11BerryTreeText:
	text "It's a"
	line "BERRY tree…"
	done

Route11HeyItsBerryText:
	text "Hey! It's"
	line "ORAN BERRY!"
	done

Route11ApricornTreeText:
	text "It's an"
	line "APRICORN tree…"
	done

Route11HeyItsApricornText:
	text "Hey! It's"
	line "GRN APRICORN!"
	done	

Route11NothingHereText:
	text "There's nothing"
	line "here…"
	done

Route11_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  8,  5, DIGLETTS_CAVE, 1
	warp_event 53,  8, ROUTE_11_GATE, 1
	warp_event 53,  9, ROUTE_11_GATE, 2

	db 0 ; coord events

	db 5 ; bg events
	bg_event 13,  5, BGEVENT_READ, Route11Sign
	bg_event 52,  5, BGEVENT_ITEM, Route11HiddenRevive
	bg_event  5,  5, BGEVENT_READ, Route11DiglettsCaveSign
	bg_event 52,  2, BGEVENT_READ, Route11NoBerry
	bg_event 53,  1, BGEVENT_READ, Route11NoApricorn

	db 7 ; object events
	object_event 40, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterOwen, -1
	object_event 38,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJason, -1
	object_event 48,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPsychicHerman, -1
	object_event 20,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicFidel, -1
	object_event 52,  2, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route11BerryTree, EVENT_ROUTE11_BERRY
	object_event 53,  1, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route11ApricornTree, EVENT_ROUTE11_APRICORN
	object_event  8,  6, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11Snorlax, EVENT_ROUTE11_SNORLAX
