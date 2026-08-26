return function(mod)
  local Evolution = require("src.pokemon.Evolution")
  local Font = require("src.render.Font")
  local Growth = require("src.pokemon.Growth")
  local PaletteFX = require("src.render.PaletteFX")
  local PartyMenu = require("src.ui.PartyMenu")
  local Pokemon = require("src.pokemon.Pokemon")
  local Sound = require("src.core.Sound")
  local Stats = require("src.pokemon.Stats")
  local Strings = require("src.core.Strings")
  local TextBox = require("src.render.TextBox")
  local Theme = require("src.ui.Theme")

  local KEYS = { "hp", "attack", "defense", "speed", "special" }
  local LABEL = { hp="HP", attack="ATK", defense="DEF", speed="SPD", special="SPC" }
  local ORDER = { hp=1, attack=2, defense=3, speed=4, special=5 }

  local ROUTES = {
    TANEMON = {
      { target = "PALMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "MUSHROOMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "LALAMON", requirement={"LVL MIN 16","SPC 33"}, unlocked=function(mon) return (mon.level or 1) >= 16 and (mon.stats.special or 0) >= 33 end },
    },
    PALMON = {
      { target = "TOGEMON", requirement={"ATK 40", "SPD 40" }, unlocked=function(mon) return (mon.stats.attack or 1) >= 40 and (mon.stats.speed or 0) >= 40 end },
      { target = "KIWIMON", requirement="ATK 44", unlocked=function(mon) return (mon.stats.attack or 1) >= 44 end },
      { target = "VEGIEMON", requirement="SPC 40", unlocked=function(mon) return (mon.stats.special or 0) >= 40 end },
    },
    KOROMON = {
      { target = "AGUMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "BETAMON", requirement={ "LVL MIN 16", "SPD 30" }, unlocked=function(mon) return (mon.level or 1) >= 16 and (mon.stats.speed or 0) >= 30 end },
      { target = "OTAMAMON", requirement={"LVL MIN 16", "ATK 20"}, unlocked=function(mon) return (mon.level or 1) >= 16 and (mon.stats.attack) >= 20 end },
      { target = "CANDLEMON", requirement={"SPC 40"}, unlocked=function(mon) return (mon.stats.special or 0) >= 40 end },
    },    
    AGUMON = {
      { target = "GREYMON", requirement="ATK 50", unlocked=function(mon) return (mon.stats.attack or 0) >= 50 end },
      { target = "MONOCHROMON", requirement="DEF 55", unlocked=function(mon) return  (mon.stats.defense or 0) >= 55 end },
      -- TYRANNOMON
    },
    BUKAMON = {
      { target = "GOMAMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "OTAMAMON", requirement={"LVL MIN 16", "ATK 25"}, unlocked=function(mon) return (mon.level or 1) >= 16 and (mon.stats.attack) >= 25 end },
      { target = "GIZAMON", requirement="SPD 25", unlocked=function(mon) return (mon.stats.speed or 1) >= 25 end },
    },
    GOMAMON = {
      { target = "IKKAKUMON", requirement="LVL MIN 34", unlocked=function(mon) return (mon.level or 1) >= 34 end },
      { target = "GESOMON", requirement={"LVL MIN 28","SPC 50"}, unlocked=function(mon) return (mon.level or 1) >= 28 and (mon.stats.special) >= 50 end },
      { target = "SEADRAMON", requirement={"HP 75", "SPC 55"}, unlocked=function(mon) return (mon.stats.hp or 1) >= 75 and (mon.stats.special or 0) >= 55 end },
      { target = "RAREMON", requirement={"HP 95"}, unlocked=function(mon) return (mon.stats.hp or 1) >= 95 end },
    },
    MINOMON = {
      { target = "WORMMON", requirement = "LVL MIN 9", unlocked=function(mon) return (mon.level or 1) >= 9 end },
      { target = "KUNEMON", requirement = { "LVL MIN 14", "SPC 25"}, unlocked=function(mon) return (mon.level or 1) >= 14 and (mon.stats.special or 0 ) >= 25 end },
      { target = "KOKUWAMON", requirement = { "LVL MIN 16", "SPC 45"}, unlocked=function(mon) return (mon.level or 1) >= 16 and (mon.stats.special or 0 ) >= 45 end },
    },
    WORMMON = {
      { target = "STINGMON", requirement="LVL MIN 25", unlocked=function(mon) return (mon.level or 1) >= 25 end },
      { target = "KUWAGAMON", requirement={"LVL MIN 28","ATK 60"}, unlocked=function(mon) return (mon.level or 1) >= 28 and (mon.stats.attack or 0 ) >= 60 end },
      -- IMPERIALDRAMON
    },
    KUNEMON = {
      { target = "FLYMON", requirement="LVL MIN 26", unlocked=function(mon) return (mon.level or 1) >= 26 end },
      { target = "SUKAMON", requirement="SPC 43", unlocked=function(mon) return (mon.stats.special or 0) >= 43 end },
    },
    TSUNOMON = {
      { target = "GABUMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "GIZAMON", requirement="SPD 25", unlocked=function(mon) return (mon.stats.speed or 1) >= 25 end },
      { target = "ELECMON", requirement="SPC 40", unlocked=function(mon) return (mon.stats.special or 1) >= 40 end },
      { target = "BEARMON", requirement="ATK 35", unlocked=function(mon) return (mon.stats.attack or 1) >= 35 end },

    },
    GABUMON = {
      { target = "GARURUMON", requirement="SPC 70", unlocked=function(mon) return (mon.stats.special or 0) >= 70 end },
      { target = "LEOMON", requirement={"LVL 40","ATK 85"}, unlocked=function(mon) return (mon.level or 1) >= 40 and (mon.stats.attack or 0) >= 85 end },
      { target = "FRIGIMON", requirement={"HP 65","SPC 50"}, unlocked=function(mon) return (mon.stats.hp or 1) >= 65 and (mon.stats.special or 0) >=  50 end },
      { target = "GRIZZLYMON", requirement={"ATK 55","HP 85"}, unlocked=function(mon) return (mon.stats.attack or 1) >= 55 and (mon.stats.hp or 0 ) >= 85 end },
    },
    MOTIMON = {
      { target = "TENTOMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "KUNEMON", requirement="LVL MIN 10", unlocked=function(mon) return (mon.level or 1) >= 10 end },
      { target = "HAGURUMON", requirement="DEF 35", unlocked=function(mon) return (mon.stats.defense or 0) >= 35 end },
      { target = "KOKUWAMON", requirement="ATK 40", unlocked=function(mon) return (mon.stats.attack or 0) >= 40 end },
    },
    TENTOMON = {
      { target = "KABUTERIMON", requirement={"LVL MIN 25","SPD 50"}, unlocked=function(mon) return (mon.level or 1) >= 25 and (mon.stats.speed or 0) >= 50 end },
      { target = "STINGMON", requirement={"SPD 75"}, unlocked=function(mon) return (mon.stats.speed or 0) >= 75 end },
      { target = "KUWAGAMON", requirement={"LVL MIN 32","ATK 60"}, unlocked=function(mon) return (mon.level or 1) >= 32 and (mon.stats.attack or 0) >= 60 end },
    },
    GOBURIMON = {
      { target = "OGREMON", requirement="LVL MIN 28", unlocked=function(mon) return (mon.level or 1) >= 28 end },
      { target = "FRIGIMON", requirement={"HP 65","SPC 50"}, unlocked=function(mon) return (mon.stats.hp or 1) >= 65 and (mon.stats.special or 0) >=  50 end },
      { target = "WIZARDMON", requirement={"LVL MIN 35","SPC 75"}, unlocked=function(mon) return (mon.level or 1) >= 35 and (mon.stats.special or 0) >=  75 end },
      -- Bakemon
    },
    TOKOMON = {
      { target = "PATAMON", requirement="LVL 14", unlocked=function(mon) return (mon.level or 1) >= 14 end },
      { target = "SALAMON", requirement={"LVL 14","ATK 35"}, unlocked=function(mon) return (mon.level or 1) >= 14 and (mon.stats.attack or 1) >= 35 end },
    },
    PATAMON = {
      { target = "ANGEMON", requirement={"ATK 60","SPC 60"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 60 and (mon.stats.special or 0) >= 60 end },
      { target = "DEVIMON", requirement={"ATK 60","SPC 70"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 60 and (mon.stats.special or 0) >= 70 end },
      { target = "AIRDRAMON", requirement={"LVL 30"}, unlocked=function(mon) return (mon.level or 1) >= 30 end },
      -- Eggvolutions
    },
    YOKOMON = {
      { target = "BIYOMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "MUCHOMON", requirement="LVL MIN 13", unlocked=function(mon) return (mon.level or 1) >= 13 end },
      { target = "FLORAMON", requirement={"LVL MIN 15","SPC 30"}, unlocked=function(mon) return (mon.level or 1) >= 15 and (mon.stats.special) >= 30 end },
    },
    BIYOMON = {
      { target = "BIRDRAMON", requirement="LVL MIN 35", unlocked=function(mon) return (mon.level or 1) >= 35 end },
      { target = "WIZARDMON", requirement="SPC 40", unlocked=function(mon) return (mon.stats.special or 1) >= 40 end },
      { target = "KOKATORIMON", requirement="ATK 35", unlocked=function(mon) return (mon.stats.attack or 1) >= 35 end },
      { target = "MERAMON", requirement="SPC 60", unlocked=function(mon) return (mon.stats.special or 0) >= 60 end },
    },
    NYAROMON = {
      { target = "SALAMON", requirement="LVL MIN 14", unlocked=function(mon) return (mon.level or 1) >= 14 end },
      { target = "CHUUMON", requirement="ATK 27", unlocked=function(mon) return (mon.stats.attack or 1) >= 27 end },
      { target = "SUNARIZAMON", requirement="DEF 45", unlocked=function(mon) return (mon.stats.defense or 1) >= 45 end },
      { target = "RENAMON", requirement="SPC 40", unlocked=function(mon) return (mon.stats.special or 1) >= 40 end },
    },
    SALAMON = {
      { target = "GATOMON", requirement="LVL MIN 31", unlocked=function(mon) return (mon.level or 1) >= 31 end },
      { target = "LEOMON", requirement={"HP 75","ATK 65"}, unlocked=function(mon) return (mon.stats.hp or 1) >= 75 and (mon.stats.attack or 0) >= 65 end },
      { target = "GRIZZLYMON", requirement={"ATK 55","HP 85"}, unlocked=function(mon) return (mon.stats.attack or 1) >= 55 and (mon.stats.hp or 0 ) >= 85 end },
    },
    -- GATOMON -- Eggvolutions
    BETAMON = {
      { target = "SEADRAMON", requirement="LVL MIN 34", unlocked=function(mon) return (mon.level or 1) >= 34 end },
      { target = "AIRDRAMON", requirement="ATK 48", unlocked=function(mon) return (mon.stats.attack or 1) >= 48 end },
      { target = "GESOMON", requirement="SPC 45", unlocked=function(mon) return (mon.stats.special or 1) >= 45 end },
      { target = "GEKOMON", requirement="LVL MIN 25", unlocked=function(mon) return (mon.level or 1) >= 25 end },
    },
    PAGUMON = {
      { target = "DEMIDEVIMON", requirement={"LVL MIN 19","SPC 30"}, unlocked=function(mon) return (mon.level or 1) >= 19 and (mon.stats.special or 0) >= 30 end },
      { target = "GOBURIMON", requirement={"LVL MIN 13","ATK 40"}, unlocked=function(mon) return (mon.level or 1) >= 13 and (mon.stats.attack or 0) >= 40 end },
      { target = "GAZIMON", requirement={"LVL MIN 15"}, unlocked=function(mon) return (mon.level or 1) >= 15 end },
      { target = "IMPMON", requirement={"SPC 45"}, unlocked=function(mon) return (mon.stats.special or 1) >= 45 end },
    },
    DEMIDEVIMON = {
      { target = "DEVIMON", requirement="LVL MIN 40", unlocked=function(mon) return (mon.level or 1) >= 40 end },
      { target = "ANGEMON", requirement={"LVL MIN 40","ATK 60"}, unlocked=function(mon) return (mon.level or 1) >= 40 and (mon.stats.attack or 0) >= 60 end },
      { target = "BAKEMON", requirement={"LVL MIN 33","SPD 57"}, unlocked=function(mon) return (mon.level or 1) >= 33 and (mon.stats.speed or 0) >= 57 end },
      { target = "SOULMON", requirement={"LVL MIN 33","SPC 57"}, unlocked=function(mon) return (mon.level or 1) >= 33 and (mon.stats.special or 0) >= 57 end },
      
    },
    GOTSUMON = {
      { target = "MONOCHROMON", requirement={"LVL MIN 28"}, unlocked=function(mon) return (mon.level or 1) >= 28 end },
      { target = "OGREMON", requirement={"ATK 65 "}, unlocked=function(mon) return (mon.stats.attack or 0) >= 65 end },
      { target = "GOLEMON", requirement={"DEF 55 "}, unlocked=function(mon) return (mon.stats.defense or 0) >= 55 end },
    },
    UPAMON = {
      { target = "ARMADILLOMON", requirement={"LVL MIN 18"}, unlocked=function(mon) return (mon.level or 1) >= 18 end },
      { target = "WORMMON", requirement={"LVL MIN 12"}, unlocked=function(mon) return (mon.level or 1) >= 12 end },
      { target = "GAZIMON", requirement="SPD 35", unlocked=function(mon) return (mon.stats.speed or 1) >= 35 end },
      { target = "SUNARIZAMON", requirement="DEF 40", unlocked=function(mon) return (mon.stats.defense or 1) >= 40 end },
    },
    ARMADILLOMON = {
      { target = "MONOCHROMON", requirement={"LVL MIN 25"}, unlocked=function(mon) return (mon.level or 1) >= 25 end },
      { target = "DRIMOGEMON", requirement={"ATK 60"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 60 end },
      { target = "ANKYLOMON", requirement={"LVL MIN 34"}, unlocked=function(mon) return (mon.level or 0) >= 34 end },
      { target = "DIGMON", requirement={"EGG OF KWNLDG."}, requiredItem="EGG_OF_KWNLDG", unlocked=function(_, game)
          return game ~= nil
            and (((game.save.inventory or {})["EGG_OF_KWNLDG"] or 0) > 0)
        end },
      -- Golemon
    },
    MUSHROOMON = {
      { target = "WOODMON", requirement={"DEF 60"}, unlocked=function(mon) return (mon.stats.defense or 0) >= 60 end },
      { target = "VEGIEMON", requirement={"SPC 52"}, unlocked=function(mon) return (mon.stats.special or 0) >= 52 end },
      { target = "TOGEMON", requirement={"ATK 55","SPD 60"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 55 and (mon.stats.speed or 0) >= 60 end },
    },
    GAZIMON = {
      { target = "GARURUMON", requirement={"SPC 70"}, unlocked=function(mon) return (mon.stats.special or 0) >= 70 end },
      { target = "LEOMON", requirement={"ATK 60"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 60 end },
      { target = "SORCERMON", requirement={"LVL MIN 32"}, unlocked=function(mon) return (mon.level or 1) >= 32 end },
    },
    CHUUMON = {
      { target = "SUKAMON", requirement={"LVL MIN 26"}, unlocked=function(mon) return (mon.level or 1) >= 26 end },
      { target = "BEARMON", requirement={"ATK 60"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 60 end },
      { target = "RAREMON", requirement={"HP 95"}, unlocked=function(mon) return (mon.stats.hp or 0) >= 95 end },
      { target = "NUMEMON", requirement={"LVL MIN 24"}, unlocked=function(mon) return (mon.level or 1) >= 24 end },
      
      -- Monzaemon
    },    
    MUCHOMON = {
      { target = "KOKATORIMON", requirement={"LVL MIN 24"}, unlocked=function(mon) return (mon.level or 1) >= 24 end },
      { target = "BIRDRAMON", requirement={"SPC 55"}, unlocked=function(mon) return (mon.stats.special or 0) >= 55 end },
      { target = "AIRDRAMON", requirement={"LVL MIN 27"}, unlocked=function(mon) return (mon.level or 1) >= 27 end },
    },
    KAPURIMON = {
      { target = "HAGURUMON", requirement={"LVL MIN 17"}, unlocked=function(mon) return (mon.level or 1 ) >= 17 end },
      { target = "SALAMON", requirement={"ATK 45"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 45 end },
      { target = "GABUMON", requirement={"SPC 40"}, unlocked=function(mon) return (mon.stats.special or 0) >= 40 end },
    },
    HAGURUMON = {
      { target = "GUARDROMON", requirement={"LVL MIN 36", "DEF 58"}, unlocked=function(mon) return (mon.level or 1 ) >= 36 and (mon.stats.defense or 0) >= 58 end },
      { target = "MONOCHROMON", requirement={"DEF 50"}, unlocked=function(mon) return (mon.stats.defense or 0) >= 50 end },
      { target = "DIGMON", requirement={"LVL MIN 30", "EGG OF KWNLDG."}, requiredItem="EGG_OF_KWNLDG", unlocked=function(mon, game)
          return (mon.level or 1) >= 30
            and game ~= nil
            and (((game.save.inventory or {})["EGG_OF_KWNLDG"] or 0) > 0)
        end },
      -- more steel mons necessary
    },
    LALAMON = {
      { target = "SUNFLOWMON", requirement={"LVL MIN 32"}, unlocked=function(mon) return (mon.level or 1 ) >= 32 end },
      { target = "KIWIMON", requirement={"SPD 45"}, unlocked=function(mon) return (mon.stats.speed or 0) >= 45 end },
      { target = "WOODMON", requirement={"DEF 50"}, unlocked=function(mon) return (mon.stats.defense or 0) >= 50 end },
    },
    FLORAMON = {
      { target = "KIWIMON", requirement={"LVL MIN 30"}, unlocked=function(mon) return (mon.level or 1 ) >= 30 end },
      { target = "VEGIEMON", requirement={"SPC 48"}, unlocked=function(mon) return (mon.stats.special or 0) >= 48 end },
    },
    OTAMAMON = {
      { target = "GEKOMON", requirement={"LVL MIN 25"}, unlocked=function(mon) return (mon.level or 1 ) >= 25 end },
      { target = "RAREMON", requirement={"LVL MIN 30", "HP 95"}, unlocked=function(mon) return (mon.level) >= 30 and (mon.stats.hp or 0) >= 95 end },
      { target = "IKKAKUMON", requirement={"ATK 65"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 65 end },
    },
    IMPMON = {
      { target = "WIZARDMON", requirement={"LVL MIN 36", "SPD 60"}, unlocked=function(mon) return (mon.level or 1) >= 36 and (mon.stats.speed or 0) >= 60 end },
      { target = "SORCERMON", requirement={"LVL MIN 36", "SPC 60"}, unlocked=function(mon) return (mon.level or 1) >= 36 and (mon.stats.special or 0) >= 60 end },
      { target = "DEVIMON", requirement={"SPD 70", "SPC 75"}, unlocked=function(mon) return (mon.stats.speed or 0) >= 70 and (mon.stats.special or 0) >= 75 end },
      { target = "BAKEMON", requirement={"LVL MIN 28"}, unlocked=function(mon) return (mon.level or 1 ) >= 28 end },
    },
    SUNARIZAMON = {
      { target = "ANKYLOMON", requirement={"DEF 65"}, unlocked=function(mon) return (mon.stats.defense or 0 ) >= 65 end },
      { target = "TORTAMON", requirement={"LVL MIN 36"}, unlocked=function(mon) return (mon.level or 1 ) >= 36 end },
      { target = "GOLEMON", requirement={"DEF 55 "}, unlocked=function(mon) return (mon.stats.defense or 0) >= 55 end },
    },
    VEEMON = {
      { target = "GREYMON", requirement={"ATK 55"}, unlocked=function(mon) return (mon.stats.attack or 0 ) >= 55 end },
      { target = "DRIMOGEMON", requirement={"HP 76"}, unlocked=function(mon) return (mon.stats.hp or 0 ) >= 76 end },
      { target = "FLAMEDRAMON", requirement={"EGG OF COURAGE."}, requiredItem="EGG_OF_COURAGE", unlocked=function(_, game)
          return game ~= nil
            and (((game.save.inventory or {})["EGG_OF_COURAGE"] or 0) > 0)
        end },
      { target = "LIGHDRAMON", requirement={"EGG OF FRNDSH."}, requiredItem="EGG_OF_FRNDSH", unlocked=function(_, game)
        return game ~= nil
          and (((game.save.inventory or {})["EGG_OF_FRNDSH"] or 0) > 0)
      end },
    },
    HAWKMON = {
      { target = "KOKATORIMON", requirement={"LVL MIN 30","ATK 50"}, unlocked=function(mon) return (mon.level or 1 ) >= 30 and (mon.stats.attack or 0) >= 50 end },
      { target = "KIWIMON", requirement={"SPD 45"}, unlocked=function(mon) return (mon.stats.speed or 0 ) >= 45 end },
    },
    RENAMON = {
      { target = "KYUBIMON", requirement={"LVL MIN 25","SPC 47"}, unlocked=function(mon) return (mon.level or 1 ) >= 25 and (mon.stats.special or 0) >= 47 end },
      { target = "GATOMON", requirement={"LVL MIN 30"}, unlocked=function(mon) return (mon.level or 1 ) >= 30 end },
      { target = "GRIZZLYMON", requirement = { "HP 80", "ATK 50"}, unlocked=function(mon) return (mon.stats.hp or 0 ) >= 80 and (mon.stats.attack or 0 ) >= 50 end },
    },
    KOKUWAMON = {
      { target = "KUWAGAMON", requirement={"LVL MIN 25","SPC 55"}, unlocked=function(mon) return (mon.level or 1 ) >= 25 and (mon.stats.special or 0) >= 55 end },
      { target = "KABUTERIMON", requirement={"LVL MIN 33","SPD 70"}, unlocked=function(mon) return (mon.level or 1 ) >= 33 and (mon.stats.speed or 0) >= 70 end },
      { target = "GUARDROMON", requirement={"LVL MIN 30"}, unlocked=function(mon) return (mon.level or 1 ) >= 30 end },
      -- Tankmon
    },
    ELECMON = {
      { target = "LEOMON", requirement={"ATK 50","SPD 55"}, unlocked=function(mon) return (mon.stats.attack or 1 ) >= 50 and (mon.stats.speed or 0) >= 55 end },
      { target = "GARURUMON", requirement={"SPC 60"}, unlocked=function(mon) return (mon.stats.special or 0 ) >= 60 end },
      -- Tyrannomon
    },

    CANDLEMON = {
      { target = "BAKEMON", requirement={"LVL MIN 28"}, unlocked=function(mon) return (mon.level or 1 ) >= 28 end },
      { target = "DEVIMON", requirement={"ATK 60", "SPC 65"}, unlocked=function(mon) return (mon.stats.attack or 0 ) >= 60 and (mon.stats.special or 0 ) >= 65 end },
      { target = "SOULMON", requirement={"LVL MIN 30"}, unlocked=function(mon) return (mon.level or 1 ) >= 30 end },
      { target = "MERAMON", requirement={"SPC 70"}, unlocked=function(mon) return (mon.stats.special or 0 ) >= 70 end },
    },
    BEARMON = {
      { target = "GRIZZLYMON", requirement={"LVL MIN 28"}, unlocked=function(mon) return (mon.level or 1 ) >= 28 end },
      { target = "KYUBIMON", requirement={"LVL MIN 30", "SPC 65"}, unlocked=function(mon) return (mon.level or 1 ) >= 30 and (mon.stats.special or 0 ) >= 65 end },
      { target = "MERAMON", requirement={"SPC 66"}, unlocked=function(mon) return (mon.stats.special or 0 ) >= 66 end },
    },
    PUNIMON = {
      { target = "TSUNOMON", requirement={"SPC 22"}, unlocked=function(mon) return (mon.stats.special or 0 ) >= 22 end },
      { target = "NYAROMON", requirement={"LVL MIN 10", "ATK 22"}, unlocked=function(mon) return (mon.level or 1 ) >= 10 and (mon.stats.attack or 0 ) >= 22 end },
      { target = "MOTIMON", requirement={"SPC 15"}, unlocked=function(mon) return (mon.stats.special or 0 ) >= 15 end },
    },
    BOTAMON = {
      { target = "KOROMON", requirement={"LVL MIN 16"}, unlocked=function(mon) return (mon.level or 1 ) >= 16 end },
      { target = "KAPURIMON", requirement={"LVL MIN 10"}, unlocked=function(mon) return (mon.level or 1 ) >= 10 end },
      { target = "VEEMON", requirement={"LVL MIN 20"}, unlocked=function(mon) return (mon.level or 1 ) >= 20 end },
    },
    POYOMON = {
      { target = "TOKOMON", requirement={"LVL MIN 18"}, unlocked=function(mon) return (mon.level or 1 ) >= 18 end },
      { target = "BUKAMON", requirement={"SPD 19", "ATK 21"}, unlocked=function(mon) return (mon.stats.speed or 1 ) >= 19 and (mon.stats.attack or 0 ) >= 21 end },
      { target = "YOKOMON", requirement={"SPC 24"}, unlocked=function(mon) return (mon.stats.special or 0 ) >= 24 end },
    },

  }

    local EXTRA_DEVOLUTION_ROUTES = {
    KUWAGAMON = { "KUNEMON" },
    SNIMON = { "WORMMON", "KUNEMON" },
    -- SALAMON = {"WANYAMON"},
    WOODMON = { "PALMON" },
    MOJYAMON = {"RENAMON"},

  }

  -- Persistent, uncapped bonuses live on the monster. The weak lookup lets every engine Stats.calc call reapply them without abusing capped Stat EXP.
  Stats.digivolutionBonusByDVs = Stats.digivolutionBonusByDVs
    or setmetatable({}, { __mode="k" })
  local bonusByDVs = Stats.digivolutionBonusByDVs
  if not Stats.digivolutionBonusHooked then
    Stats.digivolutionBonusHooked = true
    local nativeCalc = Stats.calc
    Stats.calc = function(def, level, dvs, statExp)
      local out = nativeCalc(def, level, dvs, statExp)
      local bonus = type(dvs) == "table" and bonusByDVs[dvs]
      if bonus then
        for _, key in ipairs(KEYS) do out[key] = out[key] + (tonumber(bonus[key]) or 0) end
      end
      return out
    end
  end

  local function bind(mon)
    if type(mon) ~= "table" then return end
    mon.digivolutionBonus = mon.digivolutionBonus or {}
    if type(mon.dvs) == "table" then bonusByDVs[mon.dvs] = mon.digivolutionBonus end
  end

  local function recordDigivolution(mon, source, target)
    mon.digivolutionHistory = type(mon.digivolutionHistory) == "table"
      and mon.digivolutionHistory or {}
    local history = mon.digivolutionHistory
    if #history == 0 or history[#history] ~= source then
      history[#history + 1] = source
    end
    history[#history + 1] = target
  end
  local function bindSave(save)
    if type(save) ~= "table" then return end
    for _, mon in ipairs(save.party or {}) do bind(mon) end
    for _, box in ipairs(save.boxes or {}) do
      for _, mon in ipairs(box or {}) do bind(mon) end
    end
    if save.daycare and save.daycare.mon then bind(save.daycare.mon) end
  end
  mod.events:on("game.ready", function(ev) bindSave(ev.game and ev.game.save) end)

  local function show(game, message, onDone, opts)
    game.stack:push(TextBox.new(game, Strings(message), onDone, opts))
  end
  local function requirementText(route)
    return type(route.requirement) == "table" and table.concat(route.requirement, "\n")
      or route.requirement or "No requirement."
  end
  local function resetMon(game, mon)
    bind(mon)
    local def = assert(game.data.pokemon[mon.species], "unknown target "..tostring(mon.species))
    mon.level = 1
    mon.exp = Growth.expForLevel(def.growthRate, 1)
    mon.moves = {}
    for _, moveId in ipairs(Pokemon.movesAtLevel(def, 1)) do
      local move = game.data.moves[moveId]
      mon.moves[#mon.moves+1] = { id=moveId, pp=move and move.pp or 0 }
    end
    mon.stats = Stats.calc(def, 1, mon.dvs or {}, mon.statExp)
    mon.hp, mon.status = mon.stats.hp, nil
  end

  local function evolutionPaths(species)
    local out = {}
    for _, route in ipairs(ROUTES[species] or {}) do
      out[#out+1] = { kind="evolve", target=route.target,
        requirement=route.requirement, requiredItem=route.requiredItem,
        unlocked=route.unlocked }
    end
    return out
  end
  local function devolutionPaths(species)
    local out, seen = {}, {}
    local function add(target)
      if seen[target] then return end
      seen[target] = true
      out[#out+1] = { kind="devolve", target=target,
        requirement="BONUS EACH 5 LVL", unlocked=function() return true end }
    end
    for source, routes in pairs(ROUTES) do
      for _, route in ipairs(routes) do if route.target == species then add(source) end end
    end
    for _, target in ipairs(EXTRA_DEVOLUTION_ROUTES[species] or {}) do add(target) end
    table.sort(out, function(a,b) return a.target < b.target end)
    return out
  end

  -- Every five levels adds the next value in a triangular progression:
  -- 5-9 -> 1, 10-14 -> 3, 15-19 -> 6, ... 100 -> 210. The resulting
  -- uncapped pool is distributed proportionally by DV with stable rounding.
  local function devolutionAward(mon)
    local tiers = math.floor((mon.level or 1) / 5)
    local pool = tiers * (tiers + 1) / 2
    local award, ranked, total, used = {}, {}, 0, 0
    for _, key in ipairs(KEYS) do total = total + (tonumber(mon.dvs and mon.dvs[key]) or 0) + 1 end
    for _, key in ipairs(KEYS) do
      local exact = pool * ((tonumber(mon.dvs and mon.dvs[key]) or 0) + 1) / total
      award[key] = math.floor(exact); used = used + award[key]
      ranked[#ranked+1] = { key=key, remainder=exact-award[key] }
    end
    table.sort(ranked, function(a,b)
      return a.remainder == b.remainder and ORDER[a.key] < ORDER[b.key]
        or a.remainder > b.remainder
    end)
    for i=1,pool-used do award[ranked[i].key] = award[ranked[i].key] + 1 end
    return award
  end

  local function outline(x,y,w,h,r,g,b)
    love.graphics.setColor(r or 0,g or 0,b or 0,1)
    love.graphics.rectangle("fill",x,y,w,1); love.graphics.rectangle("fill",x,y+h-1,w,1)
    love.graphics.rectangle("fill",x,y,1,h); love.graphics.rectangle("fill",x+w-1,y,1,h)
    love.graphics.setColor(0,0,0,1)
  end

  local Confirm = {}; Confirm.__index=Confirm; Confirm.isOpaque=true
  local function baseStatExtremes(def)
    local base = def and def.baseStats or {}
    local lowest, highest
    for _, key in ipairs(KEYS) do
      local value = tonumber(base[key]) or 0
      lowest = lowest == nil and value or math.min(lowest, value)
      highest = highest == nil and value or math.max(highest, value)
    end
    return lowest, highest
  end

  local function parsedRequirements(route)
    local level, stats = nil, {}
    local requirements = type(route.requirement) == "table"
      and route.requirement or { route.requirement }
    for _, requirement in ipairs(requirements) do
      local text = tostring(requirement or ""):upper():match("^%s*(.-)%s*$")
      local requiredLevel = text:match("LVL%s+MIN%s+(%d+)")
        or text:match("LVL%s+(%d+)")
      if requiredLevel then level = tonumber(requiredLevel) end
      for _, key in ipairs(KEYS) do
        local value = text:match("^" .. LABEL[key] .. "%s+(%d+)")
        if value then stats[key] = tonumber(value) end
      end
    end
    return level, stats
  end

  function Confirm.new(game, menu, route)
    local mon = menu.mon
    local target = assert(game.data.pokemon[route.target],
      "unknown Digivolution target "..tostring(route.target))
    -- Preview the actual target species at level 1. Stats.calc also includes
    -- bonuses earned on earlier cycles. A new award is added only when
    -- devolving.
    local targetStats = Stats.calc(target, 1, mon.dvs or {}, mon.statExp)
    local lowestBaseStat, highestBaseStat = baseStatExtremes(target)
    local requiredLevel, requiredStats = parsedRequirements(route)
    local requiredItem = route.requiredItem
      and game.data.items[route.requiredItem] or nil
    return setmetatable({ game=game, menu=menu, mon=mon, route=route,
      award=route.kind=="devolve" and devolutionAward(mon) or {},
      targetStats=targetStats, lowestBaseStat=lowestBaseStat,
      highestBaseStat=highestBaseStat, requiredLevel=requiredLevel,
      requiredStats=requiredStats, requiredItem=requiredItem,
      yes=true }, Confirm)
  end
  function Confirm:update()
    local input = self.game.input
    if input:wasPressed("left") or input:wasPressed("right") then
      self.yes=not self.yes; Sound.play(self.game.data,"Press_AB")
    elseif input:wasPressed("b") then
      Sound.play(self.game.data,"Press_AB"); self.game.stack:pop()
    elseif input:wasPressed("a") then
      Sound.play(self.game.data,"Press_AB")
      if not self.yes then self.game.stack:pop(); return end
      if self.route.kind == "evolve" then
        local ok, unlocked = pcall(self.route.unlocked, self.mon, self.game)
        if not ok or not unlocked then
          show(self.game,"Can't digivolve\nyet!")
          return
        end
      end
      local oldLevel = self.mon.level
      local oldSpecies = self.mon.species
      self.game.stack:pop()
      self.mon.level=1
      Evolution.evolve(self.game,self.mon,self.route.target,function()
        if self.mon.species ~= self.route.target then self.mon.level=oldLevel; return end
        bind(self.mon)
        recordDigivolution(self.mon, oldSpecies, self.route.target)
        if self.route.kind == "devolve" then
          for _,key in ipairs(KEYS) do
            self.mon.digivolutionBonus[key]=(tonumber(self.mon.digivolutionBonus[key]) or 0)
              +(self.award[key] or 0)
          end
        end
        resetMon(self.game,self.mon)
        self.game.stack:pop()
      end,self.route.kind=="devolve" and "DEVOLUTION" or "DIGIVOLUTION")
    end
  end
  function Confirm:draw()
    love.graphics.setColor(1,1,1,1); love.graphics.rectangle("fill",0,0,160,144)
    love.graphics.setColor(0,0,0,1)
    local target=self.game.data.pokemon[self.route.target]
    local name=(target and target.name) or self.route.target
    Font.draw(name,math.max(0,math.floor(80-Font.width(name)/2)),8)
    if self.requiredItem then
      local itemRequirement=(self.requiredItem.name or self.route.requiredItem).." REQ!"
      Font.draw(itemRequirement,
        math.max(0,math.floor(80-Font.width(itemRequirement)/2)),20)
    end
    local types=target and target.types or {}
    local displayTypes={}
    for _,typeId in ipairs(types) do
      displayTypes[#displayTypes+1]=tostring(typeId):gsub("_TYPE$","")
    end
    local typeText=#displayTypes>0 and table.concat(displayTypes,"/") or "NO TYPE"
    if self.route.kind=="devolve" then
      Font.draw("BASE",32,34); Font.draw("BONUS",68,34); Font.draw("TOTAL",112,34)
    else
      Font.draw("BASE",32,34)
      local reqTitle="REQ"
      if self.requiredLevel then
        reqTitle="REQ:LV"..self.requiredLevel
        if (self.mon.level or 1)<self.requiredLevel then reqTitle=reqTitle.." !" end
      end
      Font.draw(reqTitle,112-math.floor(Font.width(reqTitle)/2),34)
    end
    if not Confirm.greenShader and love.graphics.newShader then
      local ok, shader = pcall(love.graphics.newShader, [[
        vec4 effect(vec4 color, Image texture, vec2 uv, vec2 screen) {
          vec4 pixel = Texel(texture, uv);
          return vec4(color.rgb, pixel.a * color.a);
        }
      ]])
      Confirm.greenShader = ok and shader or false
    end
    for row,key in ipairs(KEYS) do
      local y=42+(row-1)*14
      local current=tonumber(self.targetStats and self.targetStats[key]) or 0
      local gain=self.award[key] or 0
      Font.draw(LABEL[key],8,y)
      if self.route.kind == "devolve" then
        Font.draw(tostring(current),40,y)
        local previousShader = love.graphics.getShader and love.graphics.getShader()
        if Confirm.greenShader then love.graphics.setShader(Confirm.greenShader) end
        love.graphics.setColor(0,0.72,0,1); Font.draw("("..gain..")",72,y)
        if Confirm.greenShader then love.graphics.setShader(previousShader) end
        PaletteFX.markTrueColor(72,y,32,8)
        love.graphics.setColor(0,0,0,1); Font.draw(tostring(current+gain),112,y)
      else
        -- Color the target's strongest and weakest innate attributes. The
        -- displayed value remains its real level-1 preview, but the ranking is
        -- based solely on the baseStats from the species registration.
        local base = tonumber(target and target.baseStats and target.baseStats[key]) or 0
        local previousShader = love.graphics.getShader and love.graphics.getShader()
        if Confirm.greenShader then love.graphics.setShader(Confirm.greenShader) end
        if self.highestBaseStat ~= self.lowestBaseStat and base == self.highestBaseStat then
          love.graphics.setColor(0,0.72,0,1)
        elseif self.highestBaseStat ~= self.lowestBaseStat and base == self.lowestBaseStat then
          love.graphics.setColor(0.86,0,0,1)
        else
          love.graphics.setColor(0,0,0,1)
        end
        local currentText=tostring(current)
        local currentX=48-math.floor(Font.width(currentText)/2)
        Font.draw(currentText,currentX,y)
        if Confirm.greenShader then love.graphics.setShader(previousShader) end
        PaletteFX.markTrueColor(currentX,y,Font.width(currentText),8)
        love.graphics.setColor(0,0,0,1)
        local required=self.requiredStats[key]
        local requiredText=required and tostring(required) or "-"
        local requiredX=112-math.floor(Font.width(requiredText)/2)
        Font.draw(requiredText,requiredX,y)
        if required
          and (tonumber(self.mon.stats and self.mon.stats[key]) or 0)<required then
          Font.draw("!",requiredX+Font.width(requiredText)+8,y)
        end
      end
    end
    Font.draw(typeText,math.floor(80-Font.width(typeText)/2),111)
    Font.drawCode(Theme.cursor,self.yes and 28 or 92,124)
    Font.draw(Strings("YES"),40,124); Font.draw(Strings("NO"),104,124)
    PaletteFX.markTrueColor(0,0,160,144); love.graphics.setColor(1,1,1,1)
  end

  local Menu={}; Menu.__index=Menu; Menu.isOpaque=true
  local VISIBLE_PATHS=4
  Menu.digimonHDIcons=true
  function Menu.new(game,mon)
    bind(mon)
    local paths={evolve=evolutionPaths(mon.species),devolve=devolutionPaths(mon.species)}
    return setmetatable({game=game,mon=mon,paths=paths,
      mode=#paths.evolve>0 and "evolve" or "devolve",
      indices={evolve=1,devolve=1},first={evolve=1,devolve=1}},Menu)
  end
  function Menu:list() return self.paths[self.mode] end
  function Menu:selectedRoute() return self:list()[self.indices[self.mode]] end
  function Menu:switchMode()
    self.mode=self.mode=="evolve" and "devolve" or "evolve"
    local list=self:list()
    if #list>0 then
      self.indices[self.mode]=math.max(1,math.min(self.indices[self.mode],#list))
      self.first[self.mode]=math.max(1,math.min(self.first[self.mode],
        math.max(1,#list-VISIBLE_PATHS+1)))
    end
  end
  function Menu:moveSelection(direction)
    local list,index=self:list(),self.indices[self.mode]
    if #list==0 then return end
    if direction<0 then index=index>1 and index-1 or #list
    else index=index<#list and index+1 or 1 end
    local first=self.first[self.mode] or 1
    if index<first then first=index
    elseif index>first+VISIBLE_PATHS-1 then first=index-VISIBLE_PATHS+1 end
    self.indices[self.mode]=index
    self.first[self.mode]=math.max(1,math.min(first,
      math.max(1,#list-VISIBLE_PATHS+1)))
  end
  function Menu:chooseEvolution(route)
    self.game.stack:push(Confirm.new(self.game,self,route))
  end
  function Menu:chooseRoute()
    local route=self:selectedRoute()
    if not route then show(self.game,"No known paths.")
    elseif route.kind=="devolve" then self.game.stack:push(Confirm.new(self.game,self,route))
    else self:chooseEvolution(route) end
  end
  function Menu:update()
    local input,list=self.game.input,self:list()
    if input:wasPressed("left") or input:wasPressed("right") then Sound.play(self.game.data,"Press_AB"); self:switchMode()
    elseif input:wasPressed("up") and #list>0 then self:moveSelection(-1)
    elseif input:wasPressed("down") and #list>0 then self:moveSelection(1)
    elseif input:wasPressed("b") then Sound.play(self.game.data,"Press_AB"); self.game.stack:pop()
    elseif input:wasPressed("a") then Sound.play(self.game.data,"Press_AB"); self:chooseRoute() end
  end
  function Menu:draw()
    love.graphics.setColor(1,1,1,1); love.graphics.rectangle("fill",0,0,160,144)
    love.graphics.setColor(0,0,0,1)
    local title=self.mode=="evolve" and Strings("DIGIVOLUTION") or Strings("DEVOLUTION")
    love.graphics.push(); love.graphics.translate(16,8); love.graphics.scale(-1,1); Font.drawCode(Theme.cursor,0,0); love.graphics.pop()
    Font.draw(title,math.floor(80-Font.width(title)/2),8); Font.drawCode(Theme.cursor,144,8)
    local def=self.game.data.pokemon[self.mon.species]
    Font.draw(self.mon.nickname or (def and def.name) or self.mon.species,8,24)
    Font.draw(Strings("Lv.%d",self.mon.level or 1),112,24)
    local list,index,max=self:list(),self.indices[self.mode],VISIBLE_PATHS
    local first=self.first[self.mode] or 1
    for i=first,math.min(#list,first+max-1) do
      local route,y=list[i],44+(i-first)*18
      local target=self.game.data.pokemon[route.target]
      local name=(target and target.name) or route.target
      love.graphics.setColor(1,1,1,1)
      PartyMenu.drawIcon(self.game,{species=route.target,hp=1,stats={hp=1}},8,y,false,0)
      love.graphics.setColor(0,0,0,1); Font.draw(name,32,y)
      if i==index then
        Font.drawCode(Theme.cursor,0,y)
        local w=math.min(152,Font.width(name)+28)
        if route.unlocked(self.mon, self.game) then outline(6,y-1,w,17,0,0,0) else outline(6,y-1,w,17,0.85,0,0) end
      end
    end
    if first>1 then
      love.graphics.push()
      love.graphics.translate(152,44)
      love.graphics.rotate(math.pi)
      Font.drawCode(Theme.moreArrow,0,0)
      love.graphics.pop()
    end
    if first+max-1<#list then Font.drawCode(Theme.moreArrow,144,104) end
    if #list==0 then Font.draw(Strings("No known paths."),16,60) end
    PaletteFX.markTrueColor(0,0,160,144); love.graphics.setColor(1,1,1,1)
  end

  mod.hooks:wrap("ui.party.submenu",function(next,game,items,mon,context)
    local out=next(game,items,mon,context)
    if type(out)~="table" or (context and context.battle) then return out end
    for _,entry in ipairs(out) do if entry.id=="digivolve" then return out end end
    local entry={id="digivolve",label=Strings("DIGIVOLV"),onSelect=function(selected,selectedGame)
      selectedGame.stack:push(Menu.new(selectedGame,selected))
    end}
    local at=#out+1
    for i,item in ipairs(out) do if item.action=="stats" then at=i+1; break end end
    table.insert(out,at,entry); return out
  end)
end
