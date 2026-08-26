return function (mod)

mod.content.trainers:patch("OPP_BEAUTY", {
      parties = {
      -- Erika Gym
      { { level = 32, species = "LALAMON", }, { level = 32, species = "FLORAMON", }, { level = 32, species = "LALAMON", }, { level = 21, species = "FLORAMON" }, },
      { { level = 33, species = "KIWIMON", }, { level = 33, species = "FLORAMON", }, }, 
      { { level = 34, species = "PALMON", }, },
      -- 
      { { level = 27, species = "RATTATA", }, { level = 27, species = "PIKACHU", }, { level = 27, species = "RATTATA", }, },
      { { level = 29, species = "CLEFAIRY", }, { level = 29, species = "MEOWTH", }, },
      { { level = 35, species = "SEAKING", }, },
      { { level = 30, species = "SHELLDER", }, { level = 30, species = "SHELLDER", }, { level = 30, species = "CLOYSTER", }, },
      { { level = 31, species = "POLIWAG", }, { level = 31, species = "SEAKING", }, },
      { { level = 29, species = "PIDGEOTTO", }, { level = 29, species = "WIGGLYTUFF", }, },
      { { level = 29, species = "BULBASAUR", }, { level = 29, species = "IVYSAUR", },},
      { { level = 33, species = "WEEPINBELL", }, { level = 33, species = "BELLSPROUT", }, { level = 33, species = "WEEPINBELL", }, },
      { { level = 27, species = "POLIWAG", }, { level = 27, species = "GOLDEEN", }, { level = 27, species = "SEAKING", }, { level = 27, species = "GOLDEEN", }, { level = 27, species = "POLIWAG", }, },
      { { level = 30, species = "GOLDEEN", }, { level = 30,species = "SEAKING", }, },
      { { level = 29, species = "STARYU", }, { level = 29, species = "STARYU", }, { level = 29, species = "STARYU", }, }, 
      { { level = 30, species = "SEADRA",}, { level = 30, species = "HORSEA", }, { level = 30, species = "SEADRA", }, },
    },
})

mod.content.trainers:patch("OPP_BROCK",{
  parties = {
    {{ level = 12, species = "GOTSUMON"}, {level = 13, species = "MONOCHROMON"}}
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
        { { level = 15, species = "KUNEMON", }, { level = 17, species = "WORMMON", }, },
        -- Route 6
        { { level = 21, species = "MINOMON", }, { level = 20, species = "KUNEMON", }, { level = 21, species = "TENTOMON", }, },
        { { level = 23, species = "KUWAGAMON", }, },
        --
        { { level = 18, species = "WORMMON", }, { level = 18, species = "KUNEMON", }, { level = 18, species = "SNIMON", }, },
        -- Route 9
        { { level = 25, species = "FLYMON", }, { level = 26, species = "FLYMON", }, },
        -- Route 9
        { { level = 25, species = "KUNEMON", }, { level = 25, species = "MINOMON", }, { level = 25, species = "SNIMON", }, },
     }, 
})

mod.content.trainers:patch("OPP_COOLTRAINER_F", {
      parties = {
        -- Erika Gym
      { { level = 34, species = "KIWIMON", }, { level = 34, species = "VEGIEMON", }, { level = 34, species = "PALMON", }, },
      -- 
      { { level = 43, species = "BELLSPROUT", }, { level = 43, species = "WEEPINBELL", }, { level = 43, species = "VICTREEBEL", }, },
      { { level = 43, species = "PARASECT", }, { level = 43, species = "DEWGONG", }, { level = 43, species = "CHANSEY", }, },
      { { level = 46, species = "VILEPLUME", }, { level = 46, species = "BUTTERFREE", }, }, 
      { { level = 44, species = "PERSIAN", }, { level = 44, species = "NINETALES", }, },
      { { level = 45,species = "IVYSAUR",}, { level = 45, species = "VENUSAUR", }, },
      { { level = 45, species = "NIDORINA", }, { level = 45, species = "NIDOQUEEN",}, },
      { { level = 43, species = "PERSIAN", }, { level = 43, species = "NINETALES", }, { level = 43, species = "RAICHU", }, },
    },
})

mod.content.trainers:patch("OPP_ENGINEER", { 
   parties = {
      -- 
      { { level = 24, species = "TENTOMON" }, { level = 24, species = "HAGURUMON" }, },
      -- Route 11
      { { level = 24, species = "HAGURUMON" }, },
      { { level = 22, species = "HAGURUMON" }, { level = 22, species = "HAGURUMON" }, { level = 24, species = "HAGURUMON" }, },
    },
})

mod.content.trainers:patch("OPP_FISHER", {
      parties = { 
      -- M.S. Anne
      { { level = 25, species = "OTAMAMON" }, { level = 25, species = "GOMAMON" }, { level = 25, species = "OTAMAMON" }, },
      { { level = 25, species = "OTAMAMON" }, { level = 25, species = "GIZAMON" }, { level = 25, species = "OTAMAMON" }, },
      -- Route 12
      { { level = 29, species = "OTAMAMON" }, { level = 29, species = "GOMAMON" }, { level = 29, species = "OTAMAMON" }, },
      { { level = 29, species = "BETAMON" }, { level = 29, species = "OTAMAMON" }, },
      { { level = 36, species = "GEKOMON" }, },
      { { level = 28, species = "GIZAMON" }, { level = 28, species = "GOMAMON" }, { level = 28, species = "GIZAMON" }, { level = 28, species = "SEADRAMON" }, },
      --
      { { level = 28, species = "SEAKING" }, { level = 28, species = "GOLDEEN" }, { level = 28, species = "SEAKING" }, { level = 28, species = "SEAKING" }, },
      { { level = 31, species = "SHELLDER" }, { level = 31, species = "CLOYSTER" }, },
      { { level = 27, species = "MAGIKARP" }, { level = 27, species = "MAGIKARP" }, { level = 27, species = "MAGIKARP" },
        { level = 27, species = "MAGIKARP" }, { level = 27, species = "MAGIKARP" }, { level = 27, species = "MAGIKARP" }, },
      { { level = 33, species = "SEAKING" }, { level = 33, species = "GOLDEEN" }, },
      -- Route 12
      { { level = 34, species = "BUKAMON" }, { level = 34, species = "BUKAMON" }, },
    },
})

mod.content.trainers:patch("OPP_ERIKA",{
  parties = {
    { { level = 37 , species = "SUNFLOWMON", }, { level = 35 , species = "PALMON", }, { level = 37 , species = "VEGIEMON", }, }
  }
})

mod.content.trainers:patch("OPP_GAMBLER", { 
    parties = {
      -- Route 11
      { { level = 22, species = "OTAMAMON" },{ level = 22, species = "HAGURUMON" }, },
      { { level = 22, species = "FLORAMON" }, { level = 22, species = "FLORAMON"}, },
      { { level = 22, species = "TENTOMON" }, { level = 22, species = "HAGURUMON"}, },
      { { level = 22, species = "FLORAMON" }, { level = 22, species = "GAZIMON" }, },
      --  Route 8
      { { level = 30, species = "OTAMAMON" }, { level = 30, species = "OTAMAMON" }, { level = 32, species = "GEKOMON" }, },
      --
      { { level = 22, species = "ONIX" }, { level = 22, species = "GEODUDE" }, { level = 22, species = "GRAVELER" }, },
      -- Route 8
      { { level = 30, species = "HAGURUMON" }, { level = 24, species = "TENTOMON" }, },
    },
})

mod.content.trainers:patch("OPP_GENTLEMAN", {
    parties = {
      -- M.S. Anne
      { { level = 23, species = "AGUMON" }, { level = 23, species = "AGUMON" }, },
      { { level = 23, species = "ARMADILLOMON" }, { level = 24, species = "LEOMON" }, },
      { { level = 25, species = "GABUMON" }, },
      --
      { { level = 48, species = "PRIMEAPE" }, },
      -- M.S. Anne
      { { level = 26, species = "AGUMON" }, { level = 27, species = "VEEMON" }, },
    },

})

mod.content.trainers:patch("OPP_HIKER", {
  parties = {
    -- Mt. Moon
    { { level = 13, species = "PAGUMON" }, { level = 12, species = "BEARMON" }, { level = 12, species = "GOTSUMON" } },
    -- Route 25
    { { level = 18, species = "BEARMON" }, { level = 19, species = "ARMADILLOMON" } },
    { { level = 17, species = "GOTSUMON" }, { level = 16, species = "GOTSUMON" }, { level = 18, species = "ARMADILLOMON" }, { level = 19, species = "GOTSUMON" } },
    { { level = 20, species = "MONOCHROMON" } },
    -- Route 10
    { { level = 27, species = "GOTSUMON" }, { level = 28, species = "SUNARIZAMON" } },
    -- Route 9 
    { { level = 26, species = "GOTSUMON" }, { level = 26, species = "MOJYAMON" }, { level = 26, species = "GOTSUMON" } },
    { { level = 25, species = "GOTSUMON" }, { level = 26, species = "MONOCHROMON" } },
    -- Route 10
    { { level = 27, species = "MONOCHROMON" }, { level = 27, species = "GOTSUMON" } },
    -- Rock Tunnel 1BF
    { { level = 26, species = "GOTSUMON" }, { level = 26, species = "GOTSUMON" }, { level = 28, species = "MONOCHROMON" } },
    { { level = 29, species = "GOTSUMON" } },
    -- Route 9 / Rock Tunnel 1BF
    { { level = 26, species = "SUNARIZAMON" }, { level = 26, species = "MONOCHROMON" } },
    -- Rock Tunnel 1F
    { { level = 27, species = "GOTSUMON" }, { level = 27, species = "BEARMON" }, { level = 27, species = "GOTSUMON" }, { level = 27, species = "ARMADILLOMON" } },
    { { level = 28, species = "MONOCHROMON" }, { level = 28, species = "GOLEMON" }, { level = 28, species = "BEARMON" } },
    { { level = 29, species = "GOTSUMON" }, { level = 29, species = "TORTAMON" } },
  },
})

mod.content.trainers:patch("OPP_JR_TRAINER_F", {
  parties = {
    -- Misty Gym
    { { level = 19, species = "GIZAMON" } },
    -- Route 6
    { { level = 20, species = "CHUUMON" }, { level = 22, species = "GATOMON" } },
    { { level = 20, species = "MUCHOMON" }, { level = 20, species = "MUCHOMON" }, { level = 20, species = "MUCHOMON" } },
    -- 
    { { level = 22, species = "BULBASAUR" } },
    -- Route 9
    { { level = 25, species = "LALAMON" }, { level = 25, species = "FLORAMON" }, { level = 26, species = "LALAMON" } },
    { { level = 28, species = "SALAMON" } },
    -- Route 19
    { { level = 27, species = "ELECMON" }, { level = 27, species = "RENAMON" } },
    { { level = 27, species = "MUCHOMON" }, { level = 27, species = "KOKATORIMON" } },
    -- Rock Tunnel 1BF 
    { { level = 27, species = "RENAMON" }, { level = 27, species = "HAWKMON" }, { level = 27, species = "RENAMON" } },
    { { level = 28, species = "LALAMON" }, { level = 27, species = "PALMON" } },
    -- Erika Gym
    { { level = 33, species = "PALMON" }, { level = 33, species = "KIWIMON" } },
    -- 
    { { level = 24, species = "PIDGEY" }, { level = 24, species = "MEOWTH" }, { level = 24, species = "RATTATA" }, { level = 24, species = "PIKACHU" }, { level = 24, species = "MEOWTH" } },
    { { level = 30, species = "POLIWAG" }, { level = 30, species = "POLIWAG" } },
    { { level = 27, species = "PIDGEY" }, { level = 27, species = "MEOWTH" }, { level = 27, species = "PIDGEY" }, { level = 27, species = "PIDGEOTTO" } },
    { { level = 28, species = "GOLDEEN" }, { level = 28, species = "POLIWAG" }, { level = 28, species = "HORSEA" } },
    { { level = 31, species = "GOLDEEN" }, { level = 31, species = "SEAKING" } },
    -- Rock Tunnel 1F
    { { level = 28, species = "FLORAMON" }, { level = 27, species = "RENAMON" } },
    { { level = 27, species = "SALAMON" }, { level = 27, species = "LALAMON" }, { level = 27, species = "MUCHOMON" } },

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
    { { level = 18, species = "CHUUMON" }, { level = 18, species = "VEEMON" } },
    { { level = 19, species = "RENAMON" } },
    -- Route 6
    { { level = 21, species = "GOMAMON" } },
    { { level = 20, species = "IMPMON" }, { level = 20, species = "LALAMON" } },
    --
    { { level = 18, species = "DIGLETT" }, { level = 18, species = "DIGLETT" }, { level = 18, species = "SANDSHREW" } },
    -- Route 9
    { { level = 27, species = "VEEMON" }, { level = 27, species = "AGUMON" } },
    { { level = 26, species = "CHUUMON" }, { level = 26, species = "SUNARIZAMON" }, { level = 27, species = "GAZIMON" }, { level = 27, species = "ARMADILLOMON" } },
    -- Route 12
    { { level = 36, species = "STINGMON" }, { level = 36, species = "SORCERMON" } },
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
    { { level = 13, species = "BIYOMON" } },
    -- Nugget Bridge / Route 24
    { { level = 17, species = "MUCHOMON" }, { level = 17, species = "SALAMON" } },
    { { level = 16, species = "HAWKMON" }, { level = 17, species = "ELECMON" } },
    -- Route 25
    { { level = 19, species = "FLORAMON" }, { level = 19, species = "SALAMON" } },
    { { level = 18, species = "LALAMON" }, { level = 19, species = "MUCHOMON" }, { level = 19, species = "LALAMON" } },
    -- M.S. Anne
    { { level = 23, species = "MUCHOMON" }, { level = 24, species = "HAWKMON" } },
    { { level = 23, species = "HAWKMON" }, { level = 24, species = "SALAMON" } },
    -- Route 8
    { { level = 30, species = "HAWKMON" }, { level = 30, species = "GATOMON" } },
    { { level = 31, species = "SALAMON" }, { level = 31, species = "SALAMON" }, { level = 32, species = "SALAMON" } },
    { { level = 29, species = "HAWKMON" }, { level = 29, species = "CHUUMON" }, { level = 29, species = "LALAMON" }, { level = 29, species = "SALAMON" }, { level = 29, species = "ELECMON" } },
    -- Route 8
    { { level = 30, species = "RENAMON" }, { level = 30, species = "RENAMON" } },
    -- Erika Gym
    { { level = 32, species = "FLORAMON" }, { level = 32, species = "VEGIEMON" } },
    { { level = 32, species = "LALAMON" }, { level = 32, species = "WOODMON" } },
  },
})

mod.content.trainers:patch("OPP_LT_SURGE", {
      parties = {
      { { level = 25, species = "TENTOMON" }, { level = 26, species = "HAGURUMON" }, { level = 28 , species = "KABUTERIMON" }, },
    },
})

mod.content.trainers:patch("OPP_MISTY",{
  parties = {
    {{ level = 19, species = "GOMAMON"}, {level = 21, species = "SEADRAMON"}}
  }
})

mod.content.trainers:patch("OPP_POKEMANIAC", {
      parties = {
      -- Route 10 (Power Plant)
      { { level = 30, species = "RHYHORN", }, { level = 30, species = "LICKITUNG", }, }, 
      -- Route 10 (Lavender Town)
      { { level = 29, species = "GESOMON", }, { level = 29, species = "GEKOMON", }, },
      -- Rock Tunnel 1BF
      { { level = 28, species = "OTAMAMON", }, { level = 28, species = "OTAMAMON", }, { level = 28, species = "GEKOMON", }, },
      { { level = 28, species = "VEEMON", }, { level = 28, species = "NUMEMON", }, },
      { { level = 30, species = "GEKOMON", }, },

      { { level = 40, species = "CHARMELEON", }, { level = 40, species = "LAPRAS", }, { level = 40, species = "LICKITUNG", }, },
      -- Rock Tunnel 1F
      { { level = 28, species = "NUMEMON", }, { level = 28, species = "GEKOMON", }, },
    },
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
    { { level = 18, species = "MUCHOMON" }, { level = 15, species = "MOTIMON" }, { level = 17, species = "VEEMON" }, { level = 18, species = "GOMAMON" }, },
    { { level = 18, species = "MUCHOMON" }, { level = 15, species = "MOTIMON" }, { level = 17, species = "VEEMON" }, { level = 18, species = "PALMON" }, },
    { { level = 18, species = "MUCHOMON" }, { level = 15, species = "MOTIMON" }, { level = 17, species = "VEEMON" }, { level = 18, species = "AGUMON" }, },
  }
})

mod.content.trainers:patch("OPP_RIVAL2", {
  parties = {
    -- M.S. ANNE
    { { level = 25, species = "MUCHOMON" }, { level = 25, species = "VEEMON" }, { level = 25, species = "TENTOMON" }, { level = 26, species = "GABUMON" } },
    { { level = 25, species = "MUCHOMON" }, { level = 25, species = "BETAMON" }, { level = 25, species = "TENTOMON" }, { level = 26, species = "PALMON" } },
    { { level = 25, species = "MUCHOMON" }, { level = 25, species = "FLORAMON" }, { level = 25, species = "TENTOMON" }, { level = 26, species = "AGUMON" } },

    -- Poke Tower
    { { level = 30, species = "KOKATORIMON" }, { level = 29, species = "VEEMON" }, { level = 29, species = "FLORAMON" }, { level = 30, species = "TENTOMON" }, { level = 31, species = "GABUMON" } },
    { { level = 30, species = "KOKATORIMON" }, { level = 29, species = "BETAMON" }, { level = 29, species = "VEEMON" }, { level = 30, species = "TENTOMON" }, { level = 31, species = "PALMON" } },
    { { level = 30, species = "KOKATORIMON" }, { level = 29, species = "FLORAMON" }, { level = 29, species = "BETAMON" }, { level = 30, species = "TENTOMON" }, { level = 31, species = "AGUMON" } },

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

mod.content.trainers:patch("OPP_ROCKER", {
      parties = {
      -- Lt. Surge gym
      { { level = 23, species = "HAGURUMON" }, { level = 23, species = "TENTOMON" }, { level = 23, species = "BETAMON" }, },
      -- Route 12
      { { level = 36, species = "GUARDROMON" }, { level = 36, species = "KABUTERIMON" }, },
    },
})

mod.content.trainers:patch("OPP_ROCKET", {
  parties = {
    -- Mt. Moon
    { { level = 14, species = "CHUUMON" }, { level = 15, species = "PAGUMON" } },
    { { level = 13, species = "ARMADILLOMON" }, { level = 13, species = "CHUUMON" }, { level = 13, species = "PAGUMON" } },
    { { level = 14, species = "PAGUMON" }, { level = 15, species = "MUSHROOMON" } },
    { { level = 16, species = "GOBURIMON" } },
    -- Cerulean City
    { { level = 20, species = "IMPMON" }, { level = 20, species = "NUMEMON" } },
    -- Nugget Bridge / Route 24
    { { level = 17, species = "GOBURIMON" }, { level = 19, species = "NUMEMON" } },
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

mod.content.trainers:patch("OPP_SAILOR", {
      parties = {
      -- M.S. Anne
      { { level = 26, species = "GAZIMON" }, { level = 26, species = "OTAMAMON" }, },
      { { level = 25, species = "GAZIMON" }, { level = 25, species = "BETAMON" }, },
      { { level = 27, species = "GOMAMON" }, },
      { { level = 25, species = "BETAMON" }, { level = 25, species = "OTAMAMON" }, { level = 25, species = "GAZIMON" }, },
      { { level = 26, species = "GOMAMON" }, { level = 26, species = "SEADRAMON" }, },
      { { level = 25, species = "GAZIMON" }, { level = 25, species = "OTAMAMON" }, { level = 25, species = "GABUMON" }, },
      { { level = 27, species = "GAZIMON" }, },
      -- Lt. Surge gym
      { { level = 24, species = "BETAMON" },  { level = 24, species = "GAZIMON" }, },
    },
})

mod.content.trainers:patch("OPP_SUPER_NERD", {
  parties = {
    -- Mt. Moon
    { { level = 13, species = "KAPURIMON" }, { level = 13, species = "SALAMON" } },
    { { level = 13, species = "CHUUMON" }, { level = 12, species = "PAGUMON" }, { level = 12, species = "SALAMON" } },
    -- Route 8
    { { level = 30, species = "GAZIMON" }, { level = 30, species = "CHUUMON" }, { level = 30, species = "NUMEMON" }, { level = 30, species = "HAGURUMON" } },
    { { level = 29, species = "NUMEMON" }, { level = 29, species = "SUKAMON" }, { level = 22, species = "NUMEMON" } },
    { { level = 31, species = "RAREMON" } },
    --
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
    { { level = 11, species = "CHUUMON" }, { level = 11, species = "MUSHROOMON" } },
    { { level = 12, species = "BIYOMON" } },
    -- Mt. Moon
    { { level = 13, species = "CHUUMON" }, { level = 13, species = "CHUUMON" }, { level = 14, species = "PAGUMON" } },
    -- Nugget Bridge / Route 24
    { { level = 16, species = "GAZIMON" }, { level = 16, species = "MUSHROOMON" }, { level = 16, species = "PAGUMON" } },
    -- Route 25
    { { level = 17, species = "CHUUMON" }, { level = 17, species = "MUCHOMON" } },
    { { level = 18, species = "BEARMON" } },
    { { level = 17, species = "MUSHROOMON" }, { level = 17, species = "ARMADILLOMON" } },
    -- M.S. Anne
    { { level = 23, species = "BEARMON" } },
    -- Route 11
    { { level = 23, species = "KIWIMON" } },
    { { level = 22, species = "ARMADILLOMON" }, { level = 22, species = "KUNEMON" } },
    { { level = 22, species = "CHUUMON" }, { level = 22, species = "CHUUMON" }, { level = 22, species = "SUKAMON" } },
    { { level = 22, species = "IMPMON" }, { level = 22, species = "MUCHOMON" } },
    --
    { { level = 17, species = "SPEAROW" }, { level = 17, species = "RATTATA" }, { level = 17, species = "RATTATA" }, { level = 17, species = "SPEAROW" } },
  },
})
end
