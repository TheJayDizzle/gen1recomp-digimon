-- Map changes for the Digimon demo.
return function(mod)
  local npc_text = "TEXT_VERMILION_CITY_DEMO_END"
  local dialogue = "_VermilionCityDemoEndText"

  -- Cerulean Dialogue changes

 -- Cerulean Dialogue changes
  mod.content.text:override("_CeruleanCityCooltrainerF1SlowbroUseSonicboomText",
    "OK! GEKOMON!\nUse SCREECH!\vCome on, GEKOMON\vpay attention!")
  mod.content.text:override("_CeruleanCityCooltrainerF1SlowbroPunchText",
    "GEKOMON punch!\nNo! You blew it\vagain!")
  mod.content.text:override("_CeruleanCityCooltrainerF1SlowbroWithdrawText",
    "GEKOMON, WATER GUN!\nNo! That's wrong!\fIt's so hard to\ncontrol POKéMON!\fYour POKéMON's\nobedience depends\von your abilities\vas a trainer!")
  mod.content.text:override("_CeruleanCitySlowbroTookASnoozeText",
    "GEKOMON took a\nsnooze...")
  mod.content.text:override("_CeruleanCitySlowbroIsLoafingAroundText",
    "GEKOMON is\nloafing around...")
  mod.content.text:override("_CeruleanCitySlowbroTurnedAwayText",
    "GEKOMON turned\naway...")
  mod.content.text:override("_CeruleanCitySlowbroIgnoredOrdersText",
    "GEKOMON\nignored orders...")



  -- Vermillion Dialog changes  
  mod.content.text:override("_VermilionCityMachopText",
    "GREYMON: Guoh!\nGogogoh!")
  mod.content.text:override("_VermilionCityMachopStompingTheLandFlatText",
    "\fA GREYMON is\nstomping the land\vflat.")
  mod.content.text:override("_VermilionCityBeautyText",
    "We're careful\nabout pollution!\nWe've heard NUMEMON\fmultiplies in\ntoxic sludge!")
  mod.content.text:override("_VermilionPidgeyHousePidgeyText",
    "MUCHOMON: Screee!")
  mod.content.text:override("_VermilionPidgeyHouseYoungsterText",
    "I'm getting my\nMUCHOMON to fly a\fletter to SAFFRON\nin the north!")
  
  
  -- This nPC was placed in Vermilion City with the map editor. It guards
  -- the path immediately south of its tile and marks the end of the demo.
  mod.content.maps:patch("VERMILION_CITY", {
    objects = {
      __append = {
        {
          index = 7,
          movement = "STAY",
          name = "VERMILIONCITY_DEMO_GUARD",
          range = "DOWN",
          sprite = "SPRITE_AGATHA",
          text = npc_text,
          x = 26,
          y = 14,
        },
      },
    },
  })

  mod.content.text:override(dialogue,
    "This is where the\nDIGIMON demo ends!\fMore content is\ncoming soon!")

  mod.content.text_pointers:patch("VermilionCity", {
    [npc_text] = {
      text = dialogue,
    },
  })

  mod.content.map_scripts:register("VERMILION_CITY", {
    talk = {
      [npc_text] = {
        { "face_player" },
        { "show_text", dialogue },
      },
    },
    onStep = function(game, ow, x, y)
      -- Trigger only from the tile directly below the guard.
      if x ~= 26 or y ~= 15 then return false end
      if ow.runner:isRunning() or #ow.scriptMoves > 0 then return false end

      local TextBox = require("src.render.TextBox")
      local npc = ow:npcByIndex(7)
      if npc then npc:facePlayer(ow.player) end
      game.stack:push(TextBox.new(game,
        game.data.text[dialogue]
          or "This is where the\nDIGIMON demo ends!\fMore content is\ncoming soon!",
        function()
          ow.player.facing = "left"
          ow:scriptMove(ow.player, "left", 1)
        end))
      return true
    end,
  })
end
