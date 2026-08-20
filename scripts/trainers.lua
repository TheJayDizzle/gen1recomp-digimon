return function (mod)


mod.content.trainers:patch("OPP_BROCK",{
  parties = {
    {{ level = 13, species = "GOTSUMON"}, {level = 14, species = "MONOCHROMON"}}
  }
})

mod.content.trainers:patch("OPP_BUG_CATCHER", { 
    parties = { 
        -- Viridian Forst
        { { level = 8, species = "MINOMON", }, { level = 6, species = "KUNEMON", }, },
        { { level = 9, species = "MINOMON", }, { level = 8, species = "KUNEMON", }, { level = 10, species = "MINOMON", }, },
        { { level = 12, species = "KUNEMON", }, },
        -- Route 3
        { { level = 12, species = "KUNEMON", }, { level = 12, species = "MINOMON", }, { level = 14, species = "KUNEMON", }, },
        { { level = 13, species = "MINOMON", }, { level = 11, species = "MUSHROOMON", }, { level = 11, species = "KUNEMON", }, { level = 9, species = "WORMMON", }, },
        { { level = 15, species = "KUNEMON", }, { level = 15, species = "WORMMON", }, },
        -- Mt. Moon
        { { level = 12, species = "MINOMON", }, { level = 12, species = "TENTOMON", }, },
        { { level = 12, species = "KUNEMON", }, { level = 12, species = "WORMMON", }, { level = 13, species = "KUNEMON", }, },
        -- Nugget Bridge / Route 24
        { { level = 16, species = "KUNEMON", }, { level = 18, species = "WORMMON", }, },
        -- Route 6
        { { level = 23, species = "MINOMON", }, { level = 21, species = "KUNEMON", }, { level = 23, species = "TENTOMON", }, },
        { { level = 25, species = "KUWAGAMON", }, },
        --
        { { level = 18, species = "WORMMON", }, { level = 18, species = "KUNEMON", }, { level = 18, species = "SNIMON", }, },
        { { level = 19, species = "FLYMON", }, { level = 19, species = "FLYMON", }, },
        { { level = 20, species = "KUNEMON", }, { level = 20, species = "MINOMON", }, { level = 20, species = "SNIMON", }, },
     }, 
})

mod.content.trainers:patch("OPP_HIKER", {
  parties = {
    -- Mt. Moon
    { { level = 13, species = "PAGUMON" }, { level = 12, species = "UPAMON" }, { level = 12, species = "GOTSUMON" } },
    -- Route 25
    { { level = 19, species = "MOJYAMON" }, { level = 20, species = "ARMADILLOMON" } },
    { { level = 18, species = "GOTSUMON" }, { level = 17, species = "GOTSUMON" }, { level = 18, species = "MOJYAMON" }, { level = 19, species = "GOTSUMON" } },
    { { level = 22, species = "MONOCHROMON" } },
    -- 
    { { level = 21, species = "GEODUDE" }, { level = 21, species = "ONIX" } },
    { { level = 20, species = "GEODUDE" }, { level = 20, species = "MACHOP" }, { level = 20, species = "GEODUDE" } },
    { { level = 21, species = "GEODUDE" }, { level = 21, species = "ONIX" } },
    { { level = 19, species = "ONIX" }, { level = 19, species = "GRAVELER" } },
    { { level = 21, species = "GEODUDE" }, { level = 21, species = "GEODUDE" }, { level = 21, species = "GRAVELER" } },
    { { level = 25, species = "GEODUDE" } },
    { { level = 20, species = "MACHOP" }, { level = 20, species = "ONIX" } },
    { { level = 19, species = "GEODUDE" }, { level = 19, species = "MACHOP" }, { level = 19, species = "GEODUDE" }, { level = 19, species = "GEODUDE" } },
    { { level = 20, species = "ONIX" }, { level = 20, species = "ONIX" }, { level = 20, species = "GEODUDE" } },
    { { level = 21, species = "GEODUDE" }, { level = 21, species = "GRAVELER" } },
  },
})

mod.content.trainers:patch("OPP_JR_TRAINER_F", {
  parties = {
    -- Misty Gym
    { { level = 19, species = "GIZAMON" } },
    -- Route 6
    { { level = 22, species = "CHUUMON" }, { level = 24, species = "GATOMON" } },
    { { level = 21, species = "MUCHOMON" }, { level = 21, species = "MUCHOMON" }, { level = 21, species = "MUCHOMON" } },
    -- 
    { { level = 22, species = "BULBASAUR" } },
    { { level = 18, species = "ODDISH" }, { level = 18, species = "BELLSPROUT" }, { level = 18, species = "ODDISH" }, { level = 18, species = "BELLSPROUT" } },
    { { level = 23, species = "MEOWTH" } },
    { { level = 20, species = "PIKACHU" }, { level = 20, species = "CLEFAIRY" } },
    { { level = 21, species = "PIDGEY" }, { level = 21, species = "PIDGEOTTO" } },
    { { level = 21, species = "JIGGLYPUFF" }, { level = 21, species = "PIDGEY" }, { level = 21, species = "MEOWTH" } },
    { { level = 22, species = "ODDISH" }, { level = 22, species = "BULBASAUR" } },
    { { level = 24, species = "BULBASAUR" }, { level = 24, species = "IVYSAUR" } },
    { { level = 24, species = "PIDGEY" }, { level = 24, species = "MEOWTH" }, { level = 24, species = "RATTATA" }, { level = 24, species = "PIKACHU" }, { level = 24, species = "MEOWTH" } },
    { { level = 30, species = "POLIWAG" }, { level = 30, species = "POLIWAG" } },
    { { level = 27, species = "PIDGEY" }, { level = 27, species = "MEOWTH" }, { level = 27, species = "PIDGEY" }, { level = 27, species = "PIDGEOTTO" } },
    { { level = 28, species = "GOLDEEN" }, { level = 28, species = "POLIWAG" }, { level = 28, species = "HORSEA" } },
    { { level = 31, species = "GOLDEEN" }, { level = 31, species = "SEAKING" } },
    { { level = 22, species = "BELLSPROUT" }, { level = 22, species = "CLEFAIRY" } },
    { { level = 20, species = "MEOWTH" }, { level = 20, species = "ODDISH" }, { level = 20, species = "PIDGEY" } },
    { { level = 19, species = "PIDGEY" }, { level = 19, species = "RATTATA" }, { level = 19, species = "RATTATA" }, { level = 19, species = "BELLSPROUT" } },
    { { level = 28, species = "GLOOM" }, { level = 28, species = "ODDISH" }, { level = 28, species = "ODDISH" } },
    { { level = 29, species = "PIKACHU" }, { level = 29, species = "RAICHU" } },
    { { level = 33, species = "CLEFAIRY" } },
    { { level = 29, species = "BELLSPROUT" }, { level = 29, species = "ODDISH" }, { level = 29, species = "TANGELA" } },
    { { level = 30, species = "TENTACOOL" }, { level = 30, species = "HORSEA" }, { level = 30, species = "SEEL" } },
  },
})

mod.content.trainers:patch("OPP_JR_TRAINER_M", {
  parties = {
    -- Brock Gym
    { { level = 12, species = "UPAMON" }, { level = 13, species = "ARMADILLOMON" } },
    -- Nugget Brdige
    { { level = 18, species = "CHUUMON" }, { level = 17, species = "AIRDRAMON" } },
    { { level = 20, species = "MOJYAMON" } },
    -- Route 6
    { { level = 25, species = "FRIGIMON" } },
    { { level = 23, species = "IMPMON" }, { level = 16, species = "SUKAMON" } },
    --
    { { level = 18, species = "DIGLETT" }, { level = 18, species = "DIGLETT" }, { level = 18, species = "SANDSHREW" } },
    { { level = 21, species = "GROWLITHE" }, { level = 21, species = "CHARMANDER" } },
    { { level = 19, species = "RATTATA" }, { level = 19, species = "DIGLETT" }, { level = 19, species = "EKANS" }, { level = 19, species = "SANDSHREW" } },
    { { level = 29, species = "NIDORAN_M" }, { level = 29, species = "NIDORINO" } },
  },
})

mod.content.trainers:patch("OPP_LASS", {
  parties = {
    -- Route 3
    { { level = 11, species = "MUCHOMON" }, { level = 12, species = "MUCHOMON" } },
    { { level = 14, species = "CHUUMON" }, { level = 12, species = "SALAMON" } },
    { { level = 15, species = "PATAMON" } },
    -- Route 4, Mewtwo Cave
    { { level = 31, species = "KUWAGAMON" }, { level = 31, species = "SNIMON" }, { level = 31, species = "KABUTERIMON" } },
    -- Mt. Moon
    { { level = 11, species = "PALMON" }, { level = 11, species = "SALAMON" } },
    { { level = 14, species = "BIYOMON" } },
    -- Nugget Bridge / Route 24
    { { level = 18, species = "MUCHOMON" }, { level = 18, species = "SALAMON" } },
    { { level = 17, species = "GAZIMON" }, { level = 19, species = "KIWIMON" } },
    -- Route 25
    { { level = 20, species = "FLORAMON" }, { level = 21, species = "SALAMON" } },
    { { level = 19, species = "LALAMON" }, { level = 20, species = "MUCHOMON" }, { level = 21, species = "LALAMON" } },
    -- 
    { { level = 18, species = "PIDGEY" }, { level = 18, species = "NIDORAN_F" } },
    { { level = 18, species = "RATTATA" }, { level = 18, species = "PIKACHU" } },
    { { level = 23, species = "NIDORAN_F" }, { level = 23, species = "NIDORINA" } },
    { { level = 24, species = "MEOWTH" }, { level = 24, species = "MEOWTH" }, { level = 24, species = "MEOWTH" } },
    { { level = 19, species = "PIDGEY" }, { level = 19, species = "RATTATA" }, { level = 19, species = "NIDORAN_M" }, { level = 19, species = "MEOWTH" }, { level = 19, species = "PIKACHU" } },
    { { level = 22, species = "CLEFAIRY" }, { level = 22, species = "CLEFAIRY" } },
    { { level = 23, species = "BELLSPROUT" }, { level = 23, species = "WEEPINBELL" } },
    { { level = 23, species = "ODDISH" }, { level = 23, species = "GLOOM" } },
  },
})

mod.content.trainers:patch("OPP_MISTY",{
  parties = {
    {{ level = 22, species = "GOMAMON"}, {level = 24, species = "SEADRAMON"}}
  }
})

mod.content.trainers:patch("OPP_RIVAL1", {
  parties = {
    -- OAK
    { { level = 5, species = "BUKAMON" } },
    { { level = 5, species = "TANEMON" } },
    { { level = 5, species = "KOROMON" } },
    
    --ROUTE 22
    { { level = 9, species = "MUCHOMON" }, { level = 8, species = "BUKAMON" },},
    { { level = 9, species = "MUCHOMON" }, { level = 8, species = "TANEMON" },},
    { { level = 9, species = "MUCHOMON" }, { level = 8, species = "KOROMON" },},
    
    -- NUGGET BRIDGE
    { { level = 18, species = "MUCHOMON" }, { level = 15, species = "MOTIMON" }, { level = 15, species = "NYAROMON" }, { level = 17, species = "GOMAMON" }, },
    { { level = 18, species = "MUCHOMON" }, { level = 15, species = "MOTIMON" }, { level = 15, species = "NYAROMON" }, { level = 17, species = "PALMON" }, },
    { { level = 18, species = "MUCHOMON" }, { level = 15, species = "MOTIMON" }, { level = 15, species = "NYAROMON" }, { level = 17, species = "AGUMON" }, },
  }
})

mod.content.trainers:patch("OPP_RIVAL2", {
  parties = {
    -- M.S. ANNE
    { { level = 19, species = "MUCHOMON" }, { level = 16, species = "SALAMON" }, { level = 18, species = "TENTOMON" }, { level = 20, species = "GABUMON" } },
    { { level = 19, species = "MUCHOMON" }, { level = 16, species = "SALAMON" }, { level = 18, species = "TENTOMON" }, { level = 20, species = "PALMON" } },
    { { level = 19, species = "MUCHOMON" }, { level = 16, species = "SALAMON" }, { level = 18, species = "TENTOMON" }, { level = 20, species = "AGUMON" } },

    { { level = 25, species = "KOKATORIMON" }, { level = 23, species = "GROWLITHE" }, { level = 22, species = "EXEGGCUTE" }, { level = 20, species = "TENTOMON" }, { level = 25, species = "GABUMON" } },
    { { level = 25, species = "KOKATORIMON" }, { level = 23, species = "GYARADOS" }, { level = 22, species = "GROWLITHE" }, { level = 20, species = "TENTOMON" }, { level = 25, species = "PALMON" } },
    { { level = 25, species = "KOKATORIMON" }, { level = 23, species = "EXEGGCUTE" }, { level = 22, species = "GYARADOS" }, { level = 20, species = "TENTOMON" }, { level = 25, species = "AGUMON" } },

    { { level = 37, species = "KOKATORIMON" }, { level = 38, species = "GROWLITHE" }, { level = 35, species = "EXEGGCUTE" }, { level = 35, species = "KABUTERIMON" }, { level = 40, species = "GARURUMON" } },
    { { level = 37, species = "KOKATORIMON" }, { level = 38, species = "GYARADOS" }, { level = 35, species = "GROWLITHE" }, { level = 35, species = "KABUTERIMON" }, { level = 40, species = "TOGEMON" } },
    { { level = 37, species = "KOKATORIMON" }, { level = 38, species = "EXEGGCUTE" }, { level = 35, species = "GYARADOS" }, { level = 35, species = "KABUTERIMON" }, { level = 40, species = "GREYMON" } },

    { { level = 47, species = "KOKATORIMON" }, { level = 45, species = "RHYHORN" }, { level = 45, species = "GROWLITHE" }, { level = 47, species = "EXEGGCUTE" }, { level = 50, species = "KABUTERIMON" }, { level = 53, species = "GARURUMON" } },
    { { level = 47, species = "KOKATORIMON" }, { level = 45, species = "RHYHORN" }, { level = 45, species = "GYARADOS" }, { level = 47, species = "GROWLITHE" }, { level = 50, species = "KABUTERIMON" }, { level = 53, species = "TOGEMON" } },
    { { level = 47, species = "KOKATORIMON" }, { level = 45, species = "RHYHORN" }, { level = 45, species = "EXEGGCUTE" }, { level = 47, species = "GYARADOS" }, { level = 50, species = "KABUTERIMON" }, { level = 53, species = "GREYMON" } },
  }
})

mod.content.trainers:patch("OPP_RIVAL3", {
  parties = {
    { { level = 61, species = "KOKATORIMON" }, { level = 59, species = "ALAKAZAM" }, { level = 61, species = "RHYDON" }, { level = 61, species = "ARCANINE" }, { level = 63, species = "EXEGGUTOR" }, { level = 65, species = "GARURUMON" } },
    { { level = 61, species = "KOKATORIMON" }, { level = 59, species = "ALAKAZAM" }, { level = 61, species = "RHYDON" }, { level = 61, species = "GYARADOS" }, { level = 63, species = "ARCANINE" }, { level = 65, species = "TOGEMON" } },
    { { level = 61, species = "KOKATORIMON" }, { level = 59, species = "ALAKAZAM" }, { level = 61, species = "RHYDON" }, { level = 61, species = "EXEGGUTOR" }, { level = 63, species = "GYARADOS" }, { level = 65, species = "GREYMON" } },
  }
})

mod.content.trainers:patch("OPP_ROCKET", {
  parties = {
    -- Mt. Moon
    { { level = 14, species = "CHUUMON" }, { level = 15, species = "PAGUMON" } },
    { { level = 13, species = "ARMADILLOMON" }, { level = 13, species = "CHUUMON" }, { level = 13, species = "PAGUMON" } },
    { { level = 14, species = "PAGUMON" }, { level = 15, species = "MUSHROOMON" } },
    { { level = 18, species = "SUKAMON" } },
    --
    { { level = 17, species = "MACHOP" }, { level = 17, species = "DROWZEE" } },
    -- Nugget Bridge / Route 24
    { { level = 17, species = "GOBURIMON" }, { level = 19, species = "VEGIEMON" } },
    -- 
    { { level = 20, species = "RATICATE" }, { level = 20, species = "ZUBAT" } },
    { { level = 21, species = "DROWZEE" }, { level = 21, species = "MACHOP" } },
    { { level = 21, species = "RATICATE" }, { level = 21, species = "RATICATE" } },
    { { level = 20, species = "GRIMER" }, { level = 20, species = "KOFFING" }, { level = 20, species = "KOFFING" } },
    { { level = 19, species = "RATTATA" }, { level = 19, species = "RATICATE" }, { level = 19, species = "RATICATE" }, { level = 19, species = "RATTATA" } },
    { { level = 22, species = "GRIMER" }, { level = 22, species = "KOFFING" } },
    { { level = 17, species = "ZUBAT" }, { level = 17, species = "KOFFING" }, { level = 17, species = "GRIMER" }, { level = 17, species = "ZUBAT" }, { level = 17, species = "RATICATE" } },
    { { level = 20, species = "RATTATA" }, { level = 20, species = "RATICATE" }, { level = 20, species = "DROWZEE" } },
    { { level = 21, species = "MACHOP" }, { level = 21, species = "MACHOP" } },
    { { level = 23, species = "SANDSHREW" }, { level = 23, species = "EKANS" }, { level = 23, species = "SANDSLASH" } },
    { { level = 23, species = "EKANS" }, { level = 23, species = "SANDSHREW" }, { level = 23, species = "ARBOK" } },
    { { level = 21, species = "KOFFING" }, { level = 21, species = "ZUBAT" } },
    { { level = 25, species = "ZUBAT" }, { level = 25, species = "ZUBAT" }, { level = 25, species = "GOLBAT" } },
    { { level = 26, species = "KOFFING" }, { level = 26, species = "DROWZEE" } },
    { { level = 23, species = "ZUBAT" }, { level = 23, species = "RATTATA" }, { level = 23, species = "RATICATE" }, { level = 23, species = "ZUBAT" } },
    { { level = 26, species = "DROWZEE" }, { level = 26, species = "KOFFING" } },
    { { level = 29, species = "CUBONE" }, { level = 29, species = "ZUBAT" } },
    { { level = 25, species = "GOLBAT" }, { level = 25, species = "ZUBAT" }, { level = 25, species = "ZUBAT" }, { level = 25, species = "RATICATE" }, { level = 25, species = "ZUBAT" } },
    { { level = 28, species = "RATICATE" }, { level = 28, species = "HYPNO" }, { level = 28, species = "RATICATE" } },
    { { level = 29, species = "MACHOP" }, { level = 29, species = "DROWZEE" } },
    { { level = 28, species = "EKANS" }, { level = 28, species = "ZUBAT" }, { level = 28, species = "CUBONE" } },
    { { level = 33, species = "ARBOK" } },
    { { level = 33, species = "HYPNO" } },
    { { level = 29, species = "MACHOP" }, { level = 29, species = "MACHOKE" } },
    { { level = 28, species = "ZUBAT" }, { level = 28, species = "ZUBAT" }, { level = 28, species = "GOLBAT" } },
    { { level = 26, species = "RATICATE" }, { level = 26, species = "ARBOK" }, { level = 26, species = "KOFFING" }, { level = 26, species = "GOLBAT" } },
    { { level = 29, species = "CUBONE" }, { level = 29, species = "CUBONE" } },
    { { level = 29, species = "SANDSHREW" }, { level = 29, species = "SANDSLASH" } },
    { { level = 26, species = "RATICATE" }, { level = 26, species = "ZUBAT" }, { level = 26, species = "GOLBAT" }, { level = 26, species = "RATTATA" } },
    { { level = 28, species = "WEEZING" }, { level = 28, species = "GOLBAT" }, { level = 28, species = "KOFFING" } },
    { { level = 28, species = "DROWZEE" }, { level = 28, species = "GRIMER" }, { level = 28, species = "MACHOP" } },
    { { level = 28, species = "GOLBAT" }, { level = 28, species = "DROWZEE" }, { level = 28, species = "HYPNO" } },
    { { level = 33, species = "MACHOKE" } },
    { { level = 25, species = "RATTATA" }, { level = 25, species = "RATTATA" }, { level = 25, species = "ZUBAT" }, { level = 25, species = "RATTATA" }, { level = 25, species = "EKANS" } },
    { { level = 32, species = "CUBONE" }, { level = 32, species = "DROWZEE" }, { level = 32, species = "MAROWAK" } },
  },
})

mod.content.trainers:patch("OPP_SUPER_NERD", {
  parties = {
    -- Mt. Moon
    { { level = 14, species = "KAPURIMON" }, { level = 15, species = "TENTOMON" } },
    { { level = 13, species = "CHUUMON" }, { level = 13, species = "TENTOMON" }, { level = 13, species = "HAGURUMON" } },
    --
    { { level = 20, species = "VOLTORB" }, { level = 20, species = "KOFFING" }, { level = 20, species = "VOLTORB" }, { level = 20, species = "MAGNEMITE" } },
    { { level = 22, species = "GRIMER" }, { level = 22, species = "MUK" }, { level = 22, species = "GRIMER" } },
    { { level = 26, species = "KOFFING" } },
    { { level = 22, species = "KOFFING" }, { level = 22, species = "MAGNEMITE" }, { level = 22, species = "WEEZING" } },
    { { level = 20, species = "MAGNEMITE" }, { level = 20, species = "MAGNEMITE" }, { level = 20, species = "KOFFING" }, { level = 20, species = "MAGNEMITE" } },
    { { level = 24, species = "MAGNEMITE" }, { level = 24, species = "VOLTORB" } },
    { { level = 36, species = "VULPIX" }, { level = 36, species = "VULPIX" }, { level = 36, species = "NINETALES" } },
    { { level = 34, species = "PONYTA" }, { level = 34, species = "CHARMANDER" }, { level = 34, species = "VULPIX" }, { level = 34, species = "GROWLITHE" } },
    { { level = 41, species = "RAPIDASH" } },
    { { level = 37, species = "GROWLITHE" }, { level = 37, species = "VULPIX" } },
  },
})

mod.content.trainers:patch("OPP_SWIMMER", {
  parties = {
    -- Misty Gym
    { { level = 18, species = "TSUNOMON" }, { level = 18, species = "BETAMON" } },
    --    
    { { level = 30, species = "TENTACOOL" }, { level = 30, species = "SHELLDER" } },
    { { level = 29, species = "GOLDEEN" }, { level = 29, species = "HORSEA" }, { level = 29, species = "STARYU" } },
    { { level = 30, species = "POLIWAG" }, { level = 30, species = "POLIWHIRL" } },
    { { level = 27, species = "HORSEA" }, { level = 27, species = "TENTACOOL" }, { level = 27, species = "TENTACOOL" }, { level = 27, species = "GOLDEEN" } },
    { { level = 29, species = "GOLDEEN" }, { level = 29, species = "SHELLDER" }, { level = 29, species = "SEAKING" } },
    { { level = 30, species = "HORSEA" }, { level = 30, species = "HORSEA" } },
    { { level = 27, species = "TENTACOOL" }, { level = 27, species = "TENTACOOL" }, { level = 27, species = "STARYU" }, { level = 27, species = "HORSEA" }, { level = 27, species = "TENTACRUEL" } },
    { { level = 31, species = "SHELLDER" }, { level = 31, species = "CLOYSTER" } },
    { { level = 35, species = "STARYU" } },
    { { level = 28, species = "HORSEA" }, { level = 28, species = "HORSEA" }, { level = 28, species = "SEADRA" }, { level = 28, species = "HORSEA" } },
    { { level = 33, species = "SEADRA" }, { level = 33, species = "TENTACRUEL" } },
    { { level = 37, species = "STARMIE" } },
    { { level = 33, species = "STARYU" }, { level = 33, species = "WARTORTLE" } },
    { { level = 32, species = "POLIWHIRL" }, { level = 32, species = "TENTACOOL" }, { level = 32, species = "SEADRA" } },
  },
})

mod.content.trainers:patch("OPP_YOUNGSTER", {
  parties = {
    -- Route 3
    { { level = 13, species = "CHUUMON" }, { level = 14, species = "MUSHROOMON" } },
    { { level = 16, species = "BIYOMON" } },
    -- Mt. Moon
    { { level = 14, species = "CHUUMON" }, { level = 14, species = "CHUUMON" }, { level = 14, species = "PAGUMON" } },
    -- Nugget Bridge / Route 24
    { { level = 17, species = "GAZIMON" }, { level = 17, species = "MUSHROOMON" }, { level = 18, species = "PAGUMON" } },
    -- Route 25
    { { level = 18, species = "CHUUMON" }, { level = 17, species = "MUCHOMON" } },
    { { level = 22, species = "GEKOMON" } },
    { { level = 19, species = "MUSHROOMON" }, { level = 21, species = "ARMADILLOMON" } },
    --
    { { level = 21, species = "NIDORAN_M" } },
    { { level = 21, species = "EKANS" } },
    { { level = 19, species = "SANDSHREW" }, { level = 19, species = "ZUBAT" } },
    { { level = 17, species = "RATTATA" }, { level = 17, species = "RATTATA" }, { level = 17, species = "RATICATE" } },
    { { level = 18, species = "NIDORAN_M" }, { level = 18, species = "NIDORINO" } },
    { { level = 17, species = "SPEAROW" }, { level = 17, species = "RATTATA" }, { level = 17, species = "RATTATA" }, { level = 17, species = "SPEAROW" } },
  },
})
end
