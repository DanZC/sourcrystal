	const_def 2 ; object constants
	const SEAFOAMGYM_BLAINE
	const SEAFOAMGYM_GYM_GUY
	const SEAFOAMGYM_LOWELL
	const SEAFOAMGYM_LOWELL_DEFEATED
	const SEAFOAMGYM_DANNIE
	const SEAFOAMGYM_DANNIE_DEFEATED
	const SEAFOAMGYM_CARY
	const SEAFOAMGYM_CARY_DEFEATED
	const SEAFOAMGYM_LINDEN
	const SEAFOAMGYM_LINDEN_DEFEATED
	const SEAFOAMGYM_WALDO
	const SEAFOAMGYM_WALDO_DEFEATED
	const SEAFOAMGYM_MERLE
	const SEAFOAMGYM_MERLE_DEFEATED
SeafoamGym_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene

	db 0 ; callbacks

.DummyScene:
	end

SeafoamGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	writetext UnknownText_0x1ab548
	waitbutton
	closetext
	winlosstext UnknownText_0x1ab646, 0
	loadtrainer BLAINE, BLAINE1
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_SCIENTIST_LOWELL
	setevent EVENT_BEAT_SCIENTIST_DANNIE
	setevent EVENT_BEAT_SUPER_NERD_CARY
	setevent EVENT_BEAT_SCIENTIST_LINDEN
	setevent EVENT_BEAT_SUPER_NERD_WALDO
	setevent EVENT_BEAT_SUPER_NERD_MERLE
	opentext
	writetext UnknownText_0x1ab683
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
	writetext UnknownText_0x1ab69d
	waitbutton
	closetext
	end

.FightDone:
	writetext UnknownText_0x1ab71c
	waitbutton
	closetext
	end
	
TrainerScientistLowell:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SCIENTIST_LOWELL
	iftrue .Defeated
	writetext ScientistLowellSeenText
	waitbutton
	closetext
	winlosstext ScientistLowellBeatenText, 0
	loadtrainer SCIENTIST, LOWELL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SCIENTIST_LOWELL
	opentext
	writetext ScientistLowellAfterBattleText
	waitbutton
	closetext
	applymovement SEAFOAMGYM_LOWELL, .MovementDataScientistLowell
	appear SEAFOAMGYM_LOWELL_DEFEATED
	pause 2
	disappear SEAFOAMGYM_LOWELL
	end

.Defeated:
	writetext ScientistLowellAfterBattleText
	waitbutton
	closetext
	end
	
.MovementDataScientistLowell:
    step UP
	turn_head DOWN
	step_end
	
TrainerScientistDannie:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SCIENTIST_DANNIE
	iftrue .Defeated
	writetext ScientistDannieSeenText
	waitbutton
	closetext
	winlosstext ScientistDannieBeatenText, 0
	loadtrainer SCIENTIST, DANNIE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SCIENTIST_DANNIE
	opentext
	writetext ScientistDannieAfterBattleText
	waitbutton
	closetext
	applymovement SEAFOAMGYM_DANNIE, .MovementDataScientistDannie
	appear SEAFOAMGYM_DANNIE_DEFEATED
	pause 2
	disappear SEAFOAMGYM_DANNIE
	end

.Defeated:
	writetext ScientistDannieAfterBattleText
	waitbutton
	closetext
	end
	
.MovementDataScientistDannie:
    step LEFT
	turn_head RIGHT
	step_end
	
TrainerSuperNerdCary:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SUPER_NERD_CARY
	iftrue .Defeated
	writetext SuperNerdCarySeenText
	waitbutton
	closetext
	winlosstext SuperNerdCaryBeatenText, 0
	loadtrainer SUPER_NERD, CARY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_CARY
	opentext
	writetext SuperNerdCaryAfterBattleText
	waitbutton
	closetext
	applymovement SEAFOAMGYM_CARY, .MovementDataSuperNerdCary
	appear SEAFOAMGYM_CARY_DEFEATED
	pause 2
	disappear SEAFOAMGYM_CARY
	end

.Defeated:
	writetext SuperNerdCaryAfterBattleText
	waitbutton
	closetext
	end
	
.MovementDataSuperNerdCary:
    step RIGHT
	turn_head LEFT
	step_end
	
TrainerScientistLinden:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SCIENTIST_LINDEN
	iftrue .Defeated
	writetext ScientistLindenSeenText
	waitbutton
	closetext
	winlosstext ScientistLindenBeatenText, 0
	loadtrainer SCIENTIST, LINDEN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SCIENTIST_LINDEN
	opentext
	writetext ScientistLindenAfterBattleText
	waitbutton
	closetext
	applymovement SEAFOAMGYM_LINDEN, .MovementDataScientistLinden
	appear SEAFOAMGYM_LINDEN_DEFEATED
	pause 2
	disappear SEAFOAMGYM_LINDEN
	end

.Defeated:
	writetext ScientistLindenAfterBattleText
	waitbutton
	closetext
	end
	
.MovementDataScientistLinden:
    step LEFT
	turn_head RIGHT
	step_end
	
TrainerSuperNerdWaldo:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SUPER_NERD_WALDO
	iftrue .Defeated
	writetext SuperNerdWaldoSeenText
	waitbutton
	closetext
	winlosstext SuperNerdWaldoBeatenText, 0
	loadtrainer SUPER_NERD, WALDO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_WALDO
	opentext
	writetext SuperNerdWaldoAfterBattleText
	waitbutton
	closetext
	applymovement SEAFOAMGYM_WALDO, .MovementDataSuperNerdWaldo
	appear SEAFOAMGYM_WALDO_DEFEATED
	pause 2
	disappear SEAFOAMGYM_WALDO
	end

.Defeated:
	writetext SuperNerdWaldoAfterBattleText
	waitbutton
	closetext
	end
	
.MovementDataSuperNerdWaldo:
    step DOWN
	turn_head UP
	step_end
	
TrainerSuperNerdMerle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SUPER_NERD_MERLE
	iftrue .Defeated
	writetext SuperNerdMerleSeenText
	waitbutton
	closetext
	winlosstext SuperNerdMerleBeatenText, 0
	loadtrainer SUPER_NERD, MERLE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_MERLE
	opentext
	writetext SuperNerdMerleAfterBattleText
	waitbutton
	closetext
	applymovement SEAFOAMGYM_MERLE, .MovementDataSuperNerdMerle
	appear SEAFOAMGYM_MERLE_DEFEATED
	pause 2
	disappear SEAFOAMGYM_MERLE
	end

.Defeated:
	writetext SuperNerdMerleAfterBattleText
	waitbutton
	closetext
	end
	
.MovementDataSuperNerdMerle:
    step DOWN
	turn_head UP
	step_end

SeafoamGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLAINE
	iftrue .SeafoamGymGuyWinScript
	writetext SeafoamGymGuyText
	waitbutton
	closetext
	end

.SeafoamGymGuyWinScript:
	writetext SeafoamGymGuyWinText
	waitbutton
	closetext
	end

UnknownText_0x1ab548:
	text "BLAINE: Waaah!"

	para "My GYM in CINNABAR"
	line "burned down."

	para "My fire-breathing"
	line "#MON and I are"

	para "homeless because"
	line "of the volcano."

	para "Waaah!"

	para "But I'm back in"
	line "business as a GYM"

	para "LEADER here in"
	line "this cave."

	para "If you can beat"
	line "me, I'll give you"
	cont "a BADGE."

	para "Ha! You'd better"
	line "have BURN HEAL!"
	done

UnknownText_0x1ab646:
	text "BLAINE: Awesome."
	line "I've burned out…"

	para "You've earned"
	line "VOLCANOBADGE!"
	done

UnknownText_0x1ab683:
	text "<PLAYER> received"
	line "VOLCANOBADGE."
	done

UnknownText_0x1ab69d:
	text "BLAINE: I did lose"
	line "this time, but I'm"

	para "going to win the"
	line "next time."

	para "When I rebuild my"
	line "CINNABAR GYM,"

	para "we'll have to have"
	line "a rematch."
	done

UnknownText_0x1ab71c:
	text "BLAINE: My fire"
	line "#MON will be"

	para "even stronger."
	line "Just you watch!"
	done

SeafoamGymGuyText:
	text "Yo, CHAMP in"
	line "making!"

	para "This Gym has many"
	line "Trainers and rocks"

	para "in the way from"
	line "the rebuilding."

	para "It sure wont be"
	line "easy to get to"
	cont "BLAINE!"

	para "But keep you cool"
	line "and defeat the"

	para "Trainers one by"
	line "one, and you will"
	
	para "surely find the"
	line "path!"
	done

SeafoamGymGuyWinText:
	text "The Gym Leader"
	line "rebuilding his"
	
	para "Gym and the"
	line "Trainer from"

    para "JOHTO who has come"
	line "to challenge that"
	cont "Gym Leader..."
	
	para "I have witnessed"
	line "a hot battle!"
	done
	
ScientistLowellSeenText:
	text "A white lab coat"
	line "is a researcher's"
	cont "life."
	
	para "We may be living"
	line "in a cave like"
	cont "this,"
	
	para "but we never"
	line "forget to do the"
	cont "laundry."
	done

ScientistLowellBeatenText:
	text "It's pure white"
	line "in my head!"
	done

ScientistLowellAfterBattleText:
	text "This white lab"
	line "coat makes me feel"
	
	para "like I have become"
	line "smarter for some"
	cont "reason."
	done
	
ScientistDannieSeenText:
	text "We lost the Gym on"
	line "CINNABAR ISLAND"
	
	para "and felt lost"
	line "before we"
	cont "came here."
	done

ScientistDannieBeatenText:
	text "Argh!"
	done

ScientistDannieAfterBattleText:
	text "We take a step"
	line "back when we"
	cont "are defeated..."
	
	para "Don't you think"
	line "we are downright"
	cont "honest?"
	
	para "Never put us in"
	line "the same category"
	
	para "as Scientists who"
	line "help bad guys."
	done
	
SuperNerdCarySeenText:
	text "Wow, to see a Gym"
	line "in a cave like"
	cont "this?"
	
	para "I'd love to"
	line "explore it."
	done

SuperNerdCaryBeatenText:
	text "How do I feel"
	line "about losing?"
	
	para "It hurts!"
	done

SuperNerdCaryAfterBattleText:
	text "Bitterness leads"
	line "to improvement"
	cont "tomorrow."
	done
	
ScientistLindenSeenText:
	text "BLAINE may have"
	line "lost his Gym,"
	
	para "but he never"
	line "gives up."
	
	para "His perseverance"
	line "is what motivates"
	cont "me!"
	done

ScientistLindenBeatenText:
	text "Argh..."
	
	para "I can't do"
	line "any more..."
	done

ScientistLindenAfterBattleText:
	text "Together with"
	line "BLAINE,"
	
	para "we will rebuild"
	line "our Gym!"
	done
	
SuperNerdWaldoSeenText:
	text "I am in the middle"
	line "of collecting"
	cont "battle records."
	
	para "Can you help me?"
	done

SuperNerdWaldoBeatenText:
	text "I'm not done"
	line "measuring data!"
	done

SuperNerdWaldoAfterBattleText:
	text "I didn't expect"
	line "you to be so good!"
	
	para "Who in the world"
	line "are you?"
	done
	
SuperNerdMerleSeenText:
	text "Ooh!"
	line "You look easily"
	cont "defeated!"
	done

SuperNerdMerleBeatenText:
	text "I-I didn't win."
	done

SuperNerdMerleAfterBattleText:
	text "Pardon me!"
	line "I failed to sense"
	
	para "how strong" 
	line "you are."
	done

SeafoamGym_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 13, 19, SEAFOAM_ISLANDS, 2

	db 0 ; coord events

	db 0 ; bg events

	db 14 ; object events
	object_event 12,  8, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SeafoamGymBlaineScript, -1
	object_event 14, 17, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuyScript, -1
    object_event 12, 12, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, TrainerScientistLowell, EVENT_SCIENTIST_LOWELL
	object_event 12, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, TrainerScientistLowell, EVENT_SCIENTIST_LOWELL_DEFEATED
	object_event  7, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 2, TrainerScientistDannie, EVENT_SCIENTIST_DANNIE
	object_event  6, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 2, TrainerScientistDannie, EVENT_SCIENTIST_DANNIE_DEFEATED
	object_event 18, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 2, TrainerSuperNerdCary, EVENT_SUPER_NERD_CARY
	object_event 19, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 2, TrainerSuperNerdCary, EVENT_SUPER_NERD_CARY_DEFEATED
	object_event 17,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 3, TrainerScientistLinden, EVENT_SCIENTIST_LINDEN
	object_event 16,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 3, TrainerScientistLinden, EVENT_SCIENTIST_LINDEN_DEFEATED
	object_event 12,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 1, TrainerSuperNerdWaldo, EVENT_SUPER_NERD_WALDO
	object_event 12,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 1, TrainerSuperNerdWaldo, EVENT_SUPER_NERD_WALDO_DEFEATED
	object_event  7,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 3, TrainerSuperNerdMerle, EVENT_SUPER_NERD_MERLE
	object_event  7,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 3, TrainerSuperNerdMerle, EVENT_SUPER_NERD_MERLE_DEFEATED
