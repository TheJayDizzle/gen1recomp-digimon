return function(mod)

  -- MT MOON: Gotsumon, Pagumon, Goburimon, Mushmon, Gazimon, DemiDevimon, Upamon
  mod.content.encounters:patch("MT_MOON_1F", {
    grass = { rate = 10, slots = {
      { level = 8, species = "PAGUMON" }, { level = 7, species = "PAGUMON" },
      { level = 9, species = "PAGUMON" }, { level = 8, species = "GOTSUMON" },
      { level = 6, species = "MUSHROOMON" }, { level = 10, species = "PAGUMON" },
      { level = 9, species = "GOTSUMON" }, { level = 8, species = "GOBURIMON" },
      { level = 11, species = "DEMIDEVIMON" }, { level = 8, species = "UPAMON" },
    } },
    source = "ROM:03:514D",
  })

  mod.content.encounters:patch("MT_MOON_B1F", {
    grass = { rate = 10, slots = {
      { level = 8, species = "PAGUMON" }, { level = 7, species = "PAGUMON" },
      { level = 7, species = "GOTSUMON" }, { level = 8, species = "GOTSUMON" },
      { level = 9, species = "PAGUMON" }, { level = 10, species = "MUSHROOMON" },
      { level = 10, species = "PAGUMON" }, { level = 10, species = "GOBURIMON" },
      { level = 9, species = "DEMIDEVIMON" }, { level = 9, species = "MUSHROOMON" },
    } },
    source = "ROM:03:5163",
  })

  mod.content.encounters:patch("MT_MOON_B2F", {
    grass = { rate = 10, slots = {
      { level = 9, species = "PAGUMON" }, { level = 9, species = "GOTSUMON" },
      { level = 10, species = "MUSHROOMON" }, { level = 10, species = "GOTSUMON" },
      { level = 11, species = "MUSHROOMON" }, { level = 10, species = "GOBURIMON" },
      { level = 12, species = "GOBURIMON" }, { level = 10, species = "DEMIDEVIMON" },
      { level = 12, species = "DEMIDEVIMON" }, { level = 12, species = "UPAMON" },
    } },
    source = "ROM:03:5179",
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
  })


  mod.content.encounters:patch("ROUTE_2", {
    grass = { rate = 25, slots = {
      { level = 3, species = "CHUUMON" }, { level = 3, species = "MUCHOMON" },
      { level = 4, species = "MUCHOMON" }, { level = 4, species = "CHUUMON" },
      { level = 5, species = "MUCHOMON" }, { level = 3, species = "MINOMON" },
      { level = 2, species = "CHUUMON" }, { level = 5, species = "CHUUMON" },
      { level = 2, species = "MINOMON" }, { level = 3, species = "MUCHOMON" },
    },},
    source = "ROM:03:50F5",
  })

  mod.content.encounters:patch("ROUTE_22", {
    grass = { rate = 25, slots = {
        { level = 3, species = "CHUUMON" }, { level = 3, species = "MUCHOMON"},
        { level = 4, species = "CHUUMON" }, { level = 4, species = "MUCHOMON"},
        { level = 2, species = "CHUUMON" }, { level = 2, species = "KUNEMON"},
        { level = 3, species = "PAGUMON" }, { level = 5, species = "PAGUMON"},
        { level = 3, species = "MUCHOMON"}, { level = 4, species = "GOTSUMON"},
      },
    },
    source = "ROM:03:510B",
  })

  mod.content.encounters:patch("ROUTE_3", {
    grass = { rate = 20, slots = { 
      { level = 6, species = "MUCHOMON" }, { level = 5, species = "MINOMON"},
      { level = 7, species = "MUCHOMON" }, { level = 6, species = "CHUUMON"},
      { level = 7, species = "CHUUMON" }, { level = 8, species = "MUCHOMON"},
      { level = 8, species = "CHUUMON"}, { level = 3, species = "KAPURIMON"},
      { level = 5, species = "KAPURIMON" }, { level = 7, species = "KAPURIMON"},
      },
    },
    source = "ROM:03:5137",
  })

    mod.content.encounters:patch("ROUTE_4", {
    grass = { rate = 20, slots = { 
      { level = 10, species = "CHUUMON" }, { level = 10, species = "MUCHOMON"},
      { level = 8, species = "CHUUMON" }, { level = 6, species = "MUSHROOMON"},
      { level = 8, species = "GIZAMON" }, { level = 10, species = "MUCHOMON"},
      { level = 12, species = "GIZAMON"}, { level = 12, species = "KAPURIMON"},
      { level = 8, species = "KAPURIMON" }, { level = 12, species = "KAPURIMON"},
      },
    },
    source = "ROM:03:518F",
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
