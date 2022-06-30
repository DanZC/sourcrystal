INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.

INCLUDE "data/pokemon/egg_move_pointers.asm"

BulbasaurEggMoves:
	db AMNESIA
	db CHARM
	db LIGHT_SCREEN
	db PETAL_DANCE
	db SAFEGUARD
	db SKULL_BASH
	db -1 ; end

CharmanderEggMoves:
	db ANCIENTPOWER
	db BELLY_DRUM
	db BEAT_UP
	db BITE
	db CRUNCH
	db OUTRAGE
	db ROCK_SLIDE
	db -1 ; end

SquirtleEggMoves:
	db BUBBLEBEAM
	db FLAIL
	db FORESIGHT
	db HAZE
	db MIRROR_COAT
	db MIST
	db -1 ; end

PidgeyEggMoves:
	db FAINT_ATTACK
	db FORESIGHT
	db PURSUIT
	db STEEL_WING
	db -1 ; end

RattataEggMoves:
	db BITE
	db COUNTER
	db FLAME_WHEEL
	db FURY_SWIPES
	db REVERSAL
	db SCREECH
	db -1 ; end

SpearowEggMoves:
	db FALSE_SWIPE
	db QUICK_ATTACK
	db RAZOR_WIND
	db SCARY_FACE
	db STEEL_WING
	db TRI_ATTACK
	db WHIRLWIND
	db -1 ; end

EkansEggMoves:
	db BEAT_UP
	db DISABLE
	db PURSUIT
	db SCARY_FACE
	db SLAM
	db SPITE
	db -1 ; end

SandshrewEggMoves:
	db COUNTER
	db FLAIL
	db METAL_CLAW
	db RAPID_SPIN
	db -1 ; end

NidoranFEggMoves:
	db BEAT_UP
	db CHARM
	db COUNTER
	db DISABLE
	db FOCUS_ENERGY
	db PURSUIT
	db SKULL_BASH
	db SUPERSONIC
	db TAKE_DOWN
	db -1 ; end

NidoranMEggMoves:
	db AMNESIA
	db BEAT_UP
	db CONFUSION
	db COUNTER
	db DISABLE
	db SKULL_BASH
	db SUPERSONIC
	db TAKE_DOWN
	db -1 ; end

VulpixEggMoves:
	db FAINT_ATTACK
	db FLAIL
	db HYPNOSIS
	db ROAR
	db PSYCH_UP
	db -1 ; end

ZubatEggMoves:
	db FAINT_ATTACK
	db GUST
	db HYPNOSIS
	db PURSUIT
	db QUICK_ATTACK
	db WHIRLWIND
	db -1 ; end

OddishEggMoves:
	db CHARM
	db FLAIL
	db RAZOR_LEAF
	db SYNTHESIS
	db SWORDS_DANCE
	db -1 ; end

ParasEggMoves:
	db AGILITY
	db COUNTER
	db FLAIL
	db FALSE_SWIPE
	db LEECH_SEED
	db METAL_CLAW
	db PSYBEAM
	db PURSUIT
	db SCREECH
	db SWEET_SCENT
	db -1 ; end

VenonatEggMoves:
	db AGILITY
	db BATON_PASS
	db GIGA_DRAIN
	db SCREECH
	db -1 ; end

DiglettEggMoves:
	db ANCIENTPOWER
	db BEAT_UP
	db FAINT_ATTACK
	db PURSUIT
	db REVERSAL
	db SCREECH
	db -1 ; end

MeowthEggMoves:
	db AMNESIA
	db CHARM
	db FLAIL
	db HYPNOSIS
	db SPITE
	db TAIL_WHIP
	db -1 ; end

PsyduckEggMoves:
	db CONFUSE_RAY
	db CROSS_CHOP
	db ENCORE
	db FORESIGHT
	db FUTURE_SIGHT
	db HYPNOSIS
	db PSYBEAM
	db -1 ; end

MankeyEggMoves:
	db BEAT_UP
	db COUNTER
	db ENCORE
	db FORESIGHT
	db MEDITATE
	db REVERSAL
	db ROCK_SLIDE
	db -1 ; end

GrowlitheEggMoves:
	db BODY_SLAM
	db CRUNCH
	db DOUBLE_EDGE
	db DOUBLE_KICK
	db FIRE_SPIN
	db MORNING_SUN
	db THRASH
	db -1 ; end

PoliwagEggMoves:
	db BUBBLEBEAM
	db ENCORE
	db HAZE
	db MIND_READER
	db MIST
	db SPLASH
	db -1 ; end

AbraEggMoves:
	db ENCORE
	db BARRIER
	db FIRE_PUNCH
	db ICE_PUNCH
	db THUNDERPUNCH
	db -1 ; end

MachopEggMoves:
	db COUNTER
	db ENCORE
	db FIRE_PUNCH
	db ICE_PUNCH
	db MEDITATE
	db ROLLING_KICK
	db THUNDERPUNCH
	db -1 ; end

BellsproutEggMoves:
	db ENCORE
	db LEECH_LIFE
	db SYNTHESIS
	db SWORDS_DANCE
	db -1 ; end

TentacoolEggMoves:
	db AURORA_BEAM
	db BUBBLE
	db HAZE
	db MIRROR_COAT
	db RAPID_SPIN
	db -1 ; end

GeodudeEggMoves:
	db MEGA_PUNCH
	db ROCK_SLIDE
	db -1 ; end

PonytaEggMoves:
	db CHARM
	db DOUBLE_EDGE
	db DOUBLE_KICK
	db FLAME_WHEEL
	db HORN_DRILL
	db HYPNOSIS
	db LOW_KICK
	db THRASH
	db -1 ; end

SlowpokeEggMoves:
	db BELLY_DRUM
	db FUTURE_SIGHT
	db STOMP
	db -1 ; end

FarfetchDEggMoves:
	db FLAIL
	db FORESIGHT
	db GUST
	db MIRROR_MOVE
	db QUICK_ATTACK
	db STEEL_WING
	db -1 ; end

DoduoEggMoves:
	db FAINT_ATTACK
	db HAZE
	db MIRROR_MOVE
	db QUICK_ATTACK
	db SUPERSONIC
	db -1 ; end

SeelEggMoves:
	db DISABLE
	db ENCORE
	db HORN_DRILL
	db LICK
	db PERISH_SONG
	db SLAM
	db -1 ; end

GrimerEggMoves:
	db EXPLOSION
	db HAZE
	db LICK
	db MEAN_LOOK
	db -1 ; end

ShellderEggMoves:
	db BARRIER
	db BUBBLEBEAM
	db RAPID_SPIN
	db SCREECH
	db TAKE_DOWN
	db -1 ; end

GastlyEggMoves:
	db DISABLE
	db HAZE
	db PERISH_SONG
	db PSYWAVE
	db -1 ; end

OnixEggMoves:
	db EXPLOSION
	db FLAIL
	db -1 ; end

DrowzeeEggMoves:
	db BARRIER
	db LIGHT_SCREEN
	db -1 ; end

KrabbyEggMoves:
	db AMNESIA
	db ANCIENTPOWER
	db ENDURE
	db FLAIL
	db HAZE
	db SLAM
	db -1 ; end

ExeggcuteEggMoves:
	db ANCIENTPOWER
	db MOONLIGHT
	db -1 ; end

CuboneEggMoves:
	db ANCIENTPOWER
	db DOUBLE_KICK
	db PERISH_SONG
	db SCREECH
	db SKULL_BASH
	db -1 ; end

LickitungEggMoves:
	db AMNESIA
	db BELLY_DRUM
	db BODY_SLAM
	db MAGNITUDE
	db -1 ; end

KoffingEggMoves:
	db DESTINY_BOND
	db PAIN_SPLIT
	db PSYBEAM
	db PSYWAVE
	db SCREECH
	db SPITE
	db -1 ; end

RhyhornEggMoves:
	db COUNTER
	db CRUNCH
	db REVERSAL
	db THRASH
	db -1 ; end

ChanseyEggMoves:
	db HEAL_BELL
	db METRONOME
	db PRESENT
	db -1 ; end

TangelaEggMoves:
	db AMNESIA
	db CONFUSION
	db FLAIL
	db MEGA_DRAIN
	db REFLECT
	db -1 ; end

KangaskhanEggMoves:
	db COUNTER
	db DISABLE
	db DOUBLE_EDGE
	db FOCUS_ENERGY
	db FORESIGHT
	db SAFEGUARD
	db STOMP
	db -1 ; end

HorseaEggMoves:
	db AURORA_BEAM
	db DISABLE
	db DRAGON_RAGE
	db FLAIL
	db OCTAZOOKA
	db OUTRAGE
	db SPLASH
	db -1 ; end

GoldeenEggMoves:
	db HAZE
	db HYDRO_PUMP
	db PSYBEAM
	db -1 ; end

MrMimeEggMoves:
	db CONFUSE_RAY
	db FUTURE_SIGHT
	db HYPNOSIS
	db MIMIC
	db -1 ; end

ScytherEggMoves:
	db BATON_PASS
	db COUNTER
	db LIGHT_SCREEN
	db RAZOR_WIND
	db REVERSAL
	db SAFEGUARD
	db -1 ; end

PinsirEggMoves:
	db FAINT_ATTACK
	db FLAIL
	db FURY_ATTACK
	db QUICK_ATTACK
	db -1 ; end

LaprasEggMoves:
	db ANCIENTPOWER
	db AURORA_BEAM
	db FORESIGHT
	db FUTURE_SIGHT
	db HORN_DRILL
	db -1 ; end

EeveeEggMoves:
	db CHARM
	db FLAIL
	db -1 ; end

OmanyteEggMoves:
	db AURORA_BEAM
	db BUBBLEBEAM
	db HAZE
	db SLAM
	db SUPERSONIC
	db -1 ; end

KabutoEggMoves:
	db AURORA_BEAM
	db BUBBLEBEAM
	db CONFUSE_RAY
	db FLAIL
	db RAPID_SPIN
	db SCREECH
	db TAKE_DOWN
	db -1 ; end

AerodactylEggMoves:
	db FORESIGHT
	db PURSUIT
	db STEEL_WING
	db WHIRLWIND
	db -1 ; end

SnorlaxEggMoves:
	db CHARM
	db COUNTER
	db DOUBLE_EDGE
	db LICK
	db -1 ; end

DratiniEggMoves:
	db HAZE
	db LIGHT_SCREEN
	db MIST
	db SUPERSONIC
	db -1 ; end

ChikoritaEggMoves:
	db ANCIENTPOWER
	db BODY_SLAM
	db COUNTER
	db FLAIL
	db LEECH_SEED
	db SWORDS_DANCE
	db VINE_WHIP
	db -1 ; end

CyndaquilEggMoves:
	db DOUBLE_EDGE
	db DOUBLE_KICK
	db FORESIGHT
	db FURY_SWIPES
	db QUICK_ATTACK
	db REVERSAL
	db THRASH
	db -1 ; end

TotodileEggMoves:
	db ANCIENTPOWER
	db CRUNCH
	db HYDRO_PUMP
	db ROCK_SLIDE
	db THRASH
	db -1 ; end

SentretEggMoves:
	db DOUBLE_EDGE
	db FOCUS_ENERGY
	db PURSUIT
	db REVERSAL
	db SLASH
	db -1 ; end

HoothootEggMoves:
	db FAINT_ATTACK
	db MIRROR_MOVE
	db SKY_ATTACK
	db SUPERSONIC
	db WHIRLWIND
	db WING_ATTACK
	db -1 ; end

LedybaEggMoves:
	db BIDE
	db COUNTER
	db ENCORE
	db PSYBEAM
	db SCREECH
	db LIGHT_SCREEN
	db -1 ; end

SpinarakEggMoves:
	db BATON_PASS
	db DISABLE
	db MEGAHORN
	db PSYBEAM
	db PURSUIT
	db SONICBOOM
	db TWINEEDLE
	db -1 ; end

ChinchouEggMoves:
	db AGILITY
	db FLAIL
	db PSYBEAM
	db SCREECH
	db SUPERSONIC
	db -1 ; end

PichuEggMoves:
	db REVERSAL
	db BIDE
	db DOUBLESLAP
	db ENCORE
	db FLAIL
	db PRESENT
	db REVERSAL
	db THUNDERPUNCH
	db -1 ; end

CleffaEggMoves:
	db AMNESIA
	db BELLY_DRUM
	db METRONOME
	db MIMIC
	db PRESENT
	db SPLASH
	db -1 ; end

IgglybuffEggMoves:
	db FAINT_ATTACK
	db PERISH_SONG
	db PRESENT
	db -1 ; end

TogepiEggMoves:
	db FORESIGHT
	db FUTURE_SIGHT
	db MIRROR_MOVE
	db PECK
	db PRESENT
	db -1 ; end

NatuEggMoves:
	db DRILL_PECK
	db FAINT_ATTACK
	db HAZE
	db QUICK_ATTACK
	db STEEL_WING
	db -1 ; end

MareepEggMoves:
	db AGILITY
	db BODY_SLAM
	db SAND_ATTACK
	db SCREECH
	db TAKE_DOWN
	db THUNDERBOLT
	db -1 ; end

MarillEggMoves:
	db AMNESIA
	db BELLY_DRUM
	db BODY_SLAM
	db FUTURE_SIGHT
	db FORESIGHT
	db LIGHT_SCREEN
	db PERISH_SONG
	db PRESENT
	db SING
	db SLAM
	db SUPERSONIC
	db -1 ; end

SudowoodoEggMoves:
	db ENDURE
	db HARDEN
	db SELFDESTRUCT
	db -1 ; end

HoppipEggMoves:
	db AMNESIA
	db CONFUSION
	db DOUBLE_EDGE
	db ENCORE
	db REFLECT
	db PAY_DAY
	db -1 ; end

AipomEggMoves:
	db AGILITY
	db BEAT_UP
	db COUNTER
	db DOUBLESLAP
	db PURSUIT
	db SLAM
	db SPITE
	db SCREECH
	db -1 ; end

YanmaEggMoves:
	db DOUBLE_EDGE
	db FAINT_ATTACK
	db LEECH_LIFE
	db PURSUIT
	db REVERSAL
	db WHIRLWIND
	db -1 ; end

WooperEggMoves:
	db ANCIENTPOWER
	db BODY_SLAM
	db DOUBLE_KICK
	db ENCORE
	db RECOVER
	db SAFEGUARD
	db -1 ; end

MurkrowEggMoves:
	db CONFUSE_RAY
	db DRILL_PECK
	db FAINT_ATTACK
	db MIRROR_MOVE
	db SCREECH
	db SKY_ATTACK
	db WHIRLWIND
	db WING_ATTACK
	db -1 ; end

MisdreavusEggMoves:
	db CURSE
	db DESTINY_BOND
	db SCREECH
	db SPITE
	db -1 ; end

GirafarigEggMoves:
	db AMNESIA
	db BEAT_UP
	db DOUBLE_KICK
	db FORESIGHT
	db FUTURE_SIGHT
	db MEAN_LOOK
	db TAKE_DOWN
	db -1 ; end

PinecoEggMoves:
	db COUNTER
	db DOUBLE_EDGE
	db ENDURE
	db FLAIL
	db PIN_MISSILE
	db REFLECT
	db SWIFT
	db -1 ; end

DunsparceEggMoves:
	db AGILITY
	db ANCIENTPOWER
	db BIDE
	db BITE
	db CURSE
	db HEADBUTT
	db ROCK_SLIDE
	db RAGE
	db -1 ; end

GligarEggMoves:
	db AGILITY
	db BATON_PASS
	db COUNTER
	db DOUBLE_EDGE
	db METAL_CLAW
	db RAZOR_WIND
	db WING_ATTACK
	db -1 ; end

SnubbullEggMoves:
	db CRUNCH
	db FAINT_ATTACK
	db HEAL_BELL
	db METRONOME
	db PRESENT
	db REFLECT
	db SNORE
	db -1 ; end

QwilfishEggMoves:
	db BUBBLEBEAM
	db FLAIL
	db HAZE
	db SUPERSONIC
	db -1 ; end

ShuckleEggMoves:
	db MUD_SLAP
	db SWEET_SCENT
	db -1 ; end

HeracrossEggMoves:
	db BIDE
	db DOUBLE_EDGE
	db FLAIL
	db HARDEN
	db MEGAHORN
	db PURSUIT
	db -1 ; end

SneaselEggMoves:
	db BITE
	db COUNTER
	db FORESIGHT
	db PURSUIT
	db REFLECT
	db SPITE
	db -1 ; end

TeddiursaEggMoves:
	db COUNTER
	db CRUNCH
	db DOUBLE_EDGE
	db FOCUS_ENERGY
	db METAL_CLAW
	db SEISMIC_TOSS
	db TAKE_DOWN
	db -1 ; end

SlugmaEggMoves:
	db ACID_ARMOR
	db CURSE
	db SMOKESCREEN
	db -1 ; end

SwinubEggMoves:
	db ANCIENTPOWER
	db BITE
	db BODY_SLAM
	db DOUBLE_EDGE
	db FISSURE
	db ROCK_SLIDE
	db TAKE_DOWN
	db -1 ; end

CorsolaEggMoves:
	db AMNESIA
	db BARRIER
	db CONFUSE_RAY
	db CURSE
	db MIST
	db ROCK_SLIDE
	db SAFEGUARD
	db SCREECH
	db -1 ; end

RemoraidEggMoves:
	db AURORA_BEAM
	db FLAIL
	db HAZE
	db OCTAZOOKA
	db SCREECH
	db SUPERSONIC
	db THUNDER_WAVE
	db -1 ; end

DelibirdEggMoves:
	db AURORA_BEAM
	db DESTINY_BOND
	db FUTURE_SIGHT
	db ICE_PUNCH
	db ICY_WIND
	db QUICK_ATTACK
	db RAPID_SPIN
	db SPLASH
	db -1 ; end

MantineEggMoves:
	db AMNESIA
	db HAZE
	db HYDRO_PUMP
	db MIRROR_COAT
	db SLAM
	db SPLASH
	db TWISTER
	db -1 ; end

SkarmoryEggMoves:
	db CURSE
	db DRILL_PECK
	db ENDURE
	db PURSUIT
	db SKY_ATTACK
	db WHIRLWIND
	db -1 ; end

HoundourEggMoves:
	db BEAT_UP
	db COUNTER
	db DESTINY_BOND
	db FIRE_SPIN
	db PURSUIT
	db RAGE
	db REVERSAL
	db -1 ; end

PhanpyEggMoves:
	db ANCIENTPOWER
	db BODY_SLAM
	db FISSURE
	db FOCUS_ENERGY
	db MUD_SLAP
	db WATER_GUN
	db -1 ; end

StantlerEggMoves:
	db BITE
	db DISABLE
	db DOUBLE_KICK
	db LIGHT_SCREEN
	db MEGAHORN
	db RAGE
	db REFLECT
	db SPITE
	db -1 ; end

TyrogueEggMoves:
	db COUNTER
	db ENDURE
	db HI_JUMP_KICK
	db MACH_PUNCH
	db MIND_READER
	db PURSUIT
	db RAPID_SPIN
	db -1 ; end

SmoochumEggMoves:
	db ICE_PUNCH
	db MEDITATE
	db LOVELY_KISS
	db -1 ; end

ElekidEggMoves:
	db BARRIER
	db CROSS_CHOP
	db DYNAMICPUNCH
	db FIRE_PUNCH
	db ICE_PUNCH
	db KARATE_CHOP
	db MEDITATE
	db ROLLING_KICK
	db -1 ; end

MagbyEggMoves:
	db BARRIER
	db CROSS_CHOP
	db DYNAMICPUNCH
	db FOCUS_ENERGY
	db IRON_TAIL
	db KARATE_CHOP
	db MACH_PUNCH
	db MEGA_PUNCH
	db SCREECH
	db THUNDERPUNCH
	db -1 ; end

MiltankEggMoves:
	db DOUBLE_EDGE
	db ENDURE
	db PRESENT
	db REVERSAL
	db SEISMIC_TOSS
	db -1 ; end

LarvitarEggMoves:
	db ANCIENTPOWER
	db CURSE
	db FOCUS_ENERGY
	db IRON_TAIL
	db OUTRAGE
	db PURSUIT
	db STOMP
	db -1 ; end

NoEggMoves:
	db -1 ; end
