return function(mod)

  mod.content.encounters:register("CELADON_GARDENS", {
    grass = { rate = 20, slots = {
      { level = 1, species = "BOTAMON" }, { level = 1, species = "POYOMON" },
      { level = 1, species = "PUNIMON" }, { level = 1, species = "PUNIMON" },
      { level = 1, species = "POYOMON" }, { level = 1, species = "BOTAMON" },
      { level = 1, species = "BOTAMON" }, { level = 2, species = "POYOMON" },
      { level = 2, species = "BOTAMON" }, { level = 2, species = "PUNIMON" },
    } },
  })


  mod.content.encounters:patch("DIGLETTS_CAVE", {
    grass = { rate = 20, slots = {
      { level = 25, species = "SUNARIZAMON" }, { level = 27, species = "SUNARIZAMON" },
      { level = 29, species = "SUNARIZAMON" }, { level = 26, species = "SUNARIZAMON" },
      { level = 28, species = "SUNARIZAMON" }, { level = 29, species = "SUNARIZAMON" },
      { level = 22, species = "SUNARIZAMON" }, { level = 31, species = "TORTAMON" },
      { level = 23, species = "SUNARIZAMON" }, { level = 34, species = "TORTAMON" },
    } },
    source = "ROM:03:55B1",
    -- avg lvl 28.5  })
  })

    mod.content.encounters:register("DIGLETTS_CAVE_1F", {
    grass = { rate = 20, slots = {
      { level = 25, species = "SUNARIZAMON" }, { level = 27, species = "SUNARIZAMON" },
      { level = 29, species = "SUNARIZAMON" }, { level = 26, species = "SUNARIZAMON" },
      { level = 28, species = "SUNARIZAMON" }, { level = 29, species = "SUNARIZAMON" },
      { level = 22, species = "SUNARIZAMON" }, { level = 31, species = "TORTAMON" },
      { level = 23, species = "SUNARIZAMON" }, { level = 34, species = "TORTAMON" },
    } },
    -- avg lvl 28.5  })
  })



  -- MT MOON: Gotsumon, Pagumon, Goburimon, Mushmon, Gazimon, DemiDevimon, Upamon
  mod.content.encounters:patch("MT_MOON_1F", {
    grass = { rate = 10, slots = {
      { level = 11, species = "PAGUMON" }, { level = 9, species = "PAGUMON" },
      { level = 10, species = "PAGUMON" }, { level = 10, species = "GOTSUMON" },
      { level = 10, species = "MUSHROOMON" }, { level = 12, species = "PAGUMON" },
      { level = 11, species = "GOTSUMON" }, { level = 10, species = "GOBURIMON" },
      { level = 11, species = "DEMIDEVIMON" }, { level = 11, species = "MUSHROOMON" },
    } },
    source = "ROM:03:514D",
    -- avg lvl 10.5
  })

  mod.content.encounters:patch("MT_MOON_B1F", {
    grass = { rate = 10, slots = {
      { level = 12, species = "PAGUMON" }, { level = 11, species = "PAGUMON" },
      { level = 12, species = "GOTSUMON" }, { level = 11, species = "GOTSUMON" },
      { level = 10, species = "PAGUMON" }, { level = 12, species = "MUSHROOMON" },
      { level = 11, species = "PAGUMON" }, { level = 11, species = "GOBURIMON" },
      { level = 10, species = "DEMIDEVIMON" }, { level = 8, species = "UPAMON" },
    } },
    source = "ROM:03:5163",
    -- avg lvl 10.8
  })

  mod.content.encounters:patch("MT_MOON_B2F", {
    grass = { rate = 10, slots = {
      { level = 12, species = "PAGUMON" }, { level = 11, species = "GOTSUMON" },
      { level = 11, species = "MUSHROOMON" }, { level = 10, species = "GOTSUMON" },
      { level = 12, species = "MUSHROOMON" }, { level = 10, species = "GOBURIMON" },
      { level = 12, species = "GOBURIMON" }, { level = 10, species = "DEMIDEVIMON" },
      { level = 12, species = "DEMIDEVIMON" }, { level = 10, species = "UPAMON" },
    } },
    source = "ROM:03:5179",
    -- avg lvl 11
  })

  mod.content.encounters:patch("POKEMON_TOWER_3F", {
        grass = {
      rate = 10,
      slots = {
        { level = 29, species = "DEMIDEVIMON", }, { level = 28, species = "CANDLEMON", },
        { level = 27, species = "CANDLEMON", }, { level = 23, species = "CANDLEMON", },
        { level = 25, species = "DEMIDEVIMON", }, { level = 28, species = "DEMIDEVIMON", },
        { level = 26, species = "CANDLEMON", }, { level = 30, species = "CANDLEMON", }, 
        { level = 25,species = "DEMIDEVIMON", }, { level = 31, species = "BAKEMON", },
      }
    }, 
    source = "ROM:03:52B1",
   })


  mod.content.encounters:patch("POKEMON_TOWER_4F", {
        grass = {
      rate = 10,
      slots = {
        { level = 29, species = "DEMIDEVIMON", }, { level = 28, species = "CANDLEMON", },
        { level = 27, species = "CANDLEMON", }, { level = 23, species = "CANDLEMON", },
        { level = 25, species = "DEMIDEVIMON", }, { level = 28, species = "DEMIDEVIMON", },
        { level = 26, species = "CANDLEMON", }, { level = 30, species = "CANDLEMON", }, 
        { level = 25,species = "BAKEMON", }, { level = 31, species = "SOULMON", },
      }
    }, 
    source = "ROM:03:52C7",
   })


  mod.content.encounters:patch("POKEMON_TOWER_5F", {
        grass = {
      rate = 10,
      slots = {
        { level = 30, species = "DEMIDEVIMON", }, { level = 29, species = "DEMIDEVIMON", },
        { level = 28, species = "CANDLEMON", }, { level = 24, species = "CANDLEMON", },
        { level = 26, species = "CANDLEMON", }, { level = 29, species = "CANDLEMON", },
        { level = 27, species = "CANDLEMON", }, { level = 31, species = "CANDLEMON", }, 
        { level = 26, species = "DEMIDEVIMON", }, { level = 32, species = "BAKEMON", },
      }
    }, 
    source = "ROM:03:52DD",
   })


  mod.content.encounters:patch("POKEMON_TOWER_6F", {
    grass = {
      rate = 15,
      slots = {
        { level = 29, species = "DEMIDEVIMON", }, { level = 28, species = "CANDLEMON", },
        { level = 27, species = "DEMIDEVIMON", }, { level = 23, species = "CANDLEMON", },
        { level = 25, species = "DEMIDEVIMON", }, { level = 28, species = "CANDLEMON", },
        { level = 26, species = "DEMIDEVIMON", }, { level = 30, species = "CANDLEMON", }, 
        { level = 25,species = "CANDLEMON", }, { level = 31, species = "SOULMON", },
      }
    }, 
    source = "ROM:03:52F3",
   })


  mod.content.encounters:patch("POKEMON_TOWER_7F", {
    grass = {
      rate = 15,
      slots = {
        { level = 31, species = "CANDLEMON", }, { level = 30, species = "CANDLEMON", },
        { level = 29, species = "DEMIDEVIMON", }, { level = 26, species = "CANDLEMON", },
        { level = 27, species = "DEMIDEVIMON", }, { level = 30, species = "DEMIDEVIMON", },
        { level = 28, species = "CANDLEMON", }, { level = 32, species = "CANDLEMON", }, 
        { level = 26,species = "DEMIDEVIMON", }, { level = 33, species = "DEVIMON", },
      }
    }, 
    source = "ROM:03:5309",
   })


mod.content.encounters:patch("ROCK_TUNNEL_1F", {
    grass = {
      rate = 15,
      slots = {
        { level = 22, species = "PAGUMON", }, { level = 21, species = "PAGUMON", },
        { level = 19, species = "GOTSUMON", }, { level = 23, species = "CHUUMON", },
        { level = 20, species = "GOTSUMON", }, { level = 20, species = "DEMIDEVIMON", },
        { level = 21, species = "BEARMON", }, { level = 20, species = "BEARMON", },
        { level = 23, species = "MONOCHROMON", }, { level = 22, species = "MONOCHROMON", },
      }
    },
    source = "ROM:03:5229",
  })

  mod.content.encounters:patch("ROCK_TUNNEL_B1F", {
    grass = {
      rate = 15,
      slots = {
        { level = 22,species = "PAGUMON", }, { level = 21, species = "PAGUMON", },
        { level = 19, species = "GOTSUMON", }, { level = 23, species = "BEARMON", },
        { level = 20, species = "GOTSUMON", }, { level = 20, species = "DEMIDEVIMON", },
        { level = 21, species = "BEARMON", }, { level = 20, species = "DRIMOGEMON", },
        { level = 22, species = "GOLEMON", }, { level = 23, species = "GOLEMON", },
      }
    },
    source = "ROM:03:523F",
  })

  mod.content.encounters:patch("ROUTE_1", {
    grass = { rate = 25, slots = {
      { level = 3, species = "MUCHOMON" }, { level = 3, species = "CHUUMON" },
      { level = 3, species = "CHUUMON" }, { level = 2, species = "CHUUMON" },
      { level = 2, species = "MUCHOMON" }, { level = 3, species = "MUCHOMON" },
      { level = 3, species = "MUCHOMON" }, { level = 4, species = "CHUUMON" },
      { level = 4, species = "MUCHOMON" }, { level = 5, species = "MUCHOMON" },
    } },
    source = "ROM:03:50DF",
    -- avg lvl 3.2
  })

    mod.content.encounters:patch("ROUTE_10", {
    grass = {
      rate = 15,
      slots = {
        { level = 19, species = "CHUUMON" }, { level = 18, species = "PAGUMON" },
        { level = 21, species = "CHUUMON" }, { level = 21, species = "ELECMON" },
        { level = 20, species = "PAGUMON" }, { level = 20,species = "ELECMON" },
        { level = 19, species = "CHUUMON" }, { level = 19, species = "ELECMON" },
        { level = 21, species = "ELECMON" }, { level = 22, species = "KOKUWAMON" },
      },
    },
      source = "ROM:03:5255",
  })


    mod.content.encounters:patch("ROUTE_11", {
    grass = { rate = 15, slots = {
      { level = 18, species = "FLYMON" }, { level = 17, species = "PAGUMON" },
      { level = 20, species = "PAGUMON" }, { level = 19, species = "MUCHOMON" },
      { level = 17, species = "RENAMON" }, { level = 18, species = "FLYMON" },
      { level = 18, species = "IMPMON" }, { level = 19, species = "MUCHOMON" },
      { level = 20, species = "RENAMON" }, { level = 21, species = "IMPMON" },
    } },
    source = "ROM:03:5213",
    -- avg lvl 20.7
  })


  mod.content.encounters:patch("ROUTE_2", {
    grass = { rate = 25, slots = {
      { level = 6, species = "CHUUMON" }, { level = 4, species = "MUCHOMON" },
      { level = 7, species = "MUCHOMON" }, { level = 8, species = "CHUUMON" },
      { level = 5, species = "MUCHOMON" }, { level = 4, species = "MINOMON" },
      { level = 5, species = "CHUUMON" }, { level = 7, species = "CHUUMON" },
      { level = 5, species = "MINOMON" }, { level = 6, species = "MUCHOMON" },
    },},
    source = "ROM:03:50F5",
    -- avg lvl 5.7
  })

  mod.content.encounters:patch("ROUTE_22", {
    grass = { rate = 25, slots = {
        { level = 4, species = "CHUUMON" }, { level = 3, species = "MUCHOMON"},
        { level = 5, species = "CHUUMON" }, { level = 4, species = "MUCHOMON"},
        { level = 3, species = "CHUUMON" }, { level = 6, species = "KUNEMON"},
        { level = 3, species = "PAGUMON" }, { level = 5, species = "PAGUMON"},
        { level = 3, species = "MUCHOMON"}, { level = 4, species = "GOTSUMON"},
      },
    },
    source = "ROM:03:510B",
    -- avg lvl 4
  })

  mod.content.encounters:patch("ROUTE_24", {
    grass = { rate = 25, slots = {
        { level = 12, species = "CHUUMON" }, { level = 12, species = "MUCHOMON"},
        { level = 12, species = "LALAMON" }, { level = 14, species = "LALAMON"},
        { level = 14, species = "KUNEMON" }, { level = 13, species = "FLORAMON"},
        { level = 12, species = "CHUUMON" }, { level = 10, species = "GIZAMON"},
        { level = 14, species = "MUCHOMON"}, { level = 14, species = "FLORAMON"},
      },
    },
    source = "ROM:03:51A5",
    -- avg lvl 13.6
  })

  mod.content.encounters:patch("ROUTE_25", {
    grass = { rate = 15, slots = {
        { level = 13, species = "MINOMON" }, { level = 14, species = "MINOMON"},
        { level = 14, species = "KAPURIMON" }, { level = 15, species = "FLORAMON"},
        { level = 15, species = "LALAMON" }, { level = 13, species = "LALAMON"},
        { level = 13, species = "FLORAMON" }, { level = 14, species = "GIZAMON"},
        { level = 14, species = "MUSHROOMON"}, { level = 13, species = "VEGIEMON"},
      },
    },
    source = "ROM:03:51BB",
    -- avg lvl 14.1
  })



  mod.content.encounters:patch("ROUTE_3", {
    grass = { rate = 20, slots = { 
      { level = 9, species = "MUCHOMON" }, { level = 9, species = "MINOMON"},
      { level = 7, species = "MUCHOMON" }, { level = 9, species = "CHUUMON"},
      { level = 7, species = "CHUUMON" }, { level = 8, species = "MUCHOMON"},
      { level = 8, species = "CHUUMON"}, { level = 8, species = "PAGUMON"},
      { level = 9, species = "PAGUMON" }, { level = 10, species = "KUNEMON"},
      },
    },
    source = "ROM:03:5137",
    -- avg lvl 8.4
  })

    mod.content.encounters:patch("ROUTE_4", {
    grass = { rate = 20, slots = { 
      { level = 13, species = "CHUUMON" }, { level = 12, species = "MUCHOMON"},
      { level = 10, species = "CHUUMON" }, { level = 10, species = "MUSHROOMON"},
      { level = 11, species = "GIZAMON" }, { level = 11, species = "MUCHOMON"},
      { level = 12, species = "GIZAMON"}, { level = 13, species = "OTAMAMON"},
      { level = 11, species = "OTAMAMON" }, { level = 12, species = "OTAMAMON"},
      },
    },
    source = "ROM:03:518F",
    -- avg lvl 11.5
  })


    mod.content.encounters:patch("ROUTE_5", {
    grass = { rate = 15, slots = { 
      { level = 16, species = "GIZAMON" }, { level = 16, species = "MUCHOMON"},
      { level = 17, species = "GAZIMON" }, { level = 15, species = "HAGURUMON"},
      { level = 18, species = "GIZAMON" }, { level = 16, species = "MUCHOMON"},
      { level = 14, species = "OTAMAMON"}, { level = 17, species = "OTAMAMON"},
      { level = 15, species = "HAGURUMON" }, { level = 18, species = "GAZIMON"},
      },
    },
    source = "ROM:03:51E7",
    -- AVG 18.1
  })


    mod.content.encounters:patch("ROUTE_6", {
    grass = { rate = 15, slots = { 
      { level = 17, species = "LALAMON" }, { level = 15, species = "FLORAMON"},
      { level = 18, species = "WORMMON" }, { level = 14, species = "CHUUMON"},
      { level = 18, species = "GAZIMON" }, { level = 16, species = "LALAMON"},
      { level = 18, species = "FLORAMON"}, { level = 16, species = "WORMMON"},
      { level = 17, species = "CHUUMON" }, { level = 18, species = "NYAROMON"},
      },
    },
    source = "ROM:03:51FD",
    -- AVG 18.5
  })

      mod.content.encounters:patch("ROUTE_7", {
    grass = {
      rate = 15,
      slots = {
        --{ level = 23, species = "CHUUMON" }, { level = 20, species = "FLORAMON" },
        { level = 23, species = "POYOMON" }, { level = 20, species = "BOTAMON" },
        { level = 24, species = "CHUUMON" }, { level = 23, species = "GOBURIMON" },
        { level = 22, species = "PAGUMON" }, { level = 23, species = "FLORAMON" },
        { level = 21, species = "CHUUMON" }, { level = 23, species = "GOBURIMON" },
        { level = 24, species = "HAWKMON" }, { level = 25, species = "HAWKMON" },
      },
    },
    source = "ROM:03:5297",
  })


    mod.content.encounters:patch("ROUTE_8", {
    grass = {
      rate = 15,
      slots = {
        { level = 23, species = "BETAMON" }, { level = 20, species = "BEARMON" },
        { level = 24, species = "MUCHOMON" }, { level = 23, species = "MUCHOMON" },
        { level = 22, species = "BEARMON" }, { level = 23, species = "BEARMON" },
        { level = 21, species = "MUCHOMON" }, { level = 23, species = "BETAMON" },
        { level = 24, species = "KIWIMON" }, { level = 25, species = "KIWIMON" },
      },
    },
    source = "ROM:03:5281",
  })


  mod.content.encounters:patch("ROUTE_9", {
    grass = {
      rate = 15,
      slots = {
        { level = 19, species = "CHUUMON" }, { level = 18, species = "FLORAMON" },
        { level = 21, species = "CHUUMON" }, { level = 21, species = "GOBURIMON" },
        { level = 20, species = "PAGUMON" }, { level = 20,species = "FLORAMON" },
        { level = 19, species = "CHUUMON" }, { level = 19, species = "GOBURIMON" },
        { level = 21, species = "HAWKMON" }, { level = 22, species = "HAWKMON" },
      },
    },
    source = "ROM:03:51D1",
  })



  mod.content.encounters:patch("VIRIDIAN_FOREST", {
    grass = { rate = 8, slots = {
      { level = 4, species = "KUNEMON" }, { level = 5, species = "MINOMON" },
      { level = 3, species = "MINOMON" }, { level = 5, species = "MINOMON" },
      { level = 4, species = "KUNEMON" }, { level = 6, species = "MUCHOMON" },
      { level = 4, species = "MUCHOMON" }, { level = 4, species = "KUNEMON" },
      { level = 3, species = "MOTIMON" }, { level = 5, species = "WORMMON" },
    } },
    source = "ROM:03:5121",
  })
  --Kokuwamon rare encounter




end
