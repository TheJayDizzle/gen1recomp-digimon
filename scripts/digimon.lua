-- Signature Moves: OGREMON: PUMMEL_WHACK, LEOMON: FIST_OF_THE_BEAST_KING, ANGEMON: HAND_OF_FATE, AIRDRAMON: SPINNING_NEEDLE, SNIMON: TWIN_SICKLES, FRIGIMON: SUB_ZERO_ICE_PUNCH, 
-- Signature Moves: BIYOMON: SPIRAL_TWISTER, BIRDRAMON: METEOR_WING, SALAMON: PUPPY_HOWLING, GATOMON: LIGHTNING_PAW, PALMON: POISON_IVY, TOGEMON: NEEDLE_SPRAY, AGUMON: PEPPER_BREATH
-- Signature Moves: GREYMON: MEGA_FLAME, GOMAMON: MARCHING_FISHES, IKKAKUMON: HARPOON_TORPEDO, WORMMON: STICKY_NET, STINGMON: SPIKING_STRIKE, KUNEMON: ELECTRIC_THREAD, FLYMON: BROWN_STINGERS
-- Signature Moves: GABUMON: BLUE_BLASTER, GARURUMON: FOX_FIRE, TENTOMON: SUPER_SHOCKER, KABUTERIMON: ELECTRO_SHOCKER, GESOMON: DEVIL_BASHING, GOBURIMON: GOBLIN_STRIKE, KUWAGAMON: SCISSOR_CLAW
-- Signature Moves: BETAMON: ELECTRIC_SHOCK, SEADRAMON: ICE_BLAST, DEMIDEVIMON: DEMI_DARTS, DEVIMON: DEATH_CLAW


-- DigiDex

-- TANEMON 1
-- PALMON 2
-- TOGEMON 3
-- KOROMON 4
-- AGUMON 5
-- GREYMON 6
-- BUKAMON 7
-- GOMAMON 8
-- IKKAKUMON 9
-- MINOMON 10
-- WORMMON 11
-- STINGMON 12
-- KUNEMON 13
-- FLYMON 14
-- TSUNOMON 15
-- GABUMON 16
-- GARURUMON 17
-- MOTIMON 18 
-- TENTOMON 19
-- KABUTERIMON 20
-- KUWAGAMON 21
-- GOBURIMON 22
-- OGREMON 23
-- TOKOMON 24 
-- PATAMON 25
-- ANGEMON 26
-- AIRDRAMON 27
-- SNIMON 28
-- GESOMON 29 
-- FRIGIMON 30
-- YOKOMON 31
-- BIYOMON 32
-- BIRDRAMON 33
-- NYAOROMON 34
-- SALAMON 35
-- GATOMON 36
-- LEOMON 37
-- BETAMON 38
-- SEADRAMON 39
-- PAGUMON 40
-- DEMIDEVIMON 41
-- DEVIMON 42
-- GOTSUMON 43
-- MONOCHROMON 44
-- UPAMON 45
-- ARMADILLOMON 45
-- MOSHROOMON 47
-- WOODMON 48
-- VEGIEMON 49
-- GAZIMON 50
-- CHUUMON 51
-- SUKAMON 52
-- MUCHOMON 53
-- KOKATIROMON 54
-- KAPURIMON 55
-- HAGURUMON 56
-- GUARDROMON 57
-- GIZAMON 58
-- LALAMON 59
-- SUNFLOWMON 60
-- FLORAMON 61
-- KIWIMON 62
-- OTAMAMON 63
-- GEKOMON 64
-- IMPMON 65
-- WIZARDMON 66
-- SORCERMON 67
-- RAREMON 68
-- MOJYAMON 69
-- SUNARIZAMON 70
-- TORTAMON 71
-- DRIMOGEMON 72
-- VEEMON 73
-- HAWKMON 74
-- NUMEMON 75
-- BAKEMON 76
-- RENAMON 77
-- KYUBIMON 78
-- GOLEMON 79
-- ANKYLOMON 80
-- DIGMON 81
-- LIGHDRAMON 82
-- FLAMEDRAMON 83
-- KOKUWAMON 84
-- ELECMON 85
-- BEARMON 86
-- GRIZZLYMON 87
-- CANDLEMON 88
-- MERAMIN 89
-- SOULMON 90
-- PUNIMON 91
-- BOTAMON 92
-- POYOMON 93

return function(mod)

-- The 0.1.92 species schema requires an evolutions list. Supply an empty one
-- to every Digimon registration so the vanilla level-up evolution system has
-- no routes; menu-driven routes are declared in digivolution.lua instead.
local pokemonRegistry = mod.content.pokemon
local registerPokemon = pokemonRegistry.register
pokemonRegistry.register = function(self, id, definition, owner, replace)
  definition.evolutions = {}
  return registerPokemon(self, id, definition, owner, replace)
end

mod.content.pokemon:patch("BULBASAUR", {dex = 152})
mod.content.pokemon:patch("IVYSAUR", {dex = 153})
mod.content.pokemon:patch("VENUSAUR", {dex = 154})
mod.content.pokemon:patch("CHARMANDER", {dex = 155})
mod.content.pokemon:patch("CHARMELEON", {dex = 156})
mod.content.pokemon:patch("CHARIZARD", {dex = 157})
mod.content.pokemon:patch("SQUIRTLE", {dex = 158})
mod.content.pokemon:patch("WARTORTLE", {dex = 159})
mod.content.pokemon:patch("BLASTOISE", {dex = 160})
mod.content.pokemon:patch("CATERPIE", {dex = 161})
mod.content.pokemon:patch("METAPOD", {dex = 162})
mod.content.pokemon:patch("BUTTERFREE", {dex = 163})
mod.content.pokemon:patch("WEEDLE", {dex = 164})
mod.content.pokemon:patch("KAKUNA", {dex = 165})
mod.content.pokemon:patch("BEEDRILL", {dex = 166})
mod.content.pokemon:patch("PIDGEY", {dex = 167})
mod.content.pokemon:patch("PIDGEOTTO", {dex = 168})
mod.content.pokemon:patch("PIDGEOT", {dex = 169})
mod.content.pokemon:patch("RATTATA", {dex = 170})
mod.content.pokemon:patch("RATICATE", {dex = 171})
mod.content.pokemon:patch("SPEAROW", {dex = 172})
mod.content.pokemon:patch("FEAROW", {dex = 173})
mod.content.pokemon:patch("EKANS", {dex = 174})
mod.content.pokemon:patch("ARBOK", {dex = 175})
mod.content.pokemon:patch("PIKACHU", {dex = 176})
mod.content.pokemon:patch("RAICHU", {dex = 177})
mod.content.pokemon:patch("SANDSHREW", {dex = 178})
mod.content.pokemon:patch("SANDSLASH", {dex = 179})
mod.content.pokemon:patch("NIDORAN_F", {dex = 180})
mod.content.pokemon:patch("NIDORINA", {dex = 181})
mod.content.pokemon:patch("NIDOQUEEN", {dex = 182})
mod.content.pokemon:patch("NIDORAN_M", {dex = 183})
mod.content.pokemon:patch("NIDORINO", {dex = 184})
mod.content.pokemon:patch("NIDOKING", {dex = 185})
mod.content.pokemon:patch("CLEFAIRY", {dex = 186})
mod.content.pokemon:patch("CLEFABLE", {dex = 187})
mod.content.pokemon:patch("VULPIX", {dex = 188})
mod.content.pokemon:patch("NINETALES", {dex = 189}) 
mod.content.pokemon:patch("JIGGLYPUFF", {dex = 190})
mod.content.pokemon:patch("WIGGLYTUFF", {dex = 191})
mod.content.pokemon:patch("ZUBAT", {dex = 192})
mod.content.pokemon:patch("GOLBAT", {dex = 193})
mod.content.pokemon:patch("ODDISH", {dex = 194})
mod.content.pokemon:patch("GLOOM", {dex = 195})
mod.content.pokemon:patch("VILEPLUME", {dex = 196})
mod.content.pokemon:patch("PARAS", {dex = 197})
mod.content.pokemon:patch("PARASECT", {dex = 198})
mod.content.pokemon:patch("VENONAT", {dex = 199})
mod.content.pokemon:patch("VENOMOTH", {dex = 200})
mod.content.pokemon:patch("DIGLETT", {dex = 201})
mod.content.pokemon:patch("DUGTRIO", {dex = 202})
mod.content.pokemon:patch("MEOWTH", {dex = 203})
mod.content.pokemon:patch("PERSIAN", {dex = 204})
mod.content.pokemon:patch("PSYDUCK", {dex = 210})
mod.content.pokemon:patch("GOLDUCK", {dex = 211})
mod.content.pokemon:patch("MANKEY", {dex = 212})
mod.content.pokemon:patch("PRIMEAPE", {dex = 213})
mod.content.pokemon:patch("GROWLITHE", {dex = 214}) 
mod.content.pokemon:patch("ARCANINE", {dex = 210})
mod.content.pokemon:patch("POLIWAG", {dex = 211})
mod.content.pokemon:patch("POLIWHIRL", {dex = 212})
mod.content.pokemon:patch("POLIWRATH", {dex = 213})
mod.content.pokemon:patch("ABRA", {dex = 214}) -- 63
mod.content.pokemon:patch("KADABRA", {dex = 215})
mod.content.pokemon:patch("ALAKAZAM", {dex = 216})
mod.content.pokemon:patch("MACHOP", {dex = 217}) 
mod.content.pokemon:patch("MACHOKE", {dex = 218})
mod.content.pokemon:patch("MACHAMP", {dex = 219})
mod.content.pokemon:patch("BELLSPROUT", {dex = 220})
mod.content.pokemon:patch("WEEPINBELL", {dex = 221})
mod.content.pokemon:patch("VICTREEBEL", {dex = 222}) -- 71
mod.content.pokemon:patch("TENTACOOL", {dex = 223})
mod.content.pokemon:patch("TENTACRUEL", {dex = 224})
mod.content.pokemon:patch("GEODUDE", {dex = 225}) 
mod.content.pokemon:patch("GRAVELER", {dex = 226})
mod.content.pokemon:patch("GOLEM", {dex = 227})
mod.content.pokemon:patch("PONYTA", {dex = 228})
mod.content.pokemon:patch("RAPIDASH", {dex = 229})
mod.content.pokemon:patch("SLOWPOKE", {dex = 230}) -- 79
mod.content.pokemon:patch("SLOWBRO", {dex = 231})
mod.content.pokemon:patch("MAGNEMITE", {dex = 232})
mod.content.pokemon:patch("MAGNETON", {dex = 233})
mod.content.pokemon:patch("FARFETCHD", {dex = 234})
mod.content.pokemon:patch("DODUO", {dex = 235}) 
mod.content.pokemon:patch("DODRIO", {dex = 236})
mod.content.pokemon:patch("SEEL", {dex = 237})
mod.content.pokemon:patch("DEWGONG", {dex = 238})
mod.content.pokemon:patch("GRIMER", {dex = 239})
mod.content.pokemon:patch("MUK", {dex = 240})
mod.content.pokemon:patch("SHELLDER", {dex = 241})
mod.content.pokemon:patch("CLOYSTER", {dex = 242}) -- 71
mod.content.pokemon:patch("GASTLY", {dex = 243})
mod.content.pokemon:patch("HAUNTER", {dex = 244})
mod.content.pokemon:patch("GENGAR", {dex = 245}) 
mod.content.pokemon:patch("ONIX", {dex = 246})
mod.content.pokemon:patch("DROWZEE", {dex = 247})
mod.content.pokemon:patch("HYPNO", {dex = 248})
mod.content.pokemon:patch("KRABBY", {dex = 249})
mod.content.pokemon:patch("KINGLER", {dex = 250}) -- 99






-- Tanemon 1

TaneDex = "A tiny sprout that\nburies itself in\nsoil when danger\napproaches."
mod.content.text:register("_TanemonDexEntry", TaneDex)
mod.content.pokemon:register("TANEMON", {
  id = "TANEMON", name = "TANEMON",
  dex = 1,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "IN-TRAINING",
    weight = 2,
    text = "_TanemonDexEntry"
  },

  types = { "GRASS" },

  baseStats = {
    hp = 50,
    attack = 45,
    defense = 45,
    speed = 40,
    special = 55
  },

  catchRate = 180,
  baseExp = 50,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "GROWL",
    "BUBBLE"
  },

  learnset = {
    { level = 9,  move = "QUICK_ATTACK" },
    { level = 13, move = "LEER" },
    { level = 15, move = "ABSORB" },
    { level = 21, move = "BUBBLEBEAM" },
  },

  tmhm = {
    "TOXIC",
    "BUBBLEBEAM",
    "MEGA_DRAIN",
    "DOUBLE_TEAM",
    "REST",
    "SUBSTITUTE",
  },
      spriteFront = mod.assets:path("assets/tanemon.png"),
                             spriteBack = mod.assets:path("assets/tanemonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/tanemons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Palmon 2

PalDex = "A plant Digimon\nwith a flower on\nits head. Its vines\nare quick and strong."
mod.content.text:register("_PalmonDexEntry", PalDex)
mod.content.pokemon:register("PALMON", {
  id = "PALMON", name = "PALMON",
  dex = 2,

  dexEntry = {
    heightFt = 3,
    heightIn = 3,
    kind = "ROOKIE",
    weight = 22,
    text = "_PalmonDexEntry"
  },

  types = { "GRASS", "POISON" },

  baseStats = {
    hp = 65,
    attack = 60,
    defense = 65,
    speed = 50,
    special = 75
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "VINE_WHIP",
    "GROWL"
  },

  learnset = {
    { level = 6,  move = "POISONPOWDER" },
    { level = 10, move = "ABSORB" },
    { level = 14, move = "STUN_SPORE" },
    { level = 18, move = "GROWTH" },
    { level = 26, move = "ACID" },
    { level = 32, move = "MEGA_DRAIN" },
    { level = 38, move = "SLEEP_POWDER" },
    { level = 45, move = "RAZOR_LEAF" },
    { level = 52, move = "BODY_SLAM" },
    { level = 59, move = "SOLARBEAM" },
  },

  tmhm = {
    "SWORDS_DANCE",
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MEGA_DRAIN",
    "SOLARBEAM",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SUBSTITUTE",
    "CUT",
  },
      spriteFront = mod.assets:path("assets/palmon.png"),
                             spriteBack = mod.assets:path("assets/palmonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/palmons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Togemon 3

TogeDex = "Its thorny body\nhides great strength.\nIt punches wildly\nwhen angered."
mod.content.text:register("_TogemonDexEntry", TogeDex)
mod.content.pokemon:register("TOGEMON", {
  id = "TOGEMON", name = "TOGEMON",
  dex = 3,

  dexEntry = {
    heightFt = 8,
    heightIn = 2,
    kind = "CHAMPION",
    weight = 220,
    text = "_TogemonDexEntry"
  },

  types = { "GRASS", "FIGHTING" },

  baseStats = {
    hp = 95,
    attack = 105,
    defense = 90,
    speed = 45,
    special = 95
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "VINE_WHIP",
    "MEGA_PUNCH"
  },

  learnset = {
    { level = 7,  move = "POISON_STING" },
    { level = 12, move = "GROWTH" },
    { level = 17, move = "DOUBLE_KICK" },
    { level = 22, move = "PIN_MISSILE" },
    { level = 28, move = "BODY_SLAM" },
    { level = 34, move = "RAZOR_LEAF" },
    { level = 40, move = "SEISMIC_TOSS" },
    { level = 46, move = "MEGA_DRAIN" },
    { level = 52, move = "SUBMISSION" },
    { level = 59, move = "SWORDS_DANCE" },
    { level = 66, move = "SOLARBEAM" },
  },

  tmhm = {
    "MEGA_PUNCH",
    "SWORDS_DANCE",
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MEGA_DRAIN",
    "SOLARBEAM",
    "MEGA_KICK",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SUBMISSION",
    "SEISMIC_TOSS",
    "COUNTER",
    "SUBSTITUTE",
    "CUT",
    "STRENGTH",
  },

      spriteFront = mod.assets:path("assets/togemon.png"),
                             spriteBack = mod.assets:path("assets/togemonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/togemons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Koromon 4

KoroDex = "A tiny Digimon\nwith sharp teeth and\na fiery, fearless\nspirit."
mod.content.text:register("_KoromonDexEntry", KoroDex)
mod.content.pokemon:register("KOROMON", {
  id = "KOROMON", name = "KOROMON",
  dex = 4,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "IN-TRAINING",
    weight = 2,
    text = "_KoromonDexEntry"
  },

  types = { "NORMAL" },

  baseStats = {
    hp = 48,
    attack = 55,
    defense = 42,
    speed = 48,
    special = 37
  },

  catchRate = 180,
  baseExp = 50,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "GROWL",
    "BUBBLE"
  },

  learnset = {
    { level = 9,  move = "QUICK_ATTACK" },
    { level = 13, move = "LEER" },
    { level = 15, move = "BITE" },
    { level = 21, move = "BUBBLEBEAM" },
  },

  tmhm = {
    "BODY_SLAM",
    "BUBBLEBEAM",
    "RAGE",
    "DOUBLE_TEAM",
    "REST",
    "SUBSTITUTE",
  },
  spriteFront = mod.assets:path("assets/koromon.png"),
  spriteBack = mod.assets:path("assets/koromonb.png"),
        icon = {
        image = mod.assets:path("assets/icons/koromons.png"),
        frames = 1,
      },
  frontSize = 1,
  trueColor = true,
})

-- Agumon 5

AguDex = "Fearless and bold,\nit spits hot fire\nfrom its mouth when\nthreatened."
mod.content.text:register("_AgumonDexEntry", AguDex)
mod.content.pokemon:register("AGUMON", {
  id = "AGUMON", name = "AGUMON",
  dex = 5,

  dexEntry = {
    heightFt = 3,
    heightIn = 3,
    kind = "ROOKIE",
    weight = 33,
    text = "_AgumonDexEntry"
  },

  types = { "FIRE" },

  baseStats = {
    hp = 65,
    attack = 75,
    defense = 60,
    speed = 60,
    special = 65
  },

  catchRate = 140,
  baseExp = 142,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "SCRATCH",
    "GROWL"
  },

  learnset = {
    { level = 6,  move = "EMBER" },
    { level = 10, move = "BITE" },
    { level = 14, move = "LEER" },
    { level = 18, move = "RAGE" },
    { level = 26, move = "HEADBUTT" },
    { level = 32, move = "SLASH" },
    { level = 38, move = "FIRE_PUNCH" },
    { level = 45, move = "TAKE_DOWN" },
    { level = 52, move = "FLAMETHROWER" },
    { level = 60, move = "FIRE_BLAST" },
  },

  tmhm = {
    "MEGA_PUNCH",
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "FIRE_BLAST",
    "SEISMIC_TOSS",
    "SWIFT",
    "SUBSTITUTE",
    "STRENGTH",
  },
      spriteFront = mod.assets:path("assets/agumon.png"),
      spriteBack = mod.assets:path("assets/agumonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/agumons.png"),
        frames = 1,
      },
      frontSize = 1,
      --battleScaleFront = 0.7,
      trueColor = true,
})

-- Greymon 6

GreyDex = "Its hard skull and\nhuge body make it\na fearsome and\npowerful fighter."
mod.content.text:register("_GreymonDexEntry", GreyDex)
mod.content.pokemon:register("GREYMON", {
  id = "GREYMON", name = "GREYMON",
  dex = 6,

  dexEntry = {
    heightFt = 15,
    heightIn = 0,
    kind = "CHAMPION",
    weight = 880,
    text = "_GreymonDexEntry"
  },

  types = { "FIRE", "GROUND" },

  baseStats = {
    hp = 90,
    attack = 115,
    defense = 90,
    speed = 60,
    special = 85
  },

  catchRate = 60,
  baseExp = 190,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "STOMP",
    "EMBER"
  },

  learnset = {
    { level = 7,  move = "LEER" },
    { level = 12, move = "BITE" },
    { level = 17, move = "HEADBUTT" },
    { level = 22, move = "RAGE" },
    { level = 28, move = "DIG" },
    { level = 34, move = "SLASH" },
    { level = 40, move = "TAKE_DOWN" },
    { level = 46, move = "EARTHQUAKE" },
    { level = 53, move = "FLAMETHROWER" },
    { level = 60, move = "THRASH" },
  },

  tmhm = {
    "MEGA_PUNCH",
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "DIG",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "FIRE_BLAST",
    "REST",
    "ROCK_SLIDE",
    "SEISMIC_TOSS",
    "SUBSTITUTE",
    "STRENGTH",
  },

      spriteFront = mod.assets:path("assets/greymon.png"),
      spriteBack = mod.assets:path("assets/greymonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/greymons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Bukamon 7

BukaDex = "A playful swimmer\nthat moves quickly\nthrough even rough\nwater."
mod.content.text:register("_BukamonDexEntry", BukaDex)
mod.content.pokemon:register("BUKAMON", {
  id = "BUKAMON", name = "BUKAMON",
  dex = 7,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "IN-TRAINING",
    weight = 3,
    text = "_BukamonDexEntry"
  },

  types = { "WATER" },

  baseStats = {
    hp = 50,
    attack = 42,
    defense = 45,
    speed = 48,
    special = 45
  },

  catchRate = 180,
  baseExp = 50,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "GROWL",
    "BUBBLE"
  },

  learnset = {
    { level = 9,  move = "QUICK_ATTACK" },
    { level = 13, move = "LEER" },
    { level = 15, move = "WATER_GUN" },
    { level = 21, move = "BUBBLEBEAM" },
  },

  tmhm = {
    "TOXIC",
    "BUBBLEBEAM",
    "WATER_GUN",
    "ICE_BEAM",
    "DOUBLE_TEAM",
    "REST",
    "SUBSTITUTE",
    "SURF",
  },
  spriteFront = mod.assets:path("assets/bukamon.png"),
  spriteBack = mod.assets:path("assets/bukamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/bukamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Gomamon 8

GomaDex = "Its thick fur keeps\nit warm while\nswimming through\nfreezing seas."
mod.content.text:register("_GomamonDexEntry", GomaDex)
mod.content.pokemon:register("GOMAMON", {
  id = "GOMAMON", name = "GOMAMON",
  dex = 8,

  dexEntry = {
    heightFt = 3,
    heightIn = 0,
    kind = "ROOKIE",
    weight = 33,
    text = "_GomamonDexEntry"
  },

  types = { "WATER", "ICE" },

  baseStats = {
    hp = 70,
    attack = 65,
    defense = 65,
    speed = 55,
    special = 70
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "WATER_GUN",
    "GROWL"
  },

  learnset = {
    { level = 6,  move = "TACKLE" },
    { level = 10, move = "BITE" },
    { level = 14, move = "MIST" },
    { level = 18, move = "HEADBUTT" },
    { level = 26, move = "REFLECT" },
    { level = 32, move = "BODY_SLAM" },
    { level = 38, move = "BUBBLEBEAM" },
    { level = 45, move = "ICE_BEAM" },
    { level = 52, move = "TAKE_DOWN" },
    { level = 59, move = "HYDRO_PUMP" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "BUBBLEBEAM",
    "WATER_GUN",
    "ICE_BEAM",
    "BLIZZARD",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "SURF",
    "STRENGTH",
  },
      spriteFront = mod.assets:path("assets/gomamon.png"),
      spriteBack = mod.assets:path("assets/gomamonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/gomamons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Ikkakumon 9

IkkakuDex = "Its massive horn\ncan smash through\nthick ice and solid\nrock."
mod.content.text:register("_IkkakumonDexEntry", IkkakuDex)
mod.content.pokemon:register("IKKAKUMON", {
  id = "IKKAKUMON", name = "IKKAKUMON",
  dex = 9,

  dexEntry = {
    heightFt = 8,
    heightIn = 2,
    kind = "CHAMPION",
    weight = 650,
    text = "_IkkakumonDexEntry"
  },

  types = { "WATER", "ICE" },

  baseStats = {
    hp = 110,
    attack = 105,
    defense = 95,
    speed = 40,
    special = 80
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "WATER_GUN",
    "HORN_ATTACK"
  },

  learnset = {
    { level = 7,  move = "GROWL" },
    { level = 12, move = "HEADBUTT" },
    { level = 17, move = "MIST" },
    { level = 22, move = "STOMP" },
    { level = 28, move = "AURORA_BEAM" },
    { level = 34, move = "BODY_SLAM" },
    { level = 40, move = "TAKE_DOWN" },
    { level = 46, move = "ICE_BEAM" },
    { level = 52, move = "HYDRO_PUMP" },
    { level = 59, move = "SKULL_BASH" },
    { level = 66, move = "HORN_DRILL" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "BUBBLEBEAM",
    "WATER_GUN",
    "ICE_BEAM",
    "BLIZZARD",
    "HYPER_BEAM",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SKULL_BASH",
    "SUBSTITUTE",
    "SURF",
    "STRENGTH",
  },

      spriteFront = mod.assets:path("assets/ikkakumon.png"),
      spriteBack = mod.assets:path("assets/ikkakumonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/ikkakumons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Minomon 10

MinoDex = "It hides its small\nbody inside a tough\nleaf cloak for\nprotection."
mod.content.text:register("_MinomonDexEntry", MinoDex)
mod.content.pokemon:register("MINOMON", {
  id = "MINOMON", name = "MINOMON",
  dex = 10,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "IN-TRAINING",
    weight = 4,
    text = "_MinomonDexEntry"
  },

  types = { "BUG" },

  baseStats = {
    hp = 45,
    attack = 35,
    defense = 50,
    speed = 40,
    special = 30
  },

  catchRate = 255,
  baseExp = 45,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "TACKLE",
    "STRING_SHOT"
  },

  learnset = {
    { level = 7,  move = "HARDEN" },
    { level = 12, move = "POISON_STING" },
    { level = 18, move = "BIDE" },
    { level = 25, move = "PIN_MISSILE" },
  },

  tmhm = {
    "TOXIC",
    "BIDE",
    "REST",
    "SUBSTITUTE",
  },
      spriteFront = mod.assets:path("assets/minomon.png"),
      spriteBack = mod.assets:path("assets/minomonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/minomons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Wormmon 11

WormDex = "A timid insect that\ncan cling tightly\nto almost any\nsurface."
mod.content.text:register("_WormmonDexEntry", WormDex)
mod.content.pokemon:register("WORMMON", {
  id = "WORMMON", name = "WORMMON",
  dex = 11,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 13,
    text = "_WormmonDexEntry"
  },

  types = { "BUG" },

  baseStats = {
    hp = 60,
    attack = 55,
    defense = 65,
    speed = 60,
    special = 70
  },

  catchRate = 160,
  baseExp = 130,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "TACKLE",
    "STRING_SHOT"
  },

    learnset = {
      { level = 6,  move = "HARDEN" },
      { level = 10, move = "POISON_STING" },
      { level = 14, move = "SUPERSONIC" },
      { level = 18, move = "BIDE" },
      { level = 27, move = "PIN_MISSILE" },
      { level = 33, move = "LEECH_LIFE" },
      { level = 39, move = "DOUBLE_TEAM" },
      { level = 46, move = "AGILITY" },
    },

  tmhm = {
    "TOXIC",
    "MEGA_DRAIN",
    "SOLARBEAM",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "PSYCHIC_M",
    "SUBSTITUTE",
  },
      spriteFront = mod.assets:path("assets/wormmon.png"),
      spriteBack = mod.assets:path("assets/wormmonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/wormmons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Stingmon 12

StingDex = "A swift insect\nfighter armed with\nsharp spikes on\nboth arms."
mod.content.text:register("_StingmonDexEntry", StingDex)
mod.content.pokemon:register("STINGMON", {
  id = "STINGMON", name = "STINGMON",
  dex = 12,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 132,
    text = "_StingmonDexEntry"
  },

  types = { "BUG", "FIGHTING" },

  baseStats = {
    hp = 75,
    attack = 110,
    defense = 70,
    speed = 110,
    special = 65
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "QUICK_ATTACK",
    "KARATE_CHOP"
  },

  learnset = {
    { level = 7,  move = "DOUBLE_KICK" },
    { level = 12, move = "FOCUS_ENERGY" },
    { level = 17, move = "FURY_ATTACK" },
    { level = 22, move = "TWINEEDLE" },
    { level = 28, move = "AGILITY" },
    { level = 34, move = "SEISMIC_TOSS" },
    { level = 40, move = "PIN_MISSILE" },
    { level = 46, move = "SUBMISSION" },
    { level = 53, move = "COUNTER" },
    { level = 60, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "MEGA_PUNCH",
    "SWORDS_DANCE",
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "MEGA_KICK",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBMISSION",
    "SEISMIC_TOSS",
    "COUNTER",
    "SWIFT",
    "SUBSTITUTE",
    "CUT",
    "STRENGTH",
  },

      spriteFront = mod.assets:path("assets/stingmon.png"),
      spriteBack = mod.assets:path("assets/stingmonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/stingmons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Kunemon 13

KuneDex = "A small insect\nwhose feeler can\nrelease a jolt of\nelectricity."
mod.content.text:register("_KunemonDexEntry", KuneDex)
mod.content.pokemon:register("KUNEMON", {
  id = "KUNEMON", name = "KUNEMON",
  dex = 13,

  dexEntry = {
    heightFt = 2,
    heightIn = 0,
    kind = "ROOKIE",
    weight = 15,
    text = "_KunemonDexEntry"
  },

  types = { "BUG", "ELECTRIC" },

  baseStats = {
    hp = 55,
    attack = 50,
    defense = 50,
    speed = 70,
    special = 65
  },

  catchRate = 200,
  baseExp = 105,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "TACKLE",
    "STRING_SHOT"
  },

  learnset = {
    { level = 6,  move = "THUNDERSHOCK" },
    { level = 10, move = "POISON_STING" },
    { level = 14, move = "SUPERSONIC" },
    { level = 18, move = "HARDEN" },
    { level = 26, move = "THUNDER_WAVE" },
    { level = 32, move = "PIN_MISSILE" },
    { level = 39, move = "AGILITY" },
    { level = 46, move = "THUNDERBOLT" },
    { level = 54, move = "SCREECH" },
    { level = 62, move = "THUNDER" },
  },

  tmhm = {
    "TOXIC",
    "THUNDERBOLT",
    "THUNDER",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "THUNDER_WAVE",
    "SWIFT",
    "SUBSTITUTE",
  },
      spriteFront = mod.assets:path("assets/kunemon.png"),
      spriteBack = mod.assets:path("assets/kunemonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/kunemons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Flymon 14

FlyDex = "It attacks from\nabove with great\nspeed and a deadly\nstinger."
mod.content.text:register("_FlymonDexEntry", FlyDex)
mod.content.pokemon:register("FLYMON", {
  id = "FLYMON", name = "FLYMON",
  dex = 14,

  dexEntry = {
    heightFt = 6,
    heightIn = 0,
    kind = "CHAMPION",
    weight = 88,
    text = "_FlymonDexEntry"
  },

  types = { "BUG", "FLYING" },

  baseStats = {
    hp = 70,
    attack = 90,
    defense = 65,
    speed = 110,
    special = 85
  },

  catchRate = 70,
  baseExp = 175,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "POISON_STING",
    "GUST"
  },

  learnset = {
    { level = 7,  move = "QUICK_ATTACK" },
    { level = 12, move = "SUPERSONIC" },
    { level = 17, move = "FURY_ATTACK" },
    { level = 22, move = "WING_ATTACK" },
    { level = 28, move = "TOXIC" },
    { level = 34, move = "AGILITY" },
    { level = 40, move = "PIN_MISSILE" },
    { level = 46, move = "DOUBLE_TEAM" },
    { level = 53, move = "TAKE_DOWN" },
    { level = 60, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "RAZOR_WIND",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "FLY",
  },


      spriteFront = mod.assets:path("assets/flymon.png"),
                             spriteBack = mod.assets:path("assets/flymonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/flymons.png"),
                               frames = 1,
                             },
      frontSize = 1,
      trueColor = true,
})

-- Tsunomon 15

TsunoDex = "Its single horn is\nalready very hard\ndespite its tiny\nbody."
mod.content.text:register("_TsunomonDexEntry", TsunoDex)
mod.content.pokemon:register("TSUNOMON", {
  id = "TSUNOMON", name = "TSUNOMON",
  dex = 15,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "IN-TRAINING",
    weight = 3,
    text = "_TsunomonDexEntry"
  },

  types = { "ICE" },

  baseStats = {
    hp = 48,
    attack = 50,
    defense = 45,
    speed = 42,
    special = 45
  },

  catchRate = 180,
  baseExp = 50,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "GROWL",
    "BUBBLE"
  },

  learnset = {
    { level = 9,  move = "QUICK_ATTACK" },
    { level = 13, move = "LEER" },
    { level = 15, move = "HORN_ATTACK" },
    { level = 21, move = "BUBBLEBEAM" },
  },

  tmhm = {
    "BODY_SLAM",
    "BUBBLEBEAM",
    "DOUBLE_TEAM",
    "REST",
    "SUBSTITUTE",
  },
      spriteFront = mod.assets:path("assets/tsunomon.png"),
      spriteBack = mod.assets:path("assets/tsunomonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/tsunomons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Gabumon 16

GabuDex = "A shy Digimon that\nwears a fur pelt to\nhide its timid\nnature."
mod.content.text:register("_GabumonDexEntry", GabuDex)
mod.content.pokemon:register("GABUMON", {
  id = "GABUMON", name = "GABUMON",
  dex = 16,

  dexEntry = {
    heightFt = 3,
    heightIn = 0,
    kind = "ROOKIE",
    weight = 33,
    text = "_GabumonDexEntry"
  },

  types = { "ICE" },

  baseStats = {
    hp = 60,
    attack = 65,
    defense = 65,
    speed = 60,
    special = 75
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "SCRATCH",
    "GROWL"
  },

  learnset = {
    { level = 6,  move = "BITE" },
    { level = 10, move = "LEER" },
    { level = 14, move = "POWDER_SNOW" },
    { level = 18, move = "FURY_SWIPES" },
    { level = 22, move = "MIST" },
    { level = 26, move = "AURORA_BEAM" },
    { level = 32, move = "HEADBUTT" },
    { level = 38, move = "CONFUSE_RAY" },
    { level = 45, move = "ICE_BEAM" },
    { level = 52, move = "TAKE_DOWN" },
    { level = 59, move = "BLIZZARD" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "ICE_BEAM",
    "BLIZZARD",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
  },
      spriteFront = mod.assets:path("assets/gabumon.png"),
                             spriteBack = mod.assets:path("assets/gabumonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/gabumons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Garurumon 17

GaruruDex = "It races across ice\nat great speed while\nfierce flames burn\nwithin."
mod.content.text:register("_GarurumonDexEntry", GaruruDex)
mod.content.pokemon:register("GARURUMON", {
  id = "GARURUMON", name = "GARURUMON",
  dex = 17,

  dexEntry = {
    heightFt = 8,
    heightIn = 2,
    kind = "CHAMPION",
    weight = 220,
    text = "_GarurumonDexEntry"
  },

  types = { "ICE", "FIRE" },

  baseStats = {
    hp = 80,
    attack = 100,
    defense = 75,
    speed = 105,
    special = 80
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "BITE",
    "QUICK_ATTACK"
  },

  learnset = {
    { level = 7,  move = "EMBER" },
    { level = 12, move = "LEER" },
    { level = 17, move = "FURY_SWIPES" },
    { level = 22, move = "MIST" },
    { level = 28, move = "AURORA_BEAM" },
    { level = 34, move = "TAKE_DOWN" },
    { level = 40, move = "AGILITY" },
    { level = 46, move = "ICE_BEAM" },
    { level = 52, move = "FLAMETHROWER" },
    { level = 59, move = "DOUBLE_EDGE" },
    { level = 66, move = "BLIZZARD" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "ICE_BEAM",
    "BLIZZARD",
    "FIRE_BLAST",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "DIG",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "STRENGTH",
  },

      spriteFront = mod.assets:path("assets/garurumon.png"),
      spriteBack = mod.assets:path("assets/garurumonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/garurumons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Motimon 18

MotiDex = "A soft Digimon with\na curious mind and\nstrange psychic\npowers."
mod.content.text:register("_MotimonDexEntry", MotiDex)
mod.content.pokemon:register("MOTIMON", {
  id = "MOTIMON", name = "MOTIMON",
  dex = 18,
  dexEntry = {
    heightFt = 2,
    heightIn = 4,
    kind = "IN-TRAINING",
    weight = 3,
    text= "_MotimonDexEntry" },
    types = { "NORMAL" },
    baseStats =
    { hp = 39,
      attack = 48,
      defense = 37,
      speed = 74,
      special = 41 },
      catchRate = 150,
      baseExp = 50,
      growthRate = "MEDIUM_SLOW",
      level1Moves = { "TACKLE", "GROWL", "BUBBLE" },
      learnset = {
        { level = 9, move = "QUICK_ATTACK" },
        { level = 13, move = "LEER" },
        { level = 15, move = "CONFUSION" },
        { level = 21, move = "BUBBLEBEAM"},
      },
      tmhm = {
        "CUT",
        "FLASH",
        "BODY_SLAM",
        "REST",
        "DOUBLE_TEAM",
        "BUBBLEBEAM",
        "SWIFT"
      },
      spriteFront = mod.assets:path("assets/motimon.png"),
                             spriteBack = mod.assets:path("assets/motimonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/motimons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Tentomon 19

TentoDex = "A cheerful insect\nable to discharge\npowerful bolts of\nelectricity."
mod.content.text:register("_TentomonDexEntry", TentoDex)
mod.content.pokemon:register("TENTOMON", {
  id = "TENTOMON", name = "TENTOMON",
  dex = 19,
  dexEntry = {
    heightFt = 2,
    heightIn = 4,
    kind = "ROOKIE",
    weight = 3,
    text= "_TentomonDexEntry" },
    types = { "BUG", "ELECTRIC"},
    baseStats =
    { hp = 63,
      attack = 60,
      defense = 50,
      speed = 90,
      special = 70 },
      catchRate = 110,
      baseExp = 142,
      growthRate = "MEDIUM_SLOW",
      level1Moves = { "TACKLE", "GROWL" },
      learnset = {
        { level = 9, move = "QUICK_ATTACK" },
        { level = 12, move = "LEER" },
        { level = 16, move = "THUNDERSHOCK" },
        { level = 20, move = "STRING_SHOT"},
        { level = 26, move = "TWINEEDLE"},
        { level = 31, move = "THUNDER_WAVE"},
        { level = 39, move = "THUNDERBOLT"},
        { level = 45, move = "CONFUSE_RAY"},
        { level = 52, move = "AGILITY"},
        { level = 59, move = "THUNDER"}
      },
      tmhm = {
        "CUT",
        "FLASH",
        "BODY_SLAM",
        "REST",
        "SWORDS_DANCE",
        "TAKE_DOWN",
        "HYPER_BEAM",
        "DOUBLE_TEAM",
        "SWIFT",
        "HEADBUTT",
        "RAZOR_WIND",
        "WHIRLWIND",
        "TOXIC",
        "MEGA_DRAIN",
        "THUNDERBOLT",
        "THUNDER",
        "METRONOME",
        "TRI_ATTACK",
        "THUNDER_WAVE",
        "SUBSTITUTE",
      },
      spriteFront = mod.assets:path("assets/tentomon.png"),
                             spriteBack = mod.assets:path("assets/tentomonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/tentomons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Kabuterimon 20

KabuteriDex = "Its armored shell\nand mighty horn\nconceal tremendous\npower."
mod.content.text:register("_KabuterimonDexEntry", KabuteriDex)
mod.content.pokemon:register("KABUTERIMON", {
  id = "KABUTERIMON", name = "KABUTERIMON",
  dex = 20,
  dexEntry = {
    heightFt = 2,
    heightIn = 4,
    kind = "CHAMPION",
    weight = 3,
    text= "_KabuterimonDexEntry" },
    types = { "BUG", "ELECTRIC"},
    baseStats =
    { hp = 75,
      attack = 96,
      defense = 61,
      speed = 100,
      special = 82 },
      catchRate = 45,
      baseExp = 200,
      growthRate = "MEDIUM_SLOW",
      level1Moves = { "TACKLE", "GROWL" },
      learnset = {
        { level = 9,  move = "QUICK_ATTACK" },
        { level = 13, move = "LEER" },
        { level = 16, move = "THUNDERSHOCK" },
        { level = 20, move = "STRING_SHOT" },
        { level = 26, move = "TWINEEDLE" },
        { level = 31, move = "THUNDER_WAVE" },
        { level = 35, move = "HEADBUTT" },
        { level = 40, move = "THUNDERBOLT" },
        { level = 43, move = "CONFUSE_RAY" },
        { level = 48, move = "WING_ATTACK" },
        { level = 54, move = "REFLECT" },
        { level = 61, move = "THUNDER" },
        { level = 69, move = "HORN_DRILL" },
      },
      tmhm = {
        "CUT",
        "FLY",
        "FLASH",
        "BODY_SLAM",
        "REST",
        "SWORDS_DANCE",
        "TAKE_DOWN",
        "HYPER_BEAM",
        "DOUBLE_TEAM",
        "SWIFT",
        "HEADBUTT",
        "RAZOR_WIND",
        "WHIRLWIND",
        "TOXIC",
        "MEGA_DRAIN",
        "THUNDERBOLT",
        "THUNDER",
        "METRONOME",
        "TRI_ATTACK",
        "THUNDER_WAVE",
        "SUBSTITUTE",
        "HORN_DRILL",
        "SKY_ATTACK",
      },
      spriteFront = mod.assets:path("assets/kabuterimon.png"),
                             spriteBack = mod.assets:path("assets/kabuterimonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/kabuterimons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Kuwagamon 21

KuwagaDex = "Its giant pincers\ncan cut through\neven the hardest\ntree trunks."
mod.content.text:register("_KuwagamonDexEntry", KuwagaDex)
mod.content.pokemon:register("KUWAGAMON", {
  id = "KUWAGAMON", name = "KUWAGAMON",
  dex = 21,
  dexEntry = {
    heightFt = 2,
    heightIn = 4,
    kind = "CHAMPION",
    weight = 3,
    text= "_KuwagamonDexEntry" },
    types = { "BUG", "FLYING"},
    baseStats =
    { hp = 70,
      attack = 110,
      defense = 80,
      speed = 95,
      special = 55 },
      catchRate = 95,
      baseExp = 187,
      growthRate = "MEDIUM_FAST",
      level1Moves = { "POISON_STING", "LEER" },
      learnset = {
        { level = 9, move = "QUICK_ATTACK" },
        { level = 11, move = "STRING_SHOT"},
        { level = 16, move = "RAGE" },
        { level = 20, move = "WING_ATTACK"},
        { level = 26, move = "SLASH"},
        { level = 30, move = "SCREECH"},
        { level = 36, move = "AGILITY"},
        { level = 43, move = "PIN_MISSILE"},
        { level = 48, move = "SWORDS_DANCE"},
        { level = 51, move = "SKY_ATTACK"},
        { level = 59, move = "TAKE_DOWN"},
        { level = 69, move = "GUILLOTINE"}
      },
      tmhm = {
        "CUT",
        "FLY",
        "STRENGTH",
        "BODY_SLAM",
        "REST",
        "SWORDS_DANCE",
        "TAKE_DOWN",
        "DOUBLE_EDGE",
        "HYPER_BEAM",
        "DOUBLE_TEAM",
        "COUNTER",
        "SEISMIC_TOSS",
        "RAGE",
        "SWIFT",
        "HEADBUTT",
        "ROCK_SLIDE",
        "HORN_DRILL",
        "RAZOR_WIND",
        "WHIRLWIND",
        "TOXIC",
        "SOLARBEAM",
        "REFLECT",
        "SKY_ATTACK",
        "THUNDER_WAVE",
        "SUBSTITUTE"
      },
      spriteFront = mod.assets:path("assets/kuwagamon.png"),
                             spriteBack = mod.assets:path("assets/kuwagamonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/kuwagamons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Goburimon 22

GoburiDex = "A crafty\ntroublemaker that\nattacks foes using\nits wooden club."
mod.content.text:register("_GoburimonDexEntry", GoburiDex)
mod.content.pokemon:register("GOBURIMON", {
  id = "GOBURIMON", name = "GOBURIMON",
  dex = 22,
  dexEntry = {
    heightFt = 2,
    heightIn = 4,
    kind = "ROOKIE",
    weight = 3,
    text= "_GoburimonDexEntry" },
    types = { "DARK", "FIGHTING"},
    baseStats =
    { hp = 70,
      attack = 80,
      defense = 50,
      speed = 35,
      special = 35 },
      catchRate = 140,
      baseExp = 85,
      growthRate = "MEDIUM_FAST",
      level1Moves = { "POUND", "LEER" },
      learnset = {
          { level = 6,  move = "LOW_KICK" },
          { level = 11, move = "DOUBLE_KICK" },
          { level = 14, move = "SAND_ATTACK" },
          { level = 19, move = "SLAM" },
          { level = 26, move = "MEGA_PUNCH" },
          { level = 31, move = "SEISMIC_TOSS" },
          { level = 39, move = "RAGE" },
          { level = 45, move = "THRASH" },
          { level = 52, move = "ROAR" },
          { level = 59, move = "COUNTER" },
      },
      tmhm = {
        "TOXIC",
        "RAZOR_WIND",
        "STRENGTH",
        "METRONOME",
        "BODY_SLAM",
        "REST",
        "SWORDS_DANCE",
        "DOUBLE_TEAM",
        "COUNTER",
        "SWIFT",
        "HEADBUTT",
        "SUBSTITUTE",
        "MEGA_PUNCH",
        "MEGA_KICK",
        "SUBMISSION",
        "SEISMIC_TOSS",        
      },
      spriteFront = mod.assets:path("assets/goburimon.png"),
                             spriteBack = mod.assets:path("assets/goburimonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/goburimons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Ogremon 23

OgreDex = "A brutal Digimon\nthat seeks strong\nfoes to test its\ngreat strength."
mod.content.text:register("_OgremonDexEntry", OgreDex)
mod.content.pokemon:register("OGREMON", {
  id = "OGREMON", name = "OGREMON",
  dex = 23,
  dexEntry = {
    heightFt = 2,
    heightIn = 4,
    kind = "CHAMPION",
    weight = 3,
    text= "_OgremonDexEntry" },
    types = { "DARK", "FIGHTING" },
    baseStats = {
      hp = 90,
      attack = 115,
      defense = 70,
      speed = 45,
      special = 45
    },
      catchRate = 75,
      baseExp = 155,
      growthRate = "MEDIUM_FAST",
      level1Moves = { "POUND", "LEER" },

      learnset = {
        { level = 6,  move = "LOW_KICK" },
        { level = 11, move = "DOUBLE_KICK" },
        { level = 14, move = "SAND_ATTACK" },
        { level = 19, move = "SLAM" },
        { level = 26, move = "MEGA_PUNCH" },

        { level = 31, move = "SEISMIC_TOSS" },
        { level = 36, move = "HEADBUTT" },
        { level = 41, move = "RAGE" },
        { level = 46, move = "THRASH" },
        { level = 52, move = "SUBMISSION" },
        { level = 58, move = "SCREECH" },
        { level = 64, move = "COUNTER" },
        { level = 70, move = "HYPER_BEAM" }
      },
      tmhm = {
        "MEGA_PUNCH",
        "SWORDS_DANCE",
        "TOXIC",
        "BODY_SLAM",
        "TAKE_DOWN",
        "DOUBLE_EDGE",
        "RAGE",
        "MEGA_KICK",
        "MIMIC",
        "DOUBLE_TEAM",
        "BIDE",
        "METRONOME",
        "SELFDESTRUCT",
        "REST",
        "SUBMISSION",
        "SEISMIC_TOSS",
        "COUNTER",
        "STRENGTH",
        "SUBSTITUTE",
      },
      spriteFront = mod.assets:path("assets/ogremon.png"),
                             spriteBack = mod.assets:path("assets/ogremonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/ogremons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Tokomon 24

TokoDex = "Its tiny body can\nleap surprisingly\nhigh when it spreads\nits limbs."
mod.content.text:register("_TokomonDexEntry", TokoDex)
mod.content.pokemon:register("TOKOMON", {
  id = "TOKOMON", name = "TOKOMON",
  dex = 24,
    dexEntry = {
      heightFt = 2,
      heightIn = 4,
      kind = "IN-TRAINING",
      weight = 3,
      text= "_TokomonDexEntry" },
  types = { "FLYING" },
  baseStats =
    { hp = 39,
      attack = 52,
      defense = 43,
      speed = 60,
      special = 35 },
  catchRate = 180,
  baseExp = 50,
  growthRate = "MEDIUM_SLOW",
  level1Moves = { "TACKLE", "GROWL", "BUBBLE" },
  learnset = {
    { level = 9, move = "QUICK_ATTACK" },
    { level = 13, move = "LEER" },
    { level = 15, move = "BITE" },
    { level = 21, move = "BUBBLEBEAM"},
  },
  tmhm = {
    "FLASH",
    "BODY_SLAM",
    "REST",
    "DOUBLE_TEAM",
    "BUBBLEBEAM",
    "SWIFT"
  },
  spriteFront = mod.assets:path("assets/tokomon.png"),
  spriteBack = mod.assets:path("assets/tokomonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/tokomons.png"),
    frames = 1,
  },
  frontSize = 1,
  --battleScaleFront = 0.4,
  trueColor = true,
})

-- Patamon 25

PataDex = "It flies by\nflapping its large\nears.It is\ngentle and curious."
mod.content.text:register("_PatamonDexEntry", PataDex)
mod.content.pokemon:register("PATAMON", {
  id = "PATAMON", name = "PATAMON",
  dex = 25,
  dexEntry = {
    heightFt = 2,
    heightIn = 4,
    kind = "ROOKIE",
    weight = 3,
    text= "_PatamonDexEntry" },
    types = { "NORMAL", "FLYING"},
    baseStats =
    { hp = 58,
      attack = 64,
      defense = 58,
      speed = 72,
      special = 65 },
      catchRate = 140,
      baseExp = 142,
      growthRate = "MEDIUM_FAST",
      level1Moves = { "TACKLE", "GUST" },

      learnset = {
        { level = 6,  move = "QUICK_ATTACK" },
        { level = 11, move = "WHIRLWIND" },
        { level = 14, move = "SAND_ATTACK" },
        { level = 19, move = "BODY_SLAM" },
        { level = 26, move = "WING_ATTACK" },
        { level = 31, move = "AGILITY" },
        { level = 39, move = "SWIFT" },
        { level = 45, move = "REFLECT" },
        { level = 52, move = "PSYBEAM" },
        { level = 59, move = "SKY_ATTACK" },
      },
      tmhm = {
        "FLASH",
        "FLY",
        "WHIRLWIND",
        "TOXIC",
        "RAZOR_WIND",
        "REFLECT",
        "METRONOME",
        "BODY_SLAM",
        "REST",
        "DOUBLE_TEAM",
        "SWIFT",
        "HEADBUTT",
        "SUBSTITUTE",
      },
      spriteFront = mod.assets:path("assets/patamon.png"),
      spriteBack = mod.assets:path("assets/patamonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/patamons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Angemon 26

AngeDex = "A holy Digimon that\nfights evil with\nunwavering courage\nand power."
mod.content.text:register("_AngemonDexEntry", AngeDex)
mod.content.pokemon:register("ANGEMON", {
  id = "ANGEMON", name = "ANGEMON",
  dex = 26,

  dexEntry = {
    heightFt = 6,
    heightIn = 2,
    kind = "CHAMPION",
    weight = 150,
    text = "_AngemonDexEntry"
  },

  types = { "FIGHTING", "FLYING" },

  baseStats = {
    hp = 75,
    attack = 95,
    defense = 75,
    speed = 95,
    special = 100
  },

  catchRate = 75,
  baseExp = 175,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "KARATE_CHOP",
    "GUST",
    "FLASH"
  },

  learnset = {
    { level = 7,  move = "WING_ATTACK" },
    { level = 12, move = "DOUBLE_KICK" },
    { level = 17, move = "REFLECT" },
    { level = 22, move = "SWIFT" },
    { level = 28, move = "PSYBEAM" },
    { level = 34, move = "AGILITY" },
    { level = 40, move = "SEISMIC_TOSS" },
    { level = 46, move = "PSYCHIC_M" },
    { level = 52, move = "SKY_ATTACK" },
    { level = 59, move = "COUNTER" },
  },

  tmhm = {
    "FLASH",
    "FLY",
    "RAZOR_WIND",
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "REFLECT",
    "PSYCHIC_M",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "METRONOME",
    "REST",
    "SUBMISSION",
    "SEISMIC_TOSS",
    "COUNTER",
    "SWIFT",
    "SUBSTITUTE",
  },

      spriteFront = mod.assets:path("assets/angemon.png"),
                             spriteBack = mod.assets:path("assets/angemonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/angemons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Airdramon 27

AirdraDex = "It rides the\nstrongest winds.\nFew can match its\nspeed in the sky."
mod.content.text:register("_AirdramonDexEntry", AirdraDex)
mod.content.pokemon:register("AIRDRAMON", {
  id = "AIRDRAMON", name = "AIRDRAMON",
  dex = 27,

  dexEntry = {
    heightFt = 9,
    heightIn = 10,
    kind = "CHAMPION",
    weight = 176,
    text = "_AirdramonDexEntry"
  },

  types = { "DRAGON", "FLYING" },

  baseStats = {
    hp = 75,
    attack = 80,
    defense = 65,
    speed = 105,
    special = 105
  },

  catchRate = 60,
  baseExp = 170,
  growthRate = "SLOW",

  level1Moves = {
    "GUST",
    "LEER"
  },

  learnset = {
    { level = 7,  move = "QUICK_ATTACK" },
    { level = 12, move = "WHIRLWIND" },
    { level = 17, move = "BITE" },
    { level = 22, move = "WING_ATTACK" },
    { level = 28, move = "DRAGON_RAGE" },
    { level = 34, move = "AGILITY" },
    { level = 40, move = "RAZOR_WIND" },
    { level = 46, move = "SLAM" },
    { level = 52, move = "HYPER_BEAM" },
    { level = 59, move = "SKY_ATTACK" },
  },

  tmhm = {
    "FLY",
    "WHIRLWIND",
    "TOXIC",
    "RAZOR_WIND",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "BODY_SLAM",
    "DRAGON_RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "FIRE_BLAST",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
  },

      spriteFront = mod.assets:path("assets/airdramon.png"),
      spriteBack = mod.assets:path("assets/airdramonb.png"),
      icon = {
        image = mod.assets:path("assets/icons/airdramons.png"),
        frames = 1,
      },
      frontSize = 1,
      trueColor = true,
})

-- Snimon 28

SniDex = "It scythes cut\nthrough thick trees.\nIt strikes before\nits pray can react."
mod.content.text:register("_SnimonDexEntry", SniDex)
mod.content.pokemon:register("SNIMON", {
  id = "SNIMON", name = "SNIMON",
  dex = 28,

  dexEntry = {
    heightFt = 7,
    heightIn = 10,
    kind = "CHAMPION",
    weight = 84,
    text = "_SnimonDexEntry"
  },

  types = { "BUG", "FLYING" },

  baseStats = {
    hp = 65,
    attack = 110,
    defense = 65,
    speed = 115,
    special = 55
  },

  catchRate = 45,
  baseExp = 180,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "QUICK_ATTACK",
    "LEER"
  },

  learnset = {
    { level = 7,  move = "FURY_ATTACK" },
    { level = 12, move = "FOCUS_ENERGY" },
    { level = 17, move = "WING_ATTACK" },
    { level = 23, move = "SLASH" },
    { level = 29, move = "DOUBLE_TEAM" },
    { level = 35, move = "PIN_MISSILE" },
    { level = 41, move = "AGILITY" },
    { level = 47, move = "SWORDS_DANCE" },
    { level = 54, move = "RAZOR_WIND" },
    { level = 61, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "CUT",
    "SWORDS_DANCE",
    "TOXIC",
    "RAZOR_WIND",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SKULL_BASH",
    "SUBSTITUTE",
  },

      spriteFront = mod.assets:path("assets/snimon.png"),
                             spriteBack = mod.assets:path("assets/snimonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/snimons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Gesomon 29

GesoDex = "It lurks in deep\nwaters. It blinds\nenemies with black\nink."
mod.content.text:register("_GesomonDexEntry", GesoDex)
mod.content.pokemon:register("GESOMON", {
  id = "GESOMON", name = "GESOMON",
  dex = 29,
  dexEntry = {
    heightFt = 3,
    heightIn = 3,
    kind = "CHAMPION",
    weight = 97,
    text= "_GesomonDexEntry" },
    types = { "WATER", "POISON"},
    baseStats =
    { hp = 105,
      attack = 85,
      defense = 80,
      speed = 65,
      special = 95 },
      catchRate = 55,
      baseExp = 200,
      growthRate = "MEDIUM_FAST",
      level1Moves = { "POISON_STING", "LEER"},
      learnset = {
        { level = 10, move = "WATER_GUN" },
        { level = 16, move = "ACID" },
        { level = 20, move = "MIST" },
        { level = 24, move = "DOUBLE_TEAM" },
        { level = 29, move = "BODY_SLAM" },
        { level = 35, move = "CONFUSE_RAY" },
        { level = 42, move = "SLUDGE" },
        { level = 48, move = "HYDRO_PUMP" },
      },
      tmhm = {
        "TOXIC",
        "BODY_SLAM",
        "TAKE_DOWN",
        "DOUBLE_EDGE",
        "BUBBLEBEAM",
        "WATER_GUN",
        "ICE_BEAM",
        "BLIZZARD",
        "HYPER_BEAM",
        "RAGE",
        "MIMIC",
        "DOUBLE_TEAM",
        "REFLECT",
        "BIDE",
        "REST",
        "SUBSTITUTE",
        "SURF",
        "STRENGTH",
      },
      spriteFront = mod.assets:path("assets/gesomon.png"),
                             spriteBack = mod.assets:path("assets/gesomonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/gesomons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Frigimon 30

FrigiDex = "It stores cold\nenergy within its\nbody, allowing\nit to survive\neven the coldest\nenvironments."
mod.content.text:register("_FrigimonDexEntry", FrigiDex)
mod.content.pokemon:register("FRIGIMON", {
  id = "FRIGIMON", name = "FRIGIMON",
  dex = 30,
  dexEntry = {
    heightFt = 4,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 184,
    text= "_FrigimonDexEntry" },
    types = { "ICE"},
    baseStats =
    { hp = 100,
      attack = 80,
      defense = 80,
      speed = 50,
      special = 110 },
      catchRate = 70,
      baseExp = 185,
      growthRate = "MEDIUM_SLOW",
      level1Moves = { "TACKLE", "LEER"},
      learnset = {
        {level = 10, move = "POWDER_SNOW"},
        {level = 16, move = "MIST"},
        {level = 20, move = "BODY_SLAM"},
        {level = 24, move = "AURORA_BEAM"},
        {level = 29, move = "CONFUSE_RAY"},
        {level = 32, move = "BIDE"},
        {level = 35, move = "ICE_PUNCH"},
        {level = 42, move = "ICE_BEAM"},
        {level = 48, move = "BLIZZARD"},
      },
      tmhm = {
        "TOXIC",
        "BODY_SLAM",
        "TAKE_DOWN",
        "DOUBLE_EDGE",
        "BUBBLEBEAM",
        "WATER_GUN",
        "ICE_BEAM",
        "BLIZZARD",
        "HYPER_BEAM",
        "RAGE",
        "MIMIC",
        "DOUBLE_TEAM",
        "REFLECT",
        "BIDE",
        "REST",
        "SUBSTITUTE",
        "ROCK_SLIDE",
        "MEGA_PUNCH",
        "SEISMIC_TOSS",
        "SWIFT",
        "STRENGTH",
      },
      spriteFront = mod.assets:path("assets/frigimon.png"),
                             spriteBack = mod.assets:path("assets/frigimonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/frigimons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Yokomon 31

YokoDex = "A tiny plant Digimon\nwith a bright flower\ngrowing atop its\nhead."
mod.content.text:register("_YokomonDexEntry", YokoDex)
mod.content.pokemon:register("YOKOMON", {
  id = "YOKOMON", name = "YOKOMON",
  dex = 31,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "IN-TRAINING",
    weight = 3,
    text = "_YokomonDexEntry"
  },

  types = { "GRASS" },

  baseStats = {
    hp = 45,
    attack = 45,
    defense = 48,
    speed = 42,
    special = 55
  },

  catchRate = 180,
  baseExp = 50,
  growthRate = "MEDIUM_SLOW",

  level1Moves = { "TACKLE", "GROWL", "BUBBLE" },

  learnset = {
    { level = 9,  move = "QUICK_ATTACK" },
    { level = 13, move = "LEER" },
    { level = 15, move = "ABSORB" },
    { level = 21, move = "BUBBLEBEAM" },
  },

  tmhm = {
    "TOXIC",
    "BUBBLEBEAM",
    "DOUBLE_TEAM",
    "REST",
    "MEGA_DRAIN",
    "FLASH",
    "SUBSTITUTE",
  },
      spriteFront = mod.assets:path("assets/yokomon.png"),
                             spriteBack = mod.assets:path("assets/yokomonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/yokomons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Biyomon 32

BiyoDex = "A lively young bird\nthat dreams of\nsoaring high through\nthe sky."
mod.content.text:register("_BiyomonDexEntry", BiyoDex)
mod.content.pokemon:register("BIYOMON", {
  id = "BIYOMON", name = "BIYOMON",
  dex = 32,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 9,
    text = "_BiyomonDexEntry"
  },

  types = { "FLYING" },

  baseStats = {
    hp = 55,
    attack = 55,
    defense = 50,
    speed = 80,
    special = 75
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "PECK",
    "GROWL"
  },

  learnset = {
    { level = 6,  move = "GUST" },
    { level = 10, move = "QUICK_ATTACK" },
    { level = 14, move = "EMBER" },
    { level = 19, move = "WHIRLWIND" },
    { level = 25, move = "WING_ATTACK" },
    { level = 31, move = "AGILITY" },
    { level = 37, move = "MIRROR_MOVE" },
    { level = 44, move = "FIRE_SPIN" },
    { level = 51, move = "DRILL_PECK" },
    { level = 59, move = "SKY_ATTACK" },
  },

  tmhm = {
    "FLY",
    "TOXIC",
    "RAZOR_WIND",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "FIRE_BLAST",
    "SUBSTITUTE",
  },
      spriteFront = mod.assets:path("assets/biyomon.png"),
                             spriteBack = mod.assets:path("assets/biyomonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/biyomons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Birdramon 33

BirdraDex = "Its blazing wings\nscatter sparks as\nit sweeps across\nthe sky."
mod.content.text:register("_BirdramonDexEntry", BirdraDex)
mod.content.pokemon:register("BIRDRAMON", {
  id = "BIRDRAMON", name = "BIRDRAMON",
  dex = 33,

  dexEntry = {
    heightFt = 8,
    heightIn = 2,
    kind = "CHAMPION",
    weight = 165,
    text = "_BirdramonDexEntry"
  },

  types = { "FIRE", "FLYING" },

  baseStats = {
    hp = 75,
    attack = 75,
    defense = 65,
    speed = 100,
    special = 115
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "EMBER",
    "GUST"
  },

  learnset = {
    { level = 7,  move = "QUICK_ATTACK" },
    { level = 12, move = "WING_ATTACK" },
    { level = 17, move = "WHIRLWIND" },
    { level = 22, move = "FIRE_SPIN" },
    { level = 33, move = "AGILITY" },
    { level = 39, move = "MIRROR_MOVE" },
    { level = 45, move = "FIRE_BLAST" },
    { level = 52, move = "DRILL_PECK" },
    { level = 60, move = "SKY_ATTACK" },
  },

  tmhm = {
    "FLY",
    "TOXIC",
    "RAZOR_WIND",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "FIRE_BLAST",
    "SUBSTITUTE",
  },

      spriteFront = mod.assets:path("assets/birdramon.png"),
                             spriteBack = mod.assets:path("assets/birdramonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/birdramons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Nyaromon 34

NyaroDex = "A playful Digimon\nwith catlike traits\nand endless\ncuriosity."
mod.content.text:register("_NyaromonDexEntry", NyaroDex)
mod.content.pokemon:register("NYAROMON", {
  id = "NYAROMON", name = "NYAROMON",
  dex = 34,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "IN-TRAINING",
    weight = 2,
    text = "_NyaromonDexEntry"
  },

  types = { "NORMAL" },

  baseStats = {
    hp = 40,
    attack = 48,
    defense = 40,
    speed = 62,
    special = 42
  },

  catchRate = 180,
  baseExp = 50,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "GROWL",
    "BUBBLE"
  },

  learnset = {
    { level = 9,  move = "QUICK_ATTACK" },
    { level = 13, move = "LEER" },
    { level = 15, move = "SWIFT" },
    { level = 21, move = "BUBBLEBEAM" },
  },

  tmhm = {
    "BODY_SLAM",
    "BUBBLEBEAM",
    "DOUBLE_TEAM",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
  },
      spriteFront = mod.assets:path("assets/nyaromon.png"),
                             spriteBack = mod.assets:path("assets/nyaromonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/nyaromons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Salamon 35

SalaDex = "A gentle Digimon\nwhose hidden holy\npower has yet to\nfully awaken."
mod.content.text:register("_SalamonDexEntry", SalaDex)
mod.content.pokemon:register("SALAMON", {
  id = "SALAMON", name = "SALAMON",
  dex = 35,

  dexEntry = {
    heightFt = 2,
    heightIn = 0,
    kind = "ROOKIE",
    weight = 11,
    text = "_SalamonDexEntry"
  },

  types = { "NORMAL" },

  baseStats = {
    hp = 55,
    attack = 60,
    defense = 55,
    speed = 75,
    special = 70
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = { "TACKLE", "GROWL" },

  learnset = {
    { level = 6,  move = "QUICK_ATTACK" },
    { level = 10, move = "TAIL_WHIP" },
    { level = 14, move = "BITE" },
    { level = 19, move = "HEADBUTT" },
    { level = 26, move = "DOUBLE_TEAM" },
    { level = 33, move = "TAKE_DOWN" },
    { level = 40, move = "CONFUSE_RAY" },
    { level = 47, move = "AGILITY" },
    { level = 54, move = "BODY_SLAM" },
    { level = 61, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "HEADBUTT",
    "REFLECT",
    "SUBSTITUTE",
  },
      spriteFront = mod.assets:path("assets/salamon.png"),
                             spriteBack = mod.assets:path("assets/salamonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/salamons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Gatomon 36

GatoDex = "Its small body hides\ngreat strength and\na mysterious holy\npower."
mod.content.text:register("_GatomonDexEntry", GatoDex)
mod.content.pokemon:register("GATOMON", {
  id = "GATOMON", name = "GATOMON",
  dex = 36,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 18,
    text = "_GatomonDexEntry"
  },

  types = { "NORMAL", "FIGHTING" },

  baseStats = {
    hp = 70,
    attack = 100,
    defense = 70,
    speed = 105,
    special = 85
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "SCRATCH",
    "QUICK_ATTACK"
  },

  learnset = {
    { level = 7,  move = "DOUBLE_KICK" },
    { level = 12, move = "BITE" },
    { level = 17, move = "FURY_SWIPES" },
    { level = 22, move = "HEADBUTT" },
    { level = 28, move = "SLASH" },
    { level = 34, move = "DOUBLE_TEAM" },
    { level = 40, move = "REFLECT" },
    { level = 46, move = "AGILITY" },
    { level = 52, move = "BODY_SLAM" },
    { level = 59, move = "COUNTER" },
    { level = 66, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "MEGA_PUNCH",
    "MEGA_KICK",
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBMISSION",
    "SEISMIC_TOSS",
    "COUNTER",
    "SWIFT",
    "REFLECT",
    "THUNDER_WAVE",
    "SUBSTITUTE",
    "STRENGTH",
  },

      spriteFront = mod.assets:path("assets/gatomon.png"),
                             spriteBack = mod.assets:path("assets/gatomonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/gatomons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Leomon 37 

LeoDex = "It lives by a strict\ncode of honor.\nIt protects the weak\nwithout hesitation."
mod.content.text:register("_LeomonDexEntry", LeoDex)
mod.content.pokemon:register("LEOMON", {
  id = "LEOMON", name = "LEOMON",
  dex = 37,
  dexEntry = {
    heightFt = 6,
    heightIn = 1,
    kind = "CHAMPION",
    weight = 187,
    text= "_LeomonDexEntry" },
    types = {"FIGHTING"},
    baseStats = {
      hp = 80,
      attack = 105,
      defense = 80,
      speed = 90,
      special = 70
    },
      catchRate = 55,
      baseExp = 165,
      growthRate = "MEDIUM_FAST",
      level1Moves = { "SCRATCH", "LEER" },

      learnset = {
        { level = 7,  move = "LOW_KICK" },
        { level = 12, move = "KARATE_CHOP" },
        { level = 17, move = "FOCUS_ENERGY" },
        { level = 22, move = "DOUBLE_KICK" },
        { level = 27, move = "SLASH" },
        { level = 32, move = "SEISMIC_TOSS" },
        { level = 37, move = "SWORDS_DANCE" },
        { level = 43, move = "SUBMISSION" },
        { level = 49, move = "AGILITY" },
        { level = 55, move = "COUNTER" },
        { level = 62, move = "DOUBLE_EDGE" },
      },
      tmhm = {
        "MEGA_PUNCH",
        "SWORDS_DANCE",
        "BODY_SLAM",
        "TAKE_DOWN",
        "DOUBLE_EDGE",
        "MEGA_KICK",
        "MIMIC",
        "DOUBLE_TEAM",
        "BIDE",
        "REST",
        "SUBMISSION",
        "SEISMIC_TOSS",
        "COUNTER",
        "SKULL_BASH",
        "REFLECT",
        "SWIFT",
        "STRENGTH",
        "SUBSTITUTE",
      },
      spriteFront = mod.assets:path("assets/leomon.png"),
                             spriteBack = mod.assets:path("assets/leomonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/leomons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Betamon 38
BetaDex = "It lives near water\nand shocks enemies\nusing its dorsal\nfin."
mod.content.text:register("_BetamonDexEntry", BetaDex)
mod.content.pokemon:register("BETAMON", {
  id = "BETAMON", name = "BETAMON",
  dex = 38,

  dexEntry = {
    heightFt = 2,
    heightIn = 0,
    kind = "ROOKIE",
    weight = 18,
    text = "_BetamonDexEntry"
  },

  types = { "WATER", "ELECTRIC" },

  baseStats = {
    hp = 65,
    attack = 55,
    defense = 65,
    speed = 60,
    special = 80
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "WATER_GUN",
    "LEER"
  },

  learnset = {
    { level = 6,  move = "THUNDERSHOCK" },
    { level = 10, move = "GROWL" },
    { level = 14, move = "BITE" },
    { level = 18, move = "SUPERSONIC" },
    { level = 26, move = "THUNDER_WAVE" },
    { level = 32, move = "BUBBLEBEAM" },
    { level = 38, move = "BODY_SLAM" },
    { level = 45, move = "THUNDERBOLT" },
    { level = 52, move = "HYDRO_PUMP" },
    { level = 59, move = "THUNDER" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "BUBBLEBEAM",
    "WATER_GUN",
    "THUNDERBOLT",
    "THUNDER",
    "THUNDER_WAVE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBSTITUTE",
    "SURF",
  },

  evolutions = {},
  spriteFront = mod.assets:path("assets/betamon.png"),
  spriteBack = mod.assets:path("assets/betamonb.png"),
        icon = {
        image = mod.assets:path("assets/icons/betamons.png"),
        frames = 1,
      },
  frontSize = 1,
  trueColor = true,
})

-- Seadramon 39
SeadraDex = "It coils through the\nsea and attacks with\na powerful icy\nbreath."
mod.content.text:register("_SeadramonDexEntry", SeadraDex)
mod.content.pokemon:register("SEADRAMON", {
  id = "SEADRAMON", name = "SEADRAMON",
  dex = 39,

  dexEntry = {
    heightFt = 16,
    heightIn = 5,
    kind = "CHAMPION",
    weight = 265,
    text = "_SeadramonDexEntry"
  },

  types = { "WATER", "DRAGON" },

  baseStats = {
    hp = 85,
    attack = 75,
    defense = 80,
    speed = 80,
    special = 110
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "WATER_GUN",
    "WRAP"
  },

  learnset = {
    { level = 3,  move = "POWDER_SNOW" },
    { level = 7,  move = "LEER" },
    { level = 12, move = "BITE" },
    { level = 17, move = "BUBBLEBEAM" },
    { level = 22, move = "MIST" },
    { level = 28, move = "DRAGON_RAGE" },
    { level = 34, move = "AURORA_BEAM" },
    { level = 40, move = "AGILITY" },
    { level = 46, move = "ICE_BEAM" },
    { level = 52, move = "HYDRO_PUMP" },
    { level = 59, move = "BLIZZARD" },
    { level = 66, move = "HYPER_BEAM" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "BUBBLEBEAM",
    "WATER_GUN",
    "ICE_BEAM",
    "BLIZZARD",
    "HYPER_BEAM",
    "DRAGON_RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SUBSTITUTE",
    "SURF",
  },

  evolutions = {},
      spriteFront = mod.assets:path("assets/seadramon.png"),
                             spriteBack = mod.assets:path("assets/seadramonb.png"),
                             icon = {
                               image = mod.assets:path("assets/icons/seadramons.png"),
                               frames = 1,
                             },
                             frontSize = 1,
                             trueColor = true,
})

-- Pagumon 40

PaguDex = "A mischievous little\nDigimon with a huge\nmouth and sharp\nears."
mod.content.text:register("_PagumonDexEntry", PaguDex)
mod.content.pokemon:register("PAGUMON", {
  id = "PAGUMON", name = "PAGUMON",
  dex = 40,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "IN-TRAINING",
    weight = 2,
    text = "_PagumonDexEntry"
  },

  types = { "DARK" },

  baseStats = {
    hp = 45,
    attack = 45,
    defense = 35,
    speed = 55,
    special = 50
  },

  catchRate = 200,
  baseExp = 50,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "GROWL",
    "BUBBLE"
  },

  learnset = {
    { level = 9,  move = "QUICK_ATTACK" },
    { level = 13, move = "LEER" },
    { level = 15, move = "BITE" },
    { level = 21, move = "BUBBLEBEAM" },
  },

  tmhm = {
    "BODY_SLAM",
    "BUBBLEBEAM",
    "RAGE",
    "DOUBLE_TEAM",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},
  spriteFront = mod.assets:path("assets/pagumon.png"),
  spriteBack = mod.assets:path("assets/pagumonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/pagumons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- DemiDevimon 41

DemiDeviDex = "A sly little demon\nthat loves tricks,\nlies and dirty\ntactics."
mod.content.text:register("_DemiDevimonDexEntry", DemiDeviDex)
mod.content.pokemon:register("DEMIDEVIMON", {
  id = "DEMIDEVIMON", name = "DEMIDEVIMON",
  dex = 41,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 15,
    text = "_DemiDevimonDexEntry"
  },

  types = { "DARK", "FLYING" },

  baseStats = {
    hp = 55,
    attack = 55,
    defense = 50,
    speed = 85,
    special = 75
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "LEER",
    "GUST"
  },

  learnset = {
    { level = 6,  move = "SUPERSONIC" },
    { level = 10, move = "BITE" },
    { level = 14, move = "QUICK_ATTACK" },
    { level = 18, move = "CONFUSE_RAY" },
    { level = 26, move = "WING_ATTACK" },
    { level = 32, move = "SCREECH" },
    { level = 38, move = "TOXIC" },
    { level = 45, move = "DOUBLE_TEAM" },
    { level = 52, move = "AGILITY" },
    { level = 59, move = "HAZE" },
  },

  tmhm = {
    "TOXIC",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "FLY",
  },

  evolutions = {},
  spriteFront = mod.assets:path("assets/demidevimon.png"),
  spriteBack = mod.assets:path("assets/demidevimonb.png"),
  icon = {
        image = mod.assets:path("assets/icons/demidevimons.png"),
        frames = 1,
      },
  frontSize = 1,
  trueColor = true,
})

--Devimon 42

DeviDex = "A fallen Digimon\nthat spreads\ndarkness and\ndelights in cruelty."
mod.content.text:register("_DevimonDexEntry", DeviDex)
mod.content.pokemon:register("DEVIMON", {
  id = "DEVIMON", name = "DEVIMON",
  dex = 42,

  dexEntry = {
    heightFt = 8,
    heightIn = 2,
    kind = "CHAMPION",
    weight = 176,
    text = "_DevimonDexEntry"
  },

  types = { "DARK", "GHOST" },

  baseStats = {
    hp = 75,
    attack = 80,
    defense = 65,
    speed = 95,
    special = 115
  },

  catchRate = 45,
  baseExp = 195,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "LICK",
    "CONFUSE_RAY"
  },

  learnset = {
    { level = 7,  move = "BITE" },
    { level = 12, move = "LEER" },
    { level = 17, move = "NIGHT_SHADE" },
    { level = 22, move = "HYPNOSIS" },
    { level = 28, move = "DREAM_EATER" },
    { level = 34, move = "SCREECH" },
    { level = 40, move = "MEGA_DRAIN" },
    { level = 46, move = "CRUNCH" },
    { level = 52, move = "PSYCHIC_M" },
    { level = 59, move = "HAZE" },
  },

  tmhm = {
    "TOXIC",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "MEGA_DRAIN",
    "PSYCHIC_M",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "DREAM_EATER",
    "SUBSTITUTE",
  },

  evolutions = {},
    spriteFront = mod.assets:path("assets/devimon.png"),
  spriteBack = mod.assets:path("assets/devimonb.png"),
  icon = {
        image = mod.assets:path("assets/icons/devimons.png"),
        frames = 1,
      },
  frontSize = 1,
  trueColor = true,
})

-- Gotsumon 43

GotsuDex = "Its entire body is\nmade of hard stone,\nbut it loves\nplaying tricks."
mod.content.text:register("_GotsumonDexEntry", GotsuDex)
mod.content.pokemon:register("GOTSUMON", {
  id = "GOTSUMON", name = "GOTSUMON",
  dex = 43,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 44,
    text = "_GotsumonDexEntry"
  },

  types = { "ROCK" },

  baseStats = {
    hp = 60,
    attack = 70,
    defense = 90,
    speed = 40,
    special = 40
  },

  catchRate = 180,
  baseExp = 115,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "TACKLE",
    "LEER"
  },

  learnset = {
    { level = 6,  move = "ROCK_THROW" },
    { level = 10, move = "DEFENSE_CURL" },
    { level = 14, move = "BIDE" },
    { level = 18, move = "HEADBUTT" },
    { level = 26, move = "ROCK_SLIDE" },
    { level = 32, move = "TAKE_DOWN" },
    { level = 38, move = "SCREECH" },
    { level = 45, move = "EARTHQUAKE" },
    { level = 52, move = "BODY_SLAM" },
    { level = 59, move = "EXPLOSION" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "DIG",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SEISMIC_TOSS",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/gotsumon.png"),
  spriteBack = mod.assets:path("assets/gotsumonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/gotsumons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Monochromon 44
MonochroDex = "Its enormous horn\ncan smash solid rock\nwith a single fierce\ncharge."
mod.content.text:register("_MonochromonDexEntry", MonochroDex)
mod.content.pokemon:register("MONOCHROMON", {
  id = "MONOCHROMON", name = "MONOCHROMON",
  dex = 44,

  dexEntry = {
    heightFt = 13,
    heightIn = 1,
    kind = "CHAMPION",
    weight = 880,
    text = "_MonochromonDexEntry"
  },

  types = { "ROCK", "GROUND" },

  baseStats = {
    hp = 95,
    attack = 110,
    defense = 105,
    speed = 40,
    special = 75
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "HORN_ATTACK",
    "LEER"
  },

  learnset = {
    { level = 7,  move = "STOMP" },
    { level = 12, move = "ROCK_THROW" },
    { level = 17, move = "HEADBUTT" },
    { level = 22, move = "DEFENSE_CURL" },
    { level = 28, move = "TAKE_DOWN" },
    { level = 34, move = "ROCK_SLIDE" },
    { level = 40, move = "DIG" },
    { level = 46, move = "EARTHQUAKE" },
    { level = 52, move = "BODY_SLAM" },
    { level = 59, move = "HORN_DRILL" },
    { level = 66, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "DIG",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SKULL_BASH",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/monochromon.png"),
  spriteBack = mod.assets:path("assets/monochromonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/monochromons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Upamon 45

UpaDex = "A small and sturdy\nDigimon that loves\nburrowing beneath\nthe soil."
mod.content.text:register("_UpamonDexEntry", UpaDex)
mod.content.pokemon:register("UPAMON", {
  id = "UPAMON", name = "UPAMON",
  dex = 45,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "IN-TRAINING",
    weight = 3,
    text = "_UpamonDexEntry"
  },

  types = { "GROUND" },

  baseStats = {
    hp = 50,
    attack = 40,
    defense = 60,
    speed = 35,
    special = 45
  },

  catchRate = 180,
  baseExp = 50,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "GROWL",
    "BUBBLE"
  },

  learnset = {
    { level = 9,  move = "DEFENSE_CURL" },
    { level = 13, move = "LEER" },
    { level = 15, move = "SAND_ATTACK" },
    { level = 21, move = "BUBBLEBEAM" },
  },

  tmhm = {
    "BODY_SLAM",
    "BUBBLEBEAM",
    "BIDE",
    "DOUBLE_TEAM",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/upamon.png"),
  spriteBack = mod.assets:path("assets/upamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/upamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Armadillomon 46

ArmadilloDex = "Its armored body can\ncurl into a ball to\nrepel enemy\nattacks."
mod.content.text:register("_ArmadillomonDexEntry", ArmadilloDex)
mod.content.pokemon:register("ARMADILLOMON", {
  id = "ARMADILLOMON", name = "ARMADILLOMON",
  dex = 46,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 37,
    text = "_ArmadillomonDexEntry"
  },

  types = { "GROUND" },

  baseStats = {
    hp = 70,
    attack = 65,
    defense = 90,
    speed = 45,
    special = 50
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "TACKLE",
    "DEFENSE_CURL"
  },

  learnset = {
    { level = 6,  move = "SAND_ATTACK" },
    { level = 10, move = "BIDE" },
    { level = 14, move = "DIG" },
    { level = 18, move = "HEADBUTT" },
    { level = 26, move = "ROCK_THROW" },
    { level = 32, move = "BODY_SLAM" },
    { level = 38, move = "TAKE_DOWN" },
    { level = 45, move = "EARTHQUAKE" },
    { level = 52, move = "SKULL_BASH" },
    { level = 59, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "DIG",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SKULL_BASH",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/armadillomon.png"),
  spriteBack = mod.assets:path("assets/armadillomonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/armadillomons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Mushroomon 47
MushrooDex = "It scatters strange\nspores whenever\ndanger draws too\nclose."
mod.content.text:register("_MushroomonDexEntry", MushrooDex)
mod.content.pokemon:register("MUSHROOMON", {
  id = "MUSHROOMON", name = "MUSHROOMON",
  dex = 47,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 15,
    text = "_MushroomonDexEntry"
  },

  types = { "GRASS", "POISON" },

  baseStats = {
    hp = 60,
    attack = 45,
    defense = 55,
    speed = 50,
    special = 80
  },

  catchRate = 180,
  baseExp = 110,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "ABSORB",
    "POISONPOWDER"
  },

  learnset = {
    { level = 6,  move = "SMOG" },
    { level = 10, move = "STUN_SPORE" },
    { level = 14, move = "GROWTH" },
    { level = 18, move = "ACID" },
    { level = 26, move = "SLEEP_POWDER" },
    { level = 32, move = "MEGA_DRAIN" },
    { level = 38, move = "TOXIC" },
    { level = 45, move = "PETAL_DANCE" },
    { level = 53, move = "SOLARBEAM" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "MEGA_DRAIN",
    "SOLARBEAM",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/mushroomon.png"),
  spriteBack = mod.assets:path("assets/mushroomonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/mushroomons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Woodmon 48

WoodDex = "An old living tree\nthat drains energy\nfrom foes through\nits roots."
mod.content.text:register("_WoodmonDexEntry", WoodDex)
mod.content.pokemon:register("WOODMON", {
  id = "WOODMON", name = "WOODMON",
  dex = 48,

  dexEntry = {
    heightFt = 8,
    heightIn = 2,
    kind = "CHAMPION",
    weight = 220,
    text = "_WoodmonDexEntry"
  },

  types = { "GRASS" },

  baseStats = {
    hp = 100,
    attack = 85,
    defense = 100,
    speed = 35,
    special = 105
  },

  catchRate = 60,
  baseExp = 180,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "ABSORB",
    "GROWTH"
  },

  learnset = {
    { level = 7,  move = "VINE_WHIP" },
    { level = 12, move = "STUN_SPORE" },
    { level = 17, move = "LEECH_SEED" },
    { level = 22, move = "MEGA_DRAIN" },
    { level = 28, move = "SLEEP_POWDER" },
    { level = 34, move = "BODY_SLAM" },
    { level = 40, move = "RAZOR_LEAF" },
    { level = 46, move = "TAKE_DOWN" },
    { level = 52, move = "SOLARBEAM" },
    { level = 59, move = "REST" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "MEGA_DRAIN",
    "SOLARBEAM",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/woodmon.png"),
  spriteBack = mod.assets:path("assets/woodmonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/woodmons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Vegiemon 49

VegieDex = "Its long vine arms\nlash out wildly\nwhenever it becomes\nangry."
mod.content.text:register("_VegiemonDexEntry", VegieDex)
mod.content.pokemon:register("VEGIEMON", {
  id = "VEGIEMON", name = "VEGIEMON",
  dex = 49,

  dexEntry = {
    heightFt = 8,
    heightIn = 2,
    kind = "CHAMPION",
    weight = 176,
    text = "_VegiemonDexEntry"
  },

  types = { "GRASS", "POISON" },

  baseStats = {
    hp = 80,
    attack = 95,
    defense = 70,
    speed = 75,
    special = 105
  },

  catchRate = 60,
  baseExp = 180,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "VINE_WHIP",
    "LEER"
  },

  learnset = {
    { level = 7,  move = "POISONPOWDER" },
    { level = 12, move = "WRAP" },
    { level = 17, move = "ACID" },
    { level = 22, move = "STUN_SPORE" },
    { level = 28, move = "RAZOR_LEAF" },
    { level = 34, move = "GROWTH" },
    { level = 40, move = "MEGA_DRAIN" },
    { level = 46, move = "BODY_SLAM" },
    { level = 52, move = "PETAL_DANCE" },
    { level = 59, move = "SOLARBEAM" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "MEGA_DRAIN",
    "SOLARBEAM",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SWORDS_DANCE",
    "SUBSTITUTE",
    "CUT",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/vegiemon.png"),
  spriteBack = mod.assets:path("assets/vegiemonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/vegiemons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Gazimon 50

GaziDex = "A feral Digimon with\nsharp claws and an\neven sharper\ntemper."
mod.content.text:register("_GazimonDexEntry", GaziDex)
mod.content.pokemon:register("GAZIMON", {
  id = "GAZIMON", name = "GAZIMON",
  dex = 50,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 33,
    text = "_GazimonDexEntry"
  },

  types = { "NORMAL", "DARK" },

  baseStats = {
    hp = 60,
    attack = 75,
    defense = 50,
    speed = 70,
    special = 40
  },

  catchRate = 180,
  baseExp = 110,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "SCRATCH",
    "LEER"
  },

  learnset = {
    { level = 6,  move = "BITE" },
    { level = 10, move = "SAND_ATTACK" },
    { level = 14, move = "FURY_SWIPES" },
    { level = 18, move = "ROAR" },
    { level = 26, move = "HEADBUTT" },
    { level = 32, move = "SCREECH" },
    { level = 38, move = "SLASH" },
    { level = 45, move = "TAKE_DOWN" },
    { level = 52, move = "CRUNCH" },
    { level = 59, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "DIG",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/gazimon.png"),
  spriteBack = mod.assets:path("assets/gazimonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/gazimons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Chuumon 51
ChuuDex = "A sneaky little rat\nthat can survive\nalmost anywhere it\ncan hide."
mod.content.text:register("_ChuumonDexEntry", ChuuDex)
mod.content.pokemon:register("CHUUMON", {
  id = "CHUUMON", name = "CHUUMON",
  dex = 51,

  dexEntry = {
    heightFt = 2,
    heightIn = 0,
    kind = "ROOKIE",
    weight = 11,
    text = "_ChuumonDexEntry"
  },

  types = { "NORMAL", "POISON" },

  baseStats = {
    hp = 50,
    attack = 65,
    defense = 40,
    speed = 70,
    special = 40
  },

  catchRate = 220,
  baseExp = 90,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "TACKLE",
    "TAIL_WHIP"
  },

  learnset = {
    { level = 6,  move = "QUICK_ATTACK" },
    { level = 10, move = "POISON_STING" },
    { level = 14, move = "BITE" },
    { level = 18, move = "SUPERSONIC" },
    { level = 24, move = "FURY_SWIPES" },
    { level = 30, move = "SCREECH" },
    { level = 36, move = "SLUDGE" },
    { level = 43, move = "TAKE_DOWN" },
    { level = 50, move = "TOXIC" },
    { level = 57, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/chuumon.png"),
  spriteBack = mod.assets:path("assets/chuumonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/chuumons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Sukamon 52
SukaDex = "Its foul body often\ndrives other Digimon\naway before a fight\nstarts."
mod.content.text:register("_SukamonDexEntry", SukaDex)
mod.content.pokemon:register("SUKAMON", {
  id = "SUKAMON", name = "SUKAMON",
  dex = 52,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 220,
    text = "_SukamonDexEntry"
  },

  types = { "POISON", "GROUND" },

  baseStats = {
    hp = 90,
    attack = 75,
    defense = 85,
    speed = 35,
    special = 105
  },

  catchRate = 90,
  baseExp = 155,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "POISON_GAS",
    "SMOG"
  },

  learnset = {
    { level = 7,  move = "DISABLE" },
    { level = 12, move = "HARDEN" },
    { level = 17, move = "ACID" },
    { level = 22, move = "SLUDGE" },
    { level = 28, move = "MINIMIZE" },
    { level = 34, move = "BODY_SLAM" },
    { level = 40, move = "TOXIC" },
    { level = 46, move = "SCREECH" },
    { level = 52, move = "EARTHQUAKE" },
    { level = 59, move = "EXPLOSION" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/sukamon.png"),
  spriteBack = mod.assets:path("assets/sukamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/sukamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Muchomon 53

MuchoDex = "A colorful bird that\nruns swiftly using\nits powerful legs."
mod.content.text:register("_MuchomonDexEntry", MuchoDex)
mod.content.pokemon:register("MUCHOMON", {
  id = "MUCHOMON", name = "MUCHOMON",
  dex = 53,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 22,
    text = "_MuchomonDexEntry"
  },

  types = { "FLYING" },

  baseStats = {
    hp = 55,
    attack = 60,
    defense = 45,
    speed = 80,
    special = 50
  },

  catchRate = 200,
  baseExp = 105,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "PECK",
    "GROWL"
  },

  learnset = {
    { level = 6,  move = "QUICK_ATTACK" },
    { level = 10, move = "GUST" },
    { level = 14, move = "LEER" },
    { level = 18, move = "FURY_ATTACK" },
    { level = 25, move = "WING_ATTACK" },
    { level = 31, move = "DOUBLE_TEAM" },
    { level = 37, move = "AGILITY" },
    { level = 44, move = "DRILL_PECK" },
    { level = 51, move = "TAKE_DOWN" },
    { level = 58, move = "MIRROR_MOVE" },
  },

  tmhm = {
    "TOXIC",
    "RAZOR_WIND",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "FLY",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/muchomon.png"),
  spriteBack = mod.assets:path("assets/muchomonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/muchomons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Kokatorimon 54

KokatoriDex = "Its eerie gaze can\nleave an opponent\ncompletely unable\nto move."
mod.content.text:register("_KokatorimonDexEntry", KokatoriDex)
mod.content.pokemon:register("KOKATORIMON", {
  id = "KOKATORIMON", name = "KOKATORIMON",
  dex = 54,

  dexEntry = {
    heightFt = 8,
    heightIn = 2,
    kind = "CHAMPION",
    weight = 198,
    text = "_KokatorimonDexEntry"
  },

  types = { "FLYING" },

  baseStats = {
    hp = 85,
    attack = 100,
    defense = 85,
    speed = 65,
    special = 85
  },

  catchRate = 65,
  baseExp = 180,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "PECK",
    "LEER"
  },

  learnset = {
    { level = 7,  move = "GUST" },
    { level = 12, move = "FURY_ATTACK" },
    { level = 17, move = "GLARE" },
    { level = 22, move = "WING_ATTACK" },
    { level = 28, move = "SCREECH" },
    { level = 34, move = "HEADBUTT" },
    { level = 40, move = "AGILITY" },
    { level = 46, move = "DRILL_PECK" },
    { level = 52, move = "TAKE_DOWN" },
    { level = 59, move = "MIRROR_MOVE" },
    { level = 66, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "RAZOR_WIND",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "FLY",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/kokatorimon.png"),
  spriteBack = mod.assets:path("assets/kokatorimonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/kokatorimons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Kapurimon 55

KapuriDex = "A metal helmet\nprotects the soft\nand tiny body hidden\nbeneath it."
mod.content.text:register("_KapurimonDexEntry", KapuriDex)
mod.content.pokemon:register("KAPURIMON", {
  id = "KAPURIMON", name = "KAPURIMON",
  dex = 55,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "IN-TRAINING",
    weight = 4,
    text = "_KapurimonDexEntry"
  },

  types = { "STEEL" },

  baseStats = {
    hp = 45,
    attack = 45,
    defense = 65,
    speed = 35,
    special = 40
  },

  catchRate = 180,
  baseExp = 50,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "GROWL",
    "BUBBLE"
  },

  learnset = {
    { level = 9,  move = "DEFENSE_CURL" },
    { level = 13, move = "LEER" },
    { level = 15, move = "SUPERSONIC" },
    { level = 21, move = "BUBBLEBEAM" },
  },

  tmhm = {
    "BODY_SLAM",
    "BUBBLEBEAM",
    "BIDE",
    "DOUBLE_TEAM",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/kapurimon.png"),
  spriteBack = mod.assets:path("assets/kapurimonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/kapurimons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Hagurumon 56

HaguruDex = "A living cogwheel\nthat turns endlessly\nwith a mysterious\npower."
mod.content.text:register("_HagurumonDexEntry", HaguruDex)
mod.content.pokemon:register("HAGURUMON", {
  id = "HAGURUMON", name = "HAGURUMON",
  dex = 56,

  dexEntry = {
    heightFt = 1,
    heightIn = 8,
    kind = "ROOKIE",
    weight = 26,
    text = "_HagurumonDexEntry"
  },

  types = { "STEEL" },

  baseStats = {
    hp = 55,
    attack = 55,
    defense = 90,
    speed = 45,
    special = 50
  },

  catchRate = 180,
  baseExp = 110,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "TACKLE",
    "LEER"
  },

  learnset = {
    { level = 6,  move = "SUPERSONIC" },
    { level = 10, move = "DEFENSE_CURL" },
    { level = 14, move = "SONICBOOM" },
    { level = 18, move = "THUNDER_WAVE" },
    { level = 26, move = "METAL_SOUND" },
    { level = 32, move = "SWIFT" },
    { level = 38, move = "HEADBUTT" },
    { level = 45, move = "SCREECH" },
    { level = 52, move = "TAKE_DOWN" },
    { level = 59, move = "EXPLOSION" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "THUNDERBOLT",
    "THUNDER",
    "THUNDER_WAVE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "FLASH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/hagurumon.png"),
  spriteBack = mod.assets:path("assets/hagurumonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/hagurumons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Guardromon 57

GuardroDex = "A sturdy machine\nbuilt to guard and\ndefend its assigned\nterritory."
mod.content.text:register("_GuardromonDexEntry", GuardroDex)
mod.content.pokemon:register("GUARDROMON", {
  id = "GUARDROMON", name = "GUARDROMON",
  dex = 57,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 242,
    text = "_GuardromonDexEntry"
  },

  types = { "STEEL" },

  baseStats = {
    hp = 85,
    attack = 85,
    defense = 125,
    speed = 35,
    special = 95
  },

  catchRate = 60,
  baseExp = 180,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "DEFENSE_CURL"
  },

  learnset = {
    { level = 7,  move = "SONICBOOM" },
    { level = 12, move = "HEADBUTT" },
    { level = 17, move = "METAL_SOUND" },
    { level = 22, move = "THUNDER_WAVE" },
    { level = 28, move = "BODY_SLAM" },
    { level = 34, move = "SWIFT" },
    { level = 40, move = "REFLECT" },
    { level = 46, move = "TAKE_DOWN" },
    { level = 52, move = "HYPER_BEAM" },
    { level = 59, move = "EXPLOSION" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "HYPER_BEAM",
    "THUNDERBOLT",
    "THUNDER",
    "THUNDER_WAVE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "STRENGTH",
    "FLASH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/guardromon.png"),
  spriteBack = mod.assets:path("assets/guardromonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/guardromons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Gizamon 58
GizaDex = "A vicious swimmer\nthat attacks its\nprey with sharp\nclaws and fangs."
mod.content.text:register("_GizamonDexEntry", GizaDex)
mod.content.pokemon:register("GIZAMON", {
  id = "GIZAMON", name = "GIZAMON",
  dex = 58,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 33,
    text = "_GizamonDexEntry"
  },

  types = { "WATER" },

  baseStats = {
    hp = 60,
    attack = 75,
    defense = 55,
    speed = 65,
    special = 35
  },

  catchRate = 190,
  baseExp = 105,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "SCRATCH",
    "LEER"
  },

  learnset = {
    { level = 6,  move = "WATER_GUN" },
    { level = 10, move = "BITE" },
    { level = 14, move = "FURY_SWIPES" },
    { level = 18, move = "SCREECH" },
    { level = 25, move = "HEADBUTT" },
    { level = 31, move = "SLASH" },
    { level = 37, move = "BUBBLEBEAM" },
    { level = 44, move = "TAKE_DOWN" },
    { level = 51, move = "HYDRO_PUMP" },
    { level = 58, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "BUBBLEBEAM",
    "WATER_GUN",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "SURF",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/gizamon.png"),
  spriteBack = mod.assets:path("assets/gizamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/gizamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Lalamon 59

LalaDex = "A cheerful plant\nDigimon. The leaf\non its head spins\nlike a tiny propeller."
mod.content.text:register("_LalamonDexEntry", LalaDex)
mod.content.pokemon:register("LALAMON", {
  id = "LALAMON", name = "LALAMON",
  dex = 59,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 9,
    text = "_LalamonDexEntry"
  },

  types = { "GRASS" },

  baseStats = {
    hp = 60,
    attack = 50,
    defense = 55,
    speed = 70,
    special = 80
  },

  catchRate = 140,
  baseExp = 135,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "ABSORB",
    "GROWL"
  },

  learnset = {
    { level = 6,  move = "STUN_SPORE" },
    { level = 10, move = "QUICK_ATTACK" },
    { level = 14, move = "GROWTH" },
    { level = 19, move = "MEGA_DRAIN" },
    { level = 26, move = "SLEEP_POWDER" },
    { level = 32, move = "RAZOR_LEAF" },
    { level = 39, move = "DOUBLE_TEAM" },
    { level = 45, move = "PETAL_DANCE" },
    { level = 52, move = "SOLARBEAM" },
  },

  tmhm = {
    "TOXIC",
    "TAKE_DOWN",
    "MEGA_DRAIN",
    "SOLARBEAM",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/lalamon.png"),
  spriteBack = mod.assets:path("assets/lalamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/lalamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Sunflowmon 60

SunflowDex = "It draws power from\nsunlight. Its bright\npetals release great\nbursts of energy."
mod.content.text:register("_SunflowmonDexEntry", SunflowDex)
mod.content.pokemon:register("SUNFLOWMON", {
  id = "SUNFLOWMON", name = "SUNFLOWMON",
  dex = 60,

  dexEntry = {
    heightFt = 9,
    heightIn = 10,
    kind = "CHAMPION",
    weight = 176,
    text = "_SunflowmonDexEntry"
  },

  types = { "GRASS" },

  baseStats = {
    hp = 80,
    attack = 60,
    defense = 75,
    speed = 85,
    special = 125
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "ABSORB",
    "GROWTH"
  },

  learnset = {
    { level = 7,  move = "STUN_SPORE" },
    { level = 12, move = "RAZOR_LEAF" },
    { level = 17, move = "LEECH_SEED" },
    { level = 22, move = "MEGA_DRAIN" },
    { level = 28, move = "SLEEP_POWDER" },
    { level = 34, move = "PETAL_DANCE" },
    { level = 40, move = "REFLECT" },
    { level = 46, move = "SOLARBEAM" },
    { level = 52, move = "GROWTH" },
    { level = 59, move = "HYPER_BEAM" },
  },

  tmhm = {
    "TOXIC",
    "TAKE_DOWN",
    "MEGA_DRAIN",
    "SOLARBEAM",
    "HYPER_BEAM",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "CUT",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/sunflowmon.png"),
  spriteBack = mod.assets:path("assets/sunflowmonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/sunflowmons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Floramon 61

FloraDex = "Flowers bloom from\nits head and arms.\nTheir sweet scent can\ncalm angry Digimon."
mod.content.text:register("_FloramonDexEntry", FloraDex)
mod.content.pokemon:register("FLORAMON", {
  id = "FLORAMON", name = "FLORAMON",
  dex = 61,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 18,
    text = "_FloramonDexEntry"
  },

  types = { "GRASS" },

  baseStats = {
    hp = 65,
    attack = 50,
    defense = 65,
    speed = 55,
    special = 80
  },

  catchRate = 160,
  baseExp = 125,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "ABSORB",
    "GROWL"
  },

  learnset = {
    { level = 6,  move = "POISONPOWDER" },
    { level = 10, move = "VINE_WHIP" },
    { level = 14, move = "STUN_SPORE" },
    { level = 19, move = "LEECH_SEED" },
    { level = 26, move = "MEGA_DRAIN" },
    { level = 32, move = "SLEEP_POWDER" },
    { level = 38, move = "GROWTH" },
    { level = 45, move = "PETAL_DANCE" },
    { level = 52, move = "SOLARBEAM" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "MEGA_DRAIN",
    "SOLARBEAM",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "REST",
    "SUBSTITUTE",
    "CUT",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/floramon.png"),
  spriteBack = mod.assets:path("assets/floramonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/floramons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Kiwimon 62

KiwiDex = "A strange bird with\na body like a plant.\nIts powerful legs\nmake it very swift."
mod.content.text:register("_KiwimonDexEntry", KiwiDex)
mod.content.pokemon:register("KIWIMON", {
  id = "KIWIMON", name = "KIWIMON",
  dex = 62,

  dexEntry = {
    heightFt = 8,
    heightIn = 2,
    kind = "CHAMPION",
    weight = 132,
    text = "_KiwimonDexEntry"
  },

  types = { "GRASS" },

  baseStats = {
    hp = 75,
    attack = 105,
    defense = 75,
    speed = 105,
    special = 65
  },

  catchRate = 60,
  baseExp = 180,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "PECK",
    "GROWL"
  },

  learnset = {
    { level = 7,  move = "QUICK_ATTACK" },
    { level = 12, move = "VINE_WHIP" },
    { level = 17, move = "FURY_ATTACK" },
    { level = 22, move = "STUN_SPORE" },
    { level = 28, move = "DRILL_PECK" },
    { level = 35, move = "RAZOR_LEAF" },
    { level = 44, move = "AGILITY" },
    { level = 50, move = "SWORDS_DANCE" },
    { level = 57, move = "DOUBLE_EDGE" },
    { level = 64, move = "SOLARBEAM" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "MEGA_DRAIN",
    "SOLARBEAM",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SWORDS_DANCE",
    "SWIFT",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/kiwimon.png"),
  spriteBack = mod.assets:path("assets/kiwimonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/kiwimons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Otamamon 63

OtamaDex = "It lives in clear\nwater and swims by\nwaving its long,\npowerful tail."
mod.content.text:register("_OtamamonDexEntry", OtamaDex)
mod.content.pokemon:register("OTAMAMON", {
  id = "OTAMAMON", name = "OTAMAMON",
  dex = 63,

  dexEntry = {
    heightFt = 1,
    heightIn = 4,
    kind = "ROOKIE",
    weight = 7,
    text = "_OtamamonDexEntry"
  },

  types = { "WATER" },

  baseStats = {
    hp = 55,
    attack = 40,
    defense = 45,
    speed = 65,
    special = 85
  },

  catchRate = 190,
  baseExp = 105,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "POUND",
    "GROWL"
  },

  learnset = {
    { level = 6,  move = "WATER_GUN" },
    { level = 10, move = "SUPERSONIC" },
    { level = 14, move = "SING" },
    { level = 19, move = "BUBBLEBEAM" },
    { level = 22, move = "SCREECH" },
    { level = 26, move = "DOUBLESLAP" },
    { level = 31, move = "MIST" },
    { level = 37, move = "HYDRO_PUMP" },
    { level = 51, move = "REST" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "BUBBLEBEAM",
    "WATER_GUN",
    "ICE_BEAM",
    "BLIZZARD",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBSTITUTE",
    "SURF",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/otamamon.png"),
  spriteBack = mod.assets:path("assets/otamamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/otamamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Gekomon 64

GekoDex = "Its strange voice\ncan carry for miles.\nIt loves to sing by\nclear, quiet water."
mod.content.text:register("_GekomonDexEntry", GekoDex)
mod.content.pokemon:register("GEKOMON", {
  id = "GEKOMON", name = "GEKOMON",
  dex = 64,

  dexEntry = {
    heightFt = 3,
    heightIn = 3,
    kind = "CHAMPION",
    weight = 44,
    text = "_GekomonDexEntry"
  },

  types = { "WATER" },

  baseStats = {
    hp = 90,
    attack = 60,
    defense = 70,
    speed = 70,
    special = 130
  },

  catchRate = 65,
  baseExp = 180,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "WATER_GUN",
    "SUPERSONIC"
  },

  learnset = {
    { level = 7,  move = "SING" },
    { level = 12, move = "BUBBLEBEAM" },
    { level = 17, move = "DOUBLESLAP" },
    { level = 22, move = "SCREECH" },
    { level = 27, move = "CONFUSE_RAY" },
    { level = 32, move = "BODY_SLAM" },
    { level = 38, move = "HYDRO_PUMP" },
    { level = 44, move = "MIST" },
    { level = 50, move = "REST" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "BUBBLEBEAM",
    "WATER_GUN",
    "ICE_BEAM",
    "BLIZZARD",
    "HYPER_BEAM",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SUBSTITUTE",
    "SURF",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/gekomon.png"),
  spriteBack = mod.assets:path("assets/gekomonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/gekomons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Impmon 65

ImpDex = "A wicked prankster\nthat loves causing\ntrouble. It attacks\nwith fire and magic."
mod.content.text:register("_ImpmonDexEntry", ImpDex)
mod.content.pokemon:register("IMPMON", {
  id = "IMPMON", name = "IMPMON",
  dex = 65,

  dexEntry = {
    heightFt = 2,
    heightIn = 4,
    kind = "ROOKIE",
    weight = 18,
    text = "_ImpmonDexEntry"
  },

  types = { "DARK", "FIRE" },

  baseStats = {
    hp = 55,
    attack = 50,
    defense = 45,
    speed = 80,
    special = 90
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "EMBER",
    "LEER"
  },

  learnset = {
    { level = 6,  move = "SMOG" },
    { level = 10, move = "BITE" },
    { level = 14, move = "CONFUSE_RAY" },
    { level = 19, move = "NIGHT_SHADE" },
    { level = 25, move = "FIRE_PUNCH" },
    { level = 31, move = "CRUNCH" },
    { level = 37, move = "DOUBLE_TEAM" },
    { level = 44, move = "FLAMETHROWER" },
    { level = 51, move = "SCREECH" },
    { level = 58, move = "FIRE_BLAST" },
  },

  tmhm = {
    "TOXIC",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "FLAMETHROWER",
    "FIRE_BLAST",
    "PSYCHIC_M",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/impmon.png"),
  spriteBack = mod.assets:path("assets/impmonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/impmons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Wizardmon 66

WizardDex = "A master of magic\nthat travels far to\nlearn new spells and\nmysterious powers."
mod.content.text:register("_WizardmonDexEntry", WizardDex)
mod.content.pokemon:register("WIZARDMON", {
  id = "WIZARDMON", name = "WIZARDMON",
  dex = 66,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 143,
    text = "_WizardmonDexEntry"
  },

  types = { "PSYCHIC_TYPE", "DARK" },

  baseStats = {
    hp = 65,
    attack = 50,
    defense = 55,
    speed = 105,
    special = 150
  },

  catchRate = 60,
  baseExp = 190,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "CONFUSION",
    "CONFUSE_RAY"
  },

  learnset = {
    { level = 7,  move = "EMBER" },
    { level = 12, move = "NIGHT_SHADE" },
    { level = 17, move = "THUNDER_WAVE" },
    { level = 22, move = "PSYBEAM" },
    { level = 27, move = "FIRE_PUNCH" },
    { level = 32, move = "CRUNCH" },
    { level = 38, move = "THUNDERBOLT" },
    { level = 44, move = "PSYCHIC_M" },
    { level = 50, move = "RECOVER" },
    { level = 57, move = "FIRE_BLAST" },
  },

  tmhm = {
    "TOXIC",
    "TAKE_DOWN",
    "THUNDERBOLT",
    "THUNDER",
    "THUNDER_WAVE",
    "PSYCHIC_M",
    "FIRE_BLAST",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "SWIFT",
    "SUBSTITUTE",
    "FLASH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/wizardmon.png"),
  spriteBack = mod.assets:path("assets/wizardmonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/wizardmons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Sorcermon 67

SorcerDex = "It studies ancient\nmagic in frozen lands.\nIts spells can freeze\nfoes in an instant."
mod.content.text:register("_SorcermonDexEntry", SorcerDex)
mod.content.pokemon:register("SORCERMON", {
  id = "SORCERMON", name = "SORCERMON",
  dex = 67,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 143,
    text = "_SorcermonDexEntry"
  },

  types = { "ICE", "PSYCHIC_TYPE" },

  baseStats = {
    hp = 75,
    attack = 45,
    defense = 70,
    speed = 85,
    special = 150
  },

  catchRate = 60,
  baseExp = 190,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "CONFUSION",
    "MIST"
  },

  learnset = {
    { level = 7,  move = "POWDER_SNOW" },
    { level = 12, move = "CONFUSE_RAY" },
    { level = 17, move = "AURORA_BEAM" },
    { level = 22, move = "PSYBEAM" },
    { level = 27, move = "ICE_PUNCH" },
    { level = 32, move = "REFLECT" },
    { level = 38, move = "ICE_BEAM" },
    { level = 44, move = "PSYCHIC_M" },
    { level = 50, move = "RECOVER" },
    { level = 57, move = "BLIZZARD" },
  },

  tmhm = {
    "TOXIC",
    "TAKE_DOWN",
    "ICE_BEAM",
    "BLIZZARD",
    "PSYCHIC_M",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "FLASH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/sorcermon.png"),
  spriteBack = mod.assets:path("assets/sorcermonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/sorcermons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Raremon 68

RareDex = "Its rotting body\nreleases a foul gas.\nIt thrives in filthy\nand polluted places."
mod.content.text:register("_RaremonDexEntry", RareDex)
mod.content.pokemon:register("RAREMON", {
  id = "RAREMON", name = "RAREMON",
  dex = 68,

  dexEntry = {
    heightFt = 9,
    heightIn = 10,
    kind = "CHAMPION",
    weight = 264,
    text = "_RaremonDexEntry"
  },

  types = { "POISON" },

  baseStats = {
    hp = 120,
    attack = 70,
    defense = 75,
    speed = 25,
    special = 105
  },

  catchRate = 75,
  baseExp = 165,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "POISON_GAS",
    "DISABLE"
  },

  learnset = {
    { level = 7,  move = "SMOG" },
    { level = 12, move = "ACID" },
    { level = 17, move = "HARDEN" },
    { level = 22, move = "SLUDGE" },
    { level = 27, move = "DISABLE" },
    { level = 32, move = "BODY_SLAM" },
    { level = 38, move = "TOXIC" },
    { level = 44, move = "MINIMIZE" },
    { level = 50, move = "SCREECH" },
    { level = 57, move = "SELFDESTRUCT" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/raremon.png"),
  spriteBack = mod.assets:path("assets/raremonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/raremons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Mojyamon 69

MojyaDex = "A shaggy beast that\nlives on snowy peaks.\nIts powerful arms\ncan shatter thick ice."
mod.content.text:register("_MojyamonDexEntry", MojyaDex)
mod.content.pokemon:register("MOJYAMON", {
  id = "MOJYAMON", name = "MOJYAMON",
  dex = 69,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 198,
    text = "_MojyamonDexEntry"
  },

  types = { "ICE", "FIGHTING" },

  baseStats = {
    hp = 95,
    attack = 115,
    defense = 85,
    speed = 55,
    special = 75
  },

  catchRate = 65,
  baseExp = 180,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "POUND",
    "LEER"
  },

  learnset = {
    { level = 7,  move = "LOW_KICK" },
    { level = 12, move = "POWDER_SNOW" },
    { level = 17, move = "KARATE_CHOP" },
    { level = 22, move = "MIST" },
    { level = 27, move = "BODY_SLAM" },
    { level = 32, move = "SEISMIC_TOSS" },
    { level = 38, move = "SUBMISSION" },
    { level = 44, move = "ICE_BEAM" },
    { level = 50, move = "STRENGTH" },
    { level = 57, move = "BLIZZARD" },
  },

  tmhm = {
    "TOXIC",
    "MEGA_PUNCH",
    "MEGA_KICK",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "ICE_BEAM",
    "BLIZZARD",
    "RAGE",
    "SEISMIC_TOSS",
    "SUBMISSION",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/mojyamon.png"),
  spriteBack = mod.assets:path("assets/mojyamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/mojyamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Sunarizamon 70

SunarizaDex = "It buries itself in\nsand to hide. Its\nrough skin blends in\nwith the ground."
mod.content.text:register("_SunarizamonDexEntry", SunarizaDex)
mod.content.pokemon:register("SUNARIZAMON", {
  id = "SUNARIZAMON", name = "SUNARIZAMON",
  dex = 70,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 31,
    text = "_SunarizamonDexEntry"
  },

  types = { "GROUND" },

  baseStats = {
    hp = 55,
    attack = 65,
    defense = 75,
    speed = 60,
    special = 35
  },

  catchRate = 190,
  baseExp = 105,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "SCRATCH",
    "SAND_ATTACK"
  },

  learnset = {
    { level = 6,  move = "DEFENSE_CURL" },
    { level = 10, move = "ROCK_THROW" },
    { level = 14, move = "DIG" },
    { level = 19, move = "BITE" },
    { level = 25, move = "HEADBUTT" },
    { level = 31, move = "SLASH" },
    { level = 37, move = "ROCK_SLIDE" },
    { level = 44, move = "EARTHQUAKE" },
    { level = 51, move = "TAKE_DOWN" },
    { level = 58, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "DIG",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/sunarizamon.png"),
  spriteBack = mod.assets:path("assets/sunarizamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/sunarizamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Tortamon 71

TortaDex = "Its rocky shell is\nhard as a mountain.\nIt can endure even\npowerful attacks."
mod.content.text:register("_TortamonDexEntry", TortaDex)
mod.content.pokemon:register("TORTAMON", {
  id = "TORTAMON", name = "TORTAMON",
  dex = 71,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 397,
    text = "_TortamonDexEntry"
  },

  types = { "GROUND", "ROCK" },

  baseStats = {
    hp = 100,
    attack = 90,
    defense = 125,
    speed = 30,
    special = 80
  },

  catchRate = 60,
  baseExp = 180,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "DEFENSE_CURL"
  },

  learnset = {
    { level = 7,  move = "ROCK_THROW" },
    { level = 12, move = "BIDE" },
    { level = 17, move = "DIG" },
    { level = 22, move = "HEADBUTT" },
    { level = 27, move = "ROCK_SLIDE" },
    { level = 32, move = "BODY_SLAM" },
    { level = 38, move = "EARTHQUAKE" },
    { level = 44, move = "HARDEN" },
    { level = 50, move = "SKULL_BASH" },
    { level = 57, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "DIG",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SKULL_BASH",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/tortamon.png"),
  spriteBack = mod.assets:path("assets/tortamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/tortamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Drimogemon 72

DrimogeDex = "It digs deep tunnels\nwith its huge drill.\nIts claws can break\nthrough solid rock."
mod.content.text:register("_DrimogemonDexEntry", DrimogeDex)
mod.content.pokemon:register("DRIMOGEMON", {
  id = "DRIMOGEMON", name = "DRIMOGEMON",
  dex = 72,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 254,
    text = "_DrimogemonDexEntry"
  },

  types = { "GROUND" },

  baseStats = {
    hp = 85,
    attack = 120,
    defense = 90,
    speed = 75,
    special = 55
  },

  catchRate = 50,
  baseExp = 185,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "SCRATCH",
    "SAND_ATTACK"
  },

  learnset = {
    { level = 7,  move = "FURY_SWIPES" },
    { level = 12, move = "DIG" },
    { level = 17, move = "HORN_ATTACK" },
    { level = 22, move = "SLASH" },
    { level = 27, move = "ROCK_SLIDE" },
    { level = 32, move = "TAKE_DOWN" },
    { level = 38, move = "EARTHQUAKE" },
    { level = 44, move = "SWORDS_DANCE" },
    { level = 50, move = "HORN_DRILL" },
    { level = 57, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "DIG",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SWORDS_DANCE",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/drimogemon.png"),
  spriteBack = mod.assets:path("assets/drimogemonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/drimogemons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Veemon 73

VeeDex = "A small dragon with\na brave heart. It\nfaces larger foes\nwithout any fear."
mod.content.text:register("_VeemonDexEntry", VeeDex)
mod.content.pokemon:register("VEEMON", {
  id = "VEEMON", name = "VEEMON",
  dex = 73,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 26,
    text = "_VeemonDexEntry"
  },

  types = { "DRAGON" },

  baseStats = {
    hp = 65,
    attack = 80,
    defense = 60,
    speed = 75,
    special = 40
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "TACKLE",
    "LEER"
  },

  learnset = {
    { level = 6,  move = "QUICK_ATTACK" },
    { level = 10, move = "BITE" },
    { level = 14, move = "HEADBUTT" },
    { level = 19, move = "FURY_SWIPES" },
    { level = 25, move = "BODY_SLAM" },
    { level = 31, move = "SLASH" },
    { level = 37, move = "AGILITY" },
    { level = 44, move = "TAKE_DOWN" },
    { level = 51, move = "DRAGON_RAGE" },
    { level = 58, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "FLAMETHROWER",
    "FIRE_BLAST",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/veemon.png"),
  spriteBack = mod.assets:path("assets/veemonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/veemons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Hawkmon 74

HawkDex = "A proud bird with\na keen sense of duty.\nIt strikes swiftly\nfrom above."
mod.content.text:register("_HawkmonDexEntry", HawkDex)
mod.content.pokemon:register("HAWKMON", {
  id = "HAWKMON", name = "HAWKMON",
  dex = 74,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 18,
    text = "_HawkmonDexEntry"
  },

  types = { "FLYING" },

  baseStats = {
    hp = 60,
    attack = 70,
    defense = 55,
    speed = 90,
    special = 45
  },

  catchRate = 140,
  baseExp = 140,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "PECK",
    "GROWL"
  },

  learnset = {
    { level = 6,  move = "QUICK_ATTACK" },
    { level = 10, move = "GUST" },
    { level = 14, move = "SAND_ATTACK" },
    { level = 19, move = "FURY_ATTACK" },
    { level = 25, move = "WING_ATTACK" },
    { level = 31, move = "AGILITY" },
    { level = 37, move = "SWIFT" },
    { level = 44, move = "DRILL_PECK" },
    { level = 51, move = "MIRROR_MOVE" },
    { level = 58, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "RAZOR_WIND",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "FLY",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/hawkmon.png"),
  spriteBack = mod.assets:path("assets/hawkmonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/hawkmons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Numemon 75

NumeDex = "A filthy Digimon\nwith little strength.\nIt hurls foul waste\nwhen threatened."
mod.content.text:register("_NumemonDexEntry", NumeDex)
mod.content.pokemon:register("NUMEMON", {
  id = "NUMEMON", name = "NUMEMON",
  dex = 75,

  dexEntry = {
    heightFt = 3,
    heightIn = 3,
    kind = "CHAMPION",
    weight = 66,
    text = "_NumemonDexEntry"
  },

  types = { "POISON" },

  baseStats = {
    hp = 105,
    attack = 55,
    defense = 70,
    speed = 35,
    special = 105
  },

  catchRate = 100,
  baseExp = 145,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "POISON_GAS",
    "LEER"
  },

  learnset = {
    { level = 7,  move = "SMOG" },
    { level = 12, move = "SLUDGE" },
    { level = 17, move = "DISABLE" },
    { level = 22, move = "HARDEN" },
    { level = 27, move = "BODY_SLAM" },
    { level = 32, move = "MINIMIZE" },
    { level = 38, move = "TOXIC" },
    { level = 44, move = "SCREECH" },
    { level = 50, move = "REST" },
    { level = 57, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/numemon.png"),
  spriteBack = mod.assets:path("assets/numemonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/numemons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Bakemon 76

BakeDex = "A ghostly Digimon\nhidden by a white\ncloth. Its true form\nis rarely ever seen."
mod.content.text:register("_BakemonDexEntry", BakeDex)
mod.content.pokemon:register("BAKEMON", {
  id = "BAKEMON", name = "BAKEMON",
  dex = 76,

  dexEntry = {
    heightFt = 5,
    heightIn = 11,
    kind = "CHAMPION",
    weight = 44,
    text = "_BakemonDexEntry"
  },

  types = { "GHOST" },

  baseStats = {
    hp = 65,
    attack = 55,
    defense = 50,
    speed = 130,
    special = 105
  },

  catchRate = 70,
  baseExp = 175,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "LICK",
    "CONFUSE_RAY"
  },

  learnset = {
    { level = 7,  move = "NIGHT_SHADE" },
    { level = 12, move = "HYPNOSIS" },
    { level = 17, move = "DISABLE" },
    { level = 22, move = "DREAM_EATER" },
    { level = 27, move = "SCREECH" },
    { level = 32, move = "PSYBEAM" },
    { level = 38, move = "TOXIC" },
    { level = 44, move = "PSYCHIC_M" },
    { level = 50, move = "DOUBLE_TEAM" },
  },

  tmhm = {
    "TOXIC",
    "PSYCHIC_M",
    "DREAM_EATER",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/bakemon.png"),
  spriteBack = mod.assets:path("assets/bakemonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/bakemons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Renamon 77

RenaDex = "A clever Digimon\nwith keen senses. It\nmoves with such speed\nit seems to vanish."
mod.content.text:register("_RenamonDexEntry", RenaDex)
mod.content.pokemon:register("RENAMON", {
  id = "RENAMON", name = "RENAMON",
  dex = 77,

  dexEntry = {
    heightFt = 3,
    heightIn = 3,
    kind = "ROOKIE",
    weight = 33,
    text = "_RenamonDexEntry"
  },

  types = { "PSYCHIC_TYPE" },

  baseStats = {
    hp = 55,
    attack = 55,
    defense = 45,
    speed = 90,
    special = 80
  },

  catchRate = 120,
  baseExp = 145,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "QUICK_ATTACK",
    "LEER"
  },

  learnset = {
    { level = 8,  move = "CONFUSION" },
    { level = 12, move = "DOUBLE_TEAM" },
    { level = 15, move = "FURY_SWIPES" },
    { level = 19, move = "PSYBEAM" },
    { level = 24, move = "SWIFT" },
    { level = 30, move = "CONFUSE_RAY" },
    { level = 36, move = "AGILITY" },
    { level = 42, move = "PSYCHIC_M" },
    { level = 49, move = "SLASH" },
    { level = 56, move = "REFLECT" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "PSYCHIC_M",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "STRENGTH",
    "FLASH"
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/renamon.png"),
  spriteBack = mod.assets:path("assets/renamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/renamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Kyubimon 78

KyubiDex = "Its nine tails burn\nwith mystical fire.\nIt moves with grace\nand uncanny speed."
mod.content.text:register("_KyubimonDexEntry", KyubiDex)
mod.content.pokemon:register("KYUBIMON", {
  id = "KYUBIMON", name = "KYUBIMON",
  dex = 78,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 73,
    text = "_KyubimonDexEntry"
  },

  types = { "PSYCHIC_TYPE", "FIRE" },

  baseStats = {
    hp = 70,
    attack = 55,
    defense = 60,
    speed = 110,
    special = 130
  },

  catchRate = 60,
  baseExp = 190,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "EMBER",
    "CONFUSION"
  },

  learnset = {
    { level = 7,  move = "CONFUSE_RAY" },
    { level = 12, move = "AGILITY" },
    { level = 17, move = "PSYBEAM" },
    { level = 22, move = "FIRE_SPIN" },
    { level = 27, move = "AGILITY" },
    { level = 32, move = "FLAMETHROWER" },
    { level = 38, move = "REFLECT" },
    { level = 44, move = "PSYCHIC_M" },
    { level = 50, move = "FIRE_BLAST" },
    { level = 57, move = "SWIFT" },
  },

  tmhm = {
    "TOXIC",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "FLAMETHROWER",
    "FIRE_BLAST",
    "PSYCHIC_M",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/kyubimon.png"),
  spriteBack = mod.assets:path("assets/kyubimonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/kyubimons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Golemon 79

GoleDex = "A giant made from\nstone and earth. Its\nheavy fists can crush\nsolid rock with ease."
mod.content.text:register("_GolemonDexEntry", GoleDex)
mod.content.pokemon:register("GOLEMON", {
  id = "GOLEMON", name = "GOLEMON",
  dex = 79,

  dexEntry = {
    heightFt = 9,
    heightIn = 10,
    kind = "CHAMPION",
    weight = 661,
    text = "_GolemonDexEntry"
  },

  types = { "ROCK", "GROUND" },

  baseStats = {
    hp = 90,
    attack = 125,
    defense = 110,
    speed = 30,
    special = 70
  },

  catchRate = 55,
  baseExp = 185,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "POUND",
    "DEFENSE_CURL"
  },

  learnset = {
    { level = 7,  move = "ROCK_THROW" },
    { level = 12, move = "MEGA_PUNCH" },
    { level = 17, move = "HARDEN" },
    { level = 22, move = "DIG" },
    { level = 27, move = "ROCK_SLIDE" },
    { level = 32, move = "BODY_SLAM" },
    { level = 38, move = "EARTHQUAKE" },
    { level = 44, move = "MEGA_KICK" },
    { level = 50, move = "STRENGTH" },
    { level = 57, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "MEGA_PUNCH",
    "MEGA_KICK",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "DIG",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/golemon.png"),
  spriteBack = mod.assets:path("assets/golemonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/golemons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Ankylomon 80

AnkyloDex = "Its armored body is\ncovered in hard spikes.\nIt charges foes with\ntremendous force."
mod.content.text:register("_AnkylomonDexEntry", AnkyloDex)
mod.content.pokemon:register("ANKYLOMON", {
  id = "ANKYLOMON", name = "ANKYLOMON",
  dex = 80,

  dexEntry = {
    heightFt = 9,
    heightIn = 10,
    kind = "CHAMPION",
    weight = 661,
    text = "_AnkylomonDexEntry"
  },

  types = { "GROUND", "STEEL" },

  baseStats = {
    hp = 95,
    attack = 100,
    defense = 135,
    speed = 30,
    special = 65
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "DEFENSE_CURL"
  },

  learnset = {
    { level = 7,  move = "HORN_ATTACK" },
    { level = 12, move = "DIG" },
    { level = 17, move = "HARDEN" },
    { level = 22, move = "BODY_SLAM" },
    { level = 27, move = "IRON_TAIL" },
    { level = 32, move = "ROCK_SLIDE" },
    { level = 38, move = "EARTHQUAKE" },
    { level = 44, move = "TAKE_DOWN" },
    { level = 50, move = "SKULL_BASH" },
    { level = 57, move = "HORN_DRILL" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "IRON_TAIL",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "DIG",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SKULL_BASH",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/ankylomon.png"),
  spriteBack = mod.assets:path("assets/ankylomonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/ankylomons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Digmon 81

DigDex = "Its powerful drills\ntear through the earth.\nEven solid stone\ncannot stop it."
mod.content.text:register("_DigmonDexEntry", DigDex)
mod.content.pokemon:register("DIGMON", {
  id = "DIGMON", name = "DIGMON",
  dex = 81,

  dexEntry = {
    heightFt = 9,
    heightIn = 10,
    kind = "CHAMPION",
    weight = 661,
    text = "_DigmonDexEntry"
  },

  types = { "GROUND", "STEEL" },

  baseStats = {
    hp = 85,
    attack = 105,
    defense = 120,
    speed = 55,
    special = 60
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "HORN_ATTACK",
    "SAND_ATTACK"
  },

  learnset = {
    { level = 7,  move = "DIG" },
    { level = 12, move = "FURY_ATTACK" },
    { level = 17, move = "ROCK_THROW" },
    { level = 22, move = "METAL_CLAW" },
    { level = 27, move = "ROCK_SLIDE" },
    { level = 32, move = "TAKE_DOWN" },
    { level = 38, move = "EARTHQUAKE" },
    { level = 44, move = "SWORDS_DANCE" },
    { level = 50, move = "HORN_DRILL" },
    { level = 57, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "EARTHQUAKE",
    "FISSURE",
    "DIG",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SWORDS_DANCE",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/digmon.png"),
  spriteBack = mod.assets:path("assets/digmonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/digmons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Lighdramon 82

LighdraDex = "It races like a\nbolt of lightning.\nFew can keep pace\nwith its great speed."
mod.content.text:register("_LighdramonDexEntry", LighdraDex)
mod.content.pokemon:register("LIGHDRAMON", {
  id = "LIGHDRAMON", name = "LIGHDRAMON",
  dex = 82,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 165,
    text = "_LighdramonDexEntry"
  },

  types = { "ELECTRIC" },

  baseStats = {
    hp = 70,
    attack = 75,
    defense = 65,
    speed = 125,
    special = 100,
  },

  catchRate = 60,
  baseExp = 190,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "THUNDERSHOCK",
    "QUICK_ATTACK"
  },

  learnset = {
    { level = 7,  move = "LEER" },
    { level = 12, move = "THUNDER_WAVE" },
    { level = 17, move = "DOUBLE_KICK" },
    { level = 22, move = "SWIFT" },
    { level = 27, move = "THUNDERBOLT" },
    { level = 32, move = "AGILITY" },
    { level = 38, move = "TAKE_DOWN" },
    { level = 44, move = "DOUBLE_TEAM" },
    { level = 50, move = "THUNDER" },
    { level = 57, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "THUNDERBOLT",
    "THUNDER",
    "THUNDER_WAVE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "FLASH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/lighdramon.png"),
  spriteBack = mod.assets:path("assets/lighdramonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/lighdramons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Flamedramon 83

FlamedraDex = "Its blazing armor\nburns with great heat.\nIt charges into battle\nwithout hesitation."
mod.content.text:register("_FlamedramonDexEntry", FlamedraDex)
mod.content.pokemon:register("FLAMEDRAMON", {
  id = "FLAMEDRAMON", name = "FLAMEDRAMON",
  dex = 83,

  dexEntry = {
    heightFt = 5,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 132,
    text = "_FlamedramonDexEntry"
  },

  types = { "FIRE", "FIGHTING" },

  baseStats = {
    hp = 80,
    attack = 115,
    defense = 75,
    speed = 95,
    special = 60
  },

  catchRate = 60,
  baseExp = 190,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "EMBER",
    "KARATE_CHOP"
  },

  learnset = {
    { level = 7,  move = "QUICK_ATTACK" },
    { level = 12, move = "LOW_KICK" },
    { level = 17, move = "FIRE_PUNCH" },
    { level = 22, move = "DOUBLE_KICK" },
    { level = 27, move = "FLAMETHROWER" },
    { level = 32, move = "BODY_SLAM" },
    { level = 38, move = "SUBMISSION" },
    { level = 44, move = "AGILITY" },
    { level = 50, move = "FIRE_BLAST" },
    { level = 57, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "MEGA_PUNCH",
    "MEGA_KICK",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "FLAMETHROWER",
    "FIRE_BLAST",
    "RAGE",
    "SEISMIC_TOSS",
    "SUBMISSION",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/flamedramon.png"),
  spriteBack = mod.assets:path("assets/flamedramonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/flamedramons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Kokuwamon 84

KokuwaDex = "Its metal jaws can\nstore electricity.\nIt releases the charge\nwhen danger is near."
mod.content.text:register("_KokuwamonDexEntry", KokuwaDex)
mod.content.pokemon:register("KOKUWAMON", {
  id = "KOKUWAMON", name = "KOKUWAMON",
  dex = 84,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 33,
    text = "_KokuwamonDexEntry"
  },

  types = { "BUG", "ELECTRIC" },

  baseStats = {
    hp = 55,
    attack = 65,
    defense = 75,
    speed = 60,
    special = 50
  },

  catchRate = 160,
  baseExp = 120,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "THUNDERSHOCK",
    "LEER"
  },

  learnset = {
    { level = 6,  move = "VICEGRIP" },
    { level = 10, move = "THUNDER_WAVE" },
    { level = 14, move = "STRING_SHOT" },
    { level = 19, move = "METAL_CLAW" },
    { level = 25, move = "TWINEEDLE" },
    { level = 31, move = "SCREECH" },
    { level = 37, move = "THUNDERBOLT" },
    { level = 44, move = "SLASH" },
    { level = 51, move = "AGILITY" },
    { level = 58, move = "THUNDER" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "THUNDERBOLT",
    "THUNDER",
    "THUNDER_WAVE",
    "METAL_CLAW",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "FLASH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/kokuwamon.png"),
  spriteBack = mod.assets:path("assets/kokuwamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/kokuwamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Elecmon 85

ElecDex = "Its fur stores a\npowerful charge. It\nfires electricity\nwhen alarmed."
mod.content.text:register("_ElecmonDexEntry", ElecDex)
mod.content.pokemon:register("ELECMON", {
  id = "ELECMON", name = "ELECMON",
  dex = 85,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 33,
    text = "_ElecmonDexEntry"
  },

  types = { "ELECTRIC" },

  baseStats = {
    hp = 60,
    attack = 65,
    defense = 50,
    speed = 80,
    special = 60
  },

  catchRate = 160,
  baseExp = 125,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "THUNDERSHOCK",
    "LEER"
  },

  learnset = {
    { level = 6,  move = "QUICK_ATTACK" },
    { level = 10, move = "THUNDER_WAVE" },
    { level = 14, move = "BITE" },
    { level = 19, move = "SWIFT" },
    { level = 25, move = "THUNDERBOLT" },
    { level = 31, move = "SCREECH" },
    { level = 37, move = "AGILITY" },
    { level = 44, move = "TAKE_DOWN" },
    { level = 51, move = "THUNDER" },
    { level = 58, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "THUNDERBOLT",
    "THUNDER",
    "THUNDER_WAVE",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "FLASH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/elecmon.png"),
  spriteBack = mod.assets:path("assets/elecmonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/elecmons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Bearmon 86

BearDex = "A tough little fighter\nthat trains each day.\nIts strong fists can\nfell larger foes."
mod.content.text:register("_BearmonDexEntry", BearDex)
mod.content.pokemon:register("BEARMON", {
  id = "BEARMON", name = "BEARMON",
  dex = 86,

  dexEntry = {
    heightFt = 3,
    heightIn = 3,
    kind = "ROOKIE",
    weight = 44,
    text = "_BearmonDexEntry"
  },

  types = { "FIGHTING" },

  baseStats = {
    hp = 65,
    attack = 80,
    defense = 60,
    speed = 65,
    special = 40
  },

  catchRate = 160,
  baseExp = 125,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "SCRATCH",
    "LEER"
  },

  learnset = {
    { level = 6, move = "FOCUS_ENERGY" },
    { level = 10, move = "KARATE_CHOP" },
    { level = 14, move = "FURY_SWIPES" },
    { level = 19, move = "LOW_KICK" },
    { level = 24, move = "MEGA_PUNCH" },
    { level = 30, move = "SEISMIC_TOSS" },
    { level = 36, move = "BODY_SLAM" },
    { level = 42, move = "SUBMISSION" },
    { level = 49, move = "TAKE_DOWN" },
    { level = 56, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "MEGA_PUNCH",
    "MEGA_KICK",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "SEISMIC_TOSS",
    "SUBMISSION",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SUBSTITUTE",
    "CUT",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/bearmon.png"),
  spriteBack = mod.assets:path("assets/bearmonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/bearmons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Grizzlymon 87

GrizzlyDex = "A mighty fighter\nwith crushing strength.\nIts heavy blows can\nshatter solid stone."
mod.content.text:register("_GrizzlymonDexEntry", GrizzlyDex)
mod.content.pokemon:register("GRIZZLYMON", {
  id = "GRIZZLYMON", name = "GRIZZLYMON",
  dex = 87,

  dexEntry = {
    heightFt = 7,
    heightIn = 10,
    kind = "CHAMPION",
    weight = 287,
    text = "_GrizzlymonDexEntry"
  },

  types = { "FIGHTING" },

  baseStats = {
    hp = 100,
    attack = 120,
    defense = 90,
    speed = 70,
    special = 45
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "KARATE_CHOP",
    "LEER"
  },

  learnset = {
    { level = 7,  move = "LOW_KICK" },
    { level = 12, move = "FURY_SWIPES" },
    { level = 17, move = "MEGA_PUNCH" },
    { level = 22, move = "FOCUS_ENERGY" },
    { level = 27, move = "BODY_SLAM" },
    { level = 32, move = "SEISMIC_TOSS" },
    { level = 38, move = "SUBMISSION" },
    { level = 44, move = "ROCK_SLIDE" },
    { level = 50, move = "MEGA_KICK" },
    { level = 57, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "MEGA_PUNCH",
    "MEGA_KICK",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "RAGE",
    "SEISMIC_TOSS",
    "SUBMISSION",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "ROCK_SLIDE",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/grizzlymon.png"),
  spriteBack = mod.assets:path("assets/grizzlymonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/grizzlymons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Candlemon 88

CandleDex = "A living flame burns\nabove its small body.\nIt grows brighter in\ndark, lonely places."
mod.content.text:register("_CandlemonDexEntry", CandleDex)
mod.content.pokemon:register("CANDLEMON", {
  id = "CANDLEMON", name = "CANDLEMON",
  dex = 88,

  dexEntry = {
    heightFt = 2,
    heightIn = 7,
    kind = "ROOKIE",
    weight = 18,
    text = "_CandlemonDexEntry"
  },

  types = { "FIRE", "GHOST" },

  baseStats = {
    hp = 55,
    attack = 40,
    defense = 50,
    speed = 65,
    special = 95
  },

  catchRate = 160,
  baseExp = 125,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "EMBER",
    "LEER"
  },

  learnset = {
    { level = 6,  move = "SMOG" },
    { level = 10, move = "NIGHT_SHADE" },
    { level = 14, move = "CONFUSE_RAY" },
    { level = 19, move = "FIRE_SPIN" },
    { level = 25, move = "HYPNOSIS" },
    { level = 31, move = "FLAMETHROWER" },
    { level = 37, move = "MINIMIZE" },
    { level = 44, move = "FIRE_BLAST" },
    { level = 51, move = "SCREECH" },
    { level = 58, move = "TOXIC" },
  },

  tmhm = {
    "TOXIC",
    "FLAMETHROWER",
    "FIRE_BLAST",
    "PSYCHIC_M",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/candlemon.png"),
  spriteBack = mod.assets:path("assets/candlemonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/candlemons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Meramon 89

MeraDex = "Its entire body is\nmade of raging fire.\nThe hotter it burns,\nthe stronger it gets."
mod.content.text:register("_MeramonDexEntry", MeraDex)
mod.content.pokemon:register("MERAMON", {
  id = "MERAMON", name = "MERAMON",
  dex = 89,

  dexEntry = {
    heightFt = 6,
    heightIn = 7,
    kind = "CHAMPION",
    weight = 154,
    text = "_MeramonDexEntry"
  },

  types = { "FIRE" },

  baseStats = {
    hp = 75,
    attack = 90,
    defense = 65,
    speed = 90,
    special = 105
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_FAST",

  level1Moves = {
    "EMBER",
    "LEER"
  },

  learnset = {
    { level = 7,  move = "SMOG" },
    { level = 12, move = "FIRE_PUNCH" },
    { level = 17, move = "RAGE" },
    { level = 22, move = "FIRE_SPIN" },
    { level = 27, move = "BODY_SLAM" },
    { level = 32, move = "FLAMETHROWER" },
    { level = 38, move = "TAKE_DOWN" },
    { level = 44, move = "AGILITY" },
    { level = 50, move = "FIRE_BLAST" },
    { level = 57, move = "DOUBLE_EDGE" },
  },

  tmhm = {
    "TOXIC",
    "MEGA_PUNCH",
    "MEGA_KICK",
    "BODY_SLAM",
    "TAKE_DOWN",
    "DOUBLE_EDGE",
    "FLAMETHROWER",
    "FIRE_BLAST",
    "RAGE",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SWIFT",
    "SUBSTITUTE",
    "STRENGTH",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/meramon.png"),
  spriteBack = mod.assets:path("assets/meramonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/meramons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Soulmon 90

SoulDex = "It hides beneath a\nlarge black hat. Its\nstrange magic chills\nthose who draw near."
mod.content.text:register("_SoulmonDexEntry", SoulDex)
mod.content.pokemon:register("SOULMON", {
  id = "SOULMON", name = "SOULMON",
  dex = 90,

  dexEntry = {
    heightFt = 5,
    heightIn = 11,
    kind = "CHAMPION",
    weight = 44,
    text = "_SoulmonDexEntry"
  },

  types = { "GHOST" },

  baseStats = {
    hp = 65,
    attack = 50,
    defense = 55,
    speed = 95,
    special = 160
  },

  catchRate = 60,
  baseExp = 185,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "LICK",
    "CONFUSE_RAY"
  },

  learnset = {
    { level = 7,  move = "NIGHT_SHADE" },
    { level = 12, move = "HYPNOSIS" },
    { level = 17, move = "DISABLE" },
    { level = 22, move = "DREAM_EATER" },
    { level = 27, move = "CONFUSION" },
    { level = 32, move = "SMOG" },
    { level = 38, move = "PSYBEAM" },
    { level = 44, move = "MINIMIZE" },
    { level = 50, move = "PSYCHIC_M" },
    { level = 57, move = "TOXIC" },
  },

  tmhm = {
    "TOXIC",
    "PSYCHIC_M",
    "DREAM_EATER",
    "MIMIC",
    "DOUBLE_TEAM",
    "REFLECT",
    "BIDE",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/soulmon.png"),
  spriteBack = mod.assets:path("assets/soulmonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/soulmons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Punimon 91

PuniDex = "A tiny Digimon with\nsoft, jellylike skin.\nIts small horns are\nstill growing."
mod.content.text:register("_PunimonDexEntry", PuniDex)
mod.content.pokemon:register("PUNIMON", {
  id = "PUNIMON", name = "PUNIMON",
  dex = 91,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "BABY",
    weight = 2,
    text = "_PunimonDexEntry"
  },

  types = { "NORMAL" },

  baseStats = {
    hp = 40,
    attack = 25,
    defense = 30,
    speed = 30,
    special = 25
  },

  catchRate = 220,
  baseExp = 35,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "TACKLE",
    "GROWL"
  },

  learnset = {
    { level = 7,  move = "TAIL_WHIP" },
    { level = 13, move = "QUICK_ATTACK" },
    { level = 19, move = "DEFENSE_CURL" },
    { level = 25, move = "HEADBUTT" },
    { level = 31, move = "REST" },
  },

  tmhm = {
    "TOXIC",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/punimon.png"),
  spriteBack = mod.assets:path("assets/punimonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/punimons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Botamon 92

BotaDex = "A tiny Digimon with\nsoft black fur. It\nblows small bubbles\nwhen frightened."
mod.content.text:register("_BotamonDexEntry", BotaDex)
mod.content.pokemon:register("BOTAMON", {
  id = "BOTAMON", name = "BOTAMON",
  dex = 92,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "BABY",
    weight = 2,
    text = "_BotamonDexEntry"
  },

  types = { "NORMAL" },

  baseStats = {
    hp = 40,
    attack = 20,
    defense = 25,
    speed = 30,
    special = 35
  },

  catchRate = 220,
  baseExp = 30,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "BUBBLE"
  },

  learnset = {
    { level = 7,  move = "GROWL" },
    { level = 13, move = "TACKLE" },
    { level = 19, move = "SMOKESCREEN" },
    { level = 25, move = "REST" },
  },

  tmhm = {
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/botamon.png"),
  spriteBack = mod.assets:path("assets/botamonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/botamons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Poyomon 93

PoyoDex = "It drifts through the\nwater like a bubble.\nIts soft body is light\nand easily carried."
mod.content.text:register("_PoyomonDexEntry", PoyoDex)
mod.content.pokemon:register("POYOMON", {
  id = "POYOMON", name = "POYOMON",
  dex = 93,

  dexEntry = {
    heightFt = 1,
    heightIn = 0,
    kind = "BABY",
    weight = 2,
    text = "_PoyomonDexEntry"
  },

  types = { "WATER" },

  baseStats = {
    hp = 35,
    attack = 20,
    defense = 20,
    speed = 35,
    special = 40
  },

  catchRate = 220,
  baseExp = 30,
  growthRate = "MEDIUM_SLOW",

  level1Moves = {
    "BUBBLE"
  },

  learnset = {
    { level = 7,  move = "GROWL" },
    { level = 13, move = "SUPERSONIC" },
    { level = 19, move = "WATER_GUN" },
    { level = 25, move = "REST" },
  },

  tmhm = {
    "BUBBLEBEAM",
    "WATER_GUN",
    "MIMIC",
    "DOUBLE_TEAM",
    "BIDE",
    "REST",
    "SUBSTITUTE",
  },

  evolutions = {},

  spriteFront = mod.assets:path("assets/poyomon.png"),
  spriteBack = mod.assets:path("assets/poyomonb.png"),
  icon = {
    image = mod.assets:path("assets/icons/poyomons.png"),
    frames = 1,
  },
  frontSize = 1,
  trueColor = true,
})

-- Megadramon (how to evolve Airdramon?!)

-- Gigadramon (how to evolve Airdramon?!)

-- MarinDevimon

-- JewelBeemon

-- Okuwamon

-- Deltamon

-- MetalGreymon

-- SkullGreymon

-- WereGarurumon

-- Lillymon

-- Zudomon

-- Garudamon

-- Angewomon

-- MagnaAngemon

-- MegaKabuterimon

-- Digitamamon

-- Parrotmon

-- Tyrannomon

-- Monzaemon

-- Numemon

-- PlatinumNumemon

-- Etemon

-- MetalEtemon

-- Kokatorimon

-- Imperialdramon DNA

-- Pumpkinmon

-- DemiVeemon

-- Veemon

-- Flamedramon (Fire Stone?)

-- Lighdramon (need req for DV / Thunder Stone? / Digi Eggs as new items? )

-- ExVeemon (Level?)

-- Halsmon

-- Aquilamon

-- Shurimon

-- Ankylomon

-- Digmon (maybe DV in Diglett Cave?)

-- Submarimon (Water Stone?)

-- Nefertimon

-- Pegasusmon

-- Shellmon

-- Andromon

-- Phantomon
pokemonRegistry.register = registerPokemon
end
