-- Map changes for the Digimon demo.
return function(mod)
  local npc_text = "TEXT_ROUTE9_DEMO_END"
  local dialogue = "_Route9DemoEndText"

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
  
  
  -- Place the demo guard immediately before Route 9's Cut tree, east of
  -- Cerulean City. The tree itself occupies (5, 8).
  mod.content.maps:patch("ROUTE_9", {
    objects = {
      __append = {
        {
          index = 11,
          movement = "STAY",
          name = "ROUTE9_DEMO_GUARD",
          range = "LEFT",
          sprite = "SPRITE_AGATHA",
          text = npc_text,
          x = 4,
          y = 8,
        },
      },
    },
  })

  mod.content.text:override(dialogue,
    "This is where the\nDIGIMON demo ends!\fMore content is\ncoming soon!")

  mod.content.text_pointers:patch("Route9", {
    [npc_text] = {
      text = dialogue,
    },
  })

  mod.content.map_scripts:register("ROUTE_9", {
    talk = {
      [npc_text] = {
        { "face_player" },
        { "show_text", dialogue },
      },
    },
    onStep = function(game, ow, x, y)
      -- Trigger as the player approaches from the Cerulean (west) side.
      if x ~= 3 or y ~= 8 then return false end
      if ow.runner:isRunning() or #ow.scriptMoves > 0 then return false end

      local TextBox = require("src.render.TextBox")
      local npc = ow:npcByIndex(11)
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
