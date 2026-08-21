return function(mod)

  mod.content.encounters:patch("DIGLETTS_CAVE", {
    grass = { rate = 20, slots = {
      { level = 27, species = "SUNARIZAMON" }, { level = 29, species = "SUNARIZAMON" },
      { level = 31, species = "SUNARIZAMON" }, { level = 28, species = "SUNARIZAMON" },
      { level = 30, species = "SUNARIZAMON" }, { level = 21, species = "SUNARIZAMON" },
      { level = 24, species = "SUNARIZAMON" }, { level = 33, species = "TORTAMON" },
      { level = 25, species = "SUNARIZAMON" }, { level = 37, species = "TORTAMON" },
    } },
    source = "ROM:03:55B1",
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

    mod.content.encounters:patch("ROUTE_11", {
    grass = { rate = 25, slots = {
      { level = 20, species = "FLYMON" }, { level = 19, species = "PAGUMON" },
      { level = 22, species = "PAGUMON" }, { level = 21, species = "MUCHOMON" },
      { level = 19, species = "TENTOMON" }, { level = 20, species = "FLYMON" },
      { level = 20, species = "IMPMON" }, { level = 21, species = "MUCHOMON" },
      { level = 22, species = "TENTOMON" }, { level = 23, species = "IMPMON" },
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
        { level = 13, species = "CHUUMON" }, { level = 13, species = "MUCHOMON"},
        { level = 13, species = "LALAMON" }, { level = 15, species = "LALAMON"},
        { level = 14, species = "KUNEMON" }, { level = 14, species = "FLORAMON"},
        { level = 13, species = "CHUUMON" }, { level = 11, species = "GIZAMON"},
        { level = 15, species = "MUCHOMON"}, { level = 15, species = "FLORAMON"},
      },
    },
    source = "ROM:03:51A5",
    -- avg lvl 13.6
  })

  mod.content.encounters:patch("ROUTE_25", {
    grass = { rate = 25, slots = {
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
      { level = 8, species = "CHUUMON"}, { level = 8, species = "KAPURIMON"},
      { level = 9, species = "KAPURIMON" }, { level = 10, species = "KAPURIMON"},
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
      { level = 12, species = "GIZAMON"}, { level = 13, species = "KAPURIMON"},
      { level = 11, species = "KAPURIMON" }, { level = 12, species = "KAPURIMON"},
      },
    },
    source = "ROM:03:518F",
    -- avg lvl 11.5
  })


    mod.content.encounters:patch("ROUTE_5", {
    grass = { rate = 20, slots = { 
      { level = 18, species = "GIZAMON" }, { level = 18, species = "MUCHOMON"},
      { level = 19, species = "NUMEMON" }, { level = 17, species = "HAGURUMON"},
      { level = 20, species = "GIZAMON" }, { level = 18, species = "MUCHOMON"},
      { level = 15, species = "OTAMAMON"}, { level = 19, species = "OTAMAMON"},
      { level = 17, species = "HAGURUMON" }, { level = 20, species = "FLYMON"},
      },
    },
    source = "ROM:03:51BB",
    -- AVG 18.1
  })


    mod.content.encounters:patch("ROUTE_6", {
    grass = { rate = 20, slots = { 
      { level = 19, species = "LALAMON" }, { level = 17, species = "FLORAMON"},
      { level = 20, species = "WORMMON" }, { level = 16, species = "CHUUMON"},
      { level = 20, species = "GAZIMON" }, { level = 18, species = "LALAMON"},
      { level = 18, species = "FLORAMON"}, { level = 18, species = "WORMMON"},
      { level = 19, species = "CHUUMON" }, { level = 20, species = "NYAROMON"},
      },
    },
    source = "ROM:03:51BB",
    -- AVG 18.5
  })


  mod.content.encounters:patch("VIRIDIAN_FOREST", {
    grass = { rate = 8, slots = {
      { level = 4, species = "KUNEMON" }, { level = 5, species = "MINOMON" },
      { level = 3, species = "MINOMON" }, { level = 5, species = "MINOMON" },
      { level = 4, species = "KUNEMON" }, { level = 6, species = "MOTIMON" },
      { level = 4, species = "WORMMON" }, { level = 4, species = "KUNEMON" },
      { level = 3, species = "MOTIMON" }, { level = 5, species = "FLYMON" },
    } },
    source = "ROM:03:5121",
  })
  --Kokuwamon rare encounter




end
