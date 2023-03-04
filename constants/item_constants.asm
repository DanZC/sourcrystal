; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; $00
	const MASTER_BALL  ; $01
	const ULTRA_BALL   ; $02
	const BRIGHTPOWDER ; $03
	const GREAT_BALL   ; $04
	const POKE_BALL    ; $05
	const TOWN_MAP     ; $06
	const BICYCLE      ; $07
	const MOON_STONE   ; $08
	const ANTIDOTE     ; $09
	const BURN_HEAL    ; $0A
	const ICE_HEAL     ; $0B
	const AWAKENING    ; $0C
	const PARLYZ_HEAL  ; $0D
	const FULL_RESTORE ; $0E
	const MAX_POTION   ; $0F
	const HYPER_POTION ; $10
	const SUPER_POTION ; $11
	const POTION       ; $12
	const ESCAPE_ROPE  ; $13
	const REPEL        ; $14
	const MAX_ELIXER   ; $15
	const FIRE_STONE   ; $16
	const THUNDERSTONE ; $17
	const WATER_STONE  ; $18
	const LINKING_CORD ; $19
	const HP_UP        ; $1A
	const PROTEIN      ; $1B
	const IRON         ; $1C
	const CARBOS       ; $1D
	const LUCKY_PUNCH  ; $1E
	const CALCIUM      ; $1F
	const RARE_CANDY   ; $20
	const X_ACCURACY   ; $21
	const LEAF_STONE   ; $22
	const METAL_POWDER ; $23
	const NUGGET       ; $24
	const POKE_DOLL    ; $25
	const FULL_HEAL    ; $26
	const REVIVE       ; $27
	const MAX_REVIVE   ; $28
	const GUARD_SPEC   ; $29
	const SUPER_REPEL  ; $2A
	const MAX_REPEL    ; $2B
	const DIRE_HIT     ; $2C
	const ITEM_2D      ; $2D
	const FRESH_WATER  ; $2E
	const SODA_POP     ; $2F
	const LEMONADE     ; $30
	const X_ATTACK     ; $31
	const ITEM_32      ; $32
	const X_DEFEND     ; $33
	const X_SPEED      ; $34
	const X_SPECIAL    ; $35
	const COIN_CASE    ; $36
	const ITEMFINDER   ; $37
	const POKE_FLUTE   ; $38
	const EXP_SHARE    ; $39
	const OLD_ROD      ; $3A
	const GOOD_ROD     ; $3B
	const SILVER_LEAF  ; $3C
	const SUPER_ROD    ; $3D
	const PP_UP        ; $3E
	const ETHER        ; $3F
	const MAX_ETHER    ; $40
	const ELIXER       ; $41
	const RED_SCALE    ; $42
	const SECRETPOTION ; $43
	const S_S_TICKET   ; $44
	const MYSTERY_EGG  ; $45
	const CLEAR_BELL   ; $46
	const SILVER_WING  ; $47
	const MOOMOO_MILK  ; $48
	const QUICK_CLAW   ; $49
	const PECHA_BERRY  ; $4A
	const GOLD_LEAF    ; $4B
	const SOFT_SAND    ; $4C
	const SHARP_BEAK   ; $4D
	const CHERI_BERRY  ; $4E
	const ASPEAR_BERRY ; $4F
	const RAWST_BERRY  ; $50
	const POISON_BARB  ; $51
	const KINGS_ROCK   ; $52
	const PERSIM_BERRY ; $53
	const CHESTO_BERRY ; $54
	const RED_APRICORN ; $55
	const TINYMUSHROOM ; $56
	const BIG_MUSHROOM ; $57
	const SILVERPOWDER ; $58
	const BLU_APRICORN ; $59
	const ITEM_5A      ; $5A
	const AMULET_COIN  ; $5B
	const YLW_APRICORN ; $5C
	const GRN_APRICORN ; $5D
	const CLEANSE_TAG  ; $5E
	const MYSTIC_WATER ; $5F
	const TWISTEDSPOON ; $60
	const WHT_APRICORN ; $61
	const BLACKBELT    ; $62
	const BLK_APRICORN ; $63
	const ITEM_64      ; $64
	const PNK_APRICORN ; $65
	const BLACKGLASSES ; $66
	const SLOWPOKETAIL ; $67
	const SILK_SCARF   ; $68
	const STICK        ; $69
	const SMOKE_BALL   ; $6A
	const NEVERMELTICE ; $6B
	const MAGNET       ; $6C
	const LUM_BERRY    ; $6D
	const PEARL        ; $6E
	const BIG_PEARL    ; $6F
	const EVERSTONE    ; $70
	const SPELL_TAG    ; $71
	const RAGECANDYBAR ; $72
	const GS_BALL      ; $73
	const BLUE_CARD    ; $74
	const MIRACLE_SEED ; $75
	const THICK_CLUB   ; $76
	const FOCUS_BAND   ; $77
	const ITEM_78      ; $78
	const ENERGYPOWDER ; $79
	const ENERGY_ROOT  ; $7A
	const HEAL_POWDER  ; $7B
	const REVIVAL_HERB ; $7C
	const HARD_STONE   ; $7D
	const LUCKY_EGG    ; $7E
	const CARD_KEY     ; $7F
	const MACHINE_PART ; $80
	const EGG_TICKET   ; $81
	const LOST_ITEM    ; $82
	const STARDUST     ; $83
	const STAR_PIECE   ; $84
	const BASEMENT_KEY ; $85
	const PASS         ; $86
	const SAFARI_BALL  ; $87
	const ITEM_88      ; $88
	const ITEM_89      ; $89
	const CHARCOAL     ; $8A
	const BERRY_JUICE  ; $8B
	const SCOPE_LENS   ; $8C
	const ITEM_8D      ; $8D
	const ITEM_8E      ; $8E
	const METAL_COAT   ; $8F
	const DRAGON_FANG  ; $90
	const ITEM_91      ; $91
	const LEFTOVERS    ; $92
	const ITEM_93      ; $93
	const ITEM_94      ; $94
	const ITEM_95      ; $95
	const LEPPA_BERRY  ; $96
	const DRAGON_SCALE ; $97
	const BERSERK_GENE ; $98
	const ITEM_99      ; $99
	const ITEM_9A      ; $9A
	const ITEM_9B      ; $9B
	const SACRED_ASH   ; $9C
	const HEAVY_BALL   ; $9D
	const FLOWER_MAIL  ; $9E
	const LEVEL_BALL   ; $9F
	const LURE_BALL    ; $A0
	const FAST_BALL    ; $A1
	const ITEM_A2      ; $A2
	const LIGHT_BALL   ; $A3
	const FRIEND_BALL  ; $A4
	const MOON_BALL    ; $A5
	const LOVE_BALL    ; $A6
	const NORMAL_BOX   ; $A7
	const GORGEOUS_BOX ; $A8
	const SUN_STONE    ; $A9
	const POLKADOT_BOW ; $AA
	const ITEM_AB      ; $AB
	const UP_GRADE     ; $AC
	const ORAN_BERRY   ; $AD
	const SITRUS_BERRY ; $AE
	const SQUIRTBOTTLE ; $AF
	const ITEM_B0      ; $B0
	const PARK_BALL    ; $B1
	const RAINBOW_WING ; $B2
	const ITEM_B3      ; $B3
	const BRICK_PIECE  ; $B4
	const SURF_MAIL    ; $B5
	const LITEBLUEMAIL ; $B6
	const PORTRAITMAIL ; $B7
	const LOVELY_MAIL  ; $B8
	const EON_MAIL     ; $B9
	const MORPH_MAIL   ; $BA
	const BLUESKY_MAIL ; $BB
	const MUSIC_MAIL   ; $BC
	const MIRAGE_MAIL  ; $BD
	const ITEM_BE      ; $BE

MACRO add_tm
if !DEF(TM01)
TM01 = const_value
	enum_start 1
endc
	define _\@_1, "TM_\1"
	const _\@_1
	enum \1_TMNUM
ENDM

; see data/moves/tmhm_moves.asm for moves
	add_tm DYNAMICPUNCH ; bf
	add_tm HEADBUTT     ; c0
	add_tm CURSE        ; c1
	add_tm ROLLOUT      ; c2
	const ITEM_C3       ; c3
	add_tm ROAR         ; c4
	add_tm TOXIC        ; c5
	add_tm ZAP_CANNON   ; c6
	add_tm ROCK_SMASH   ; c7
	add_tm PSYCH_UP     ; c8
	add_tm HIDDEN_POWER ; c9
	add_tm SUNNY_DAY    ; ca
	add_tm SWEET_SCENT  ; cb
	add_tm SNORE        ; cc
	add_tm BLIZZARD     ; cd
	add_tm HYPER_BEAM   ; ce
	add_tm ICY_WIND     ; cf
	add_tm PROTECT      ; d0
	add_tm RAIN_DANCE   ; d1
	add_tm GIGA_DRAIN   ; d2
	add_tm ENDURE       ; d3
	add_tm FRUSTRATION  ; d4
	add_tm SOLARBEAM    ; d5
	add_tm IRON_TAIL    ; d6
	add_tm DRAGONBREATH ; d7
	add_tm THUNDER      ; d8
	add_tm EARTHQUAKE   ; d9
	add_tm RETURN       ; da
	add_tm DIG          ; db
	const ITEM_DC       ; dc
	add_tm PSYCHIC_M    ; dd
	add_tm SHADOW_BALL  ; de
	add_tm MUD_SLAP     ; df
	add_tm DOUBLE_TEAM  ; e0
	add_tm ICE_PUNCH    ; e1
	add_tm SWAGGER      ; e2
	add_tm SLEEP_TALK   ; e3
	add_tm SLUDGE_BOMB  ; e4
	add_tm SANDSTORM    ; e5
	add_tm FIRE_BLAST   ; e6
	add_tm SWIFT        ; e7
	add_tm DEFENSE_CURL ; e8
	add_tm THUNDERPUNCH ; e9
	add_tm DREAM_EATER  ; ea
	add_tm DETECT       ; eb
	add_tm REST         ; ec
	add_tm ATTRACT      ; ed
	add_tm THIEF        ; ee
	add_tm STEEL_WING   ; ef
	add_tm FIRE_PUNCH   ; f0
	add_tm FURY_CUTTER  ; f1
	add_tm NIGHTMARE    ; f2
NUM_TMS = const_value - TM01 - 2 ; discount ITEM_C3 and ITEM_DC

MACRO add_hm
if !DEF(HM01)
HM01 = const_value
endc
	define _\@_1, "HM_\1"
	const _\@_1
	enum \1_TMNUM
ENDM

	add_hm CUT          ; f3
	add_hm FLY          ; f4
	add_hm SURF         ; f5
	add_hm STRENGTH     ; f6
	add_hm FLASH        ; f7
	add_hm WHIRLPOOL    ; f8
	add_hm WATERFALL    ; f9
NUM_HMS = const_value - HM01

MACRO add_mt
	enum \1_TMNUM
ENDM

	add_mt FLAMETHROWER
	add_mt THUNDERBOLT
	add_mt ICE_BEAM
NUM_TM_HM_TUTOR = __enum__ + -1

	const ITEM_FA       ; fa

USE_SCRIPT_VAR EQU $00
ITEM_FROM_MEM  EQU $ff

; leftovers from red
MOON_STONE_RED EQU $0a ; BURN_HEAL
FULL_HEAL_RED  EQU $34 ; X_SPEED
