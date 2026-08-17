-- Map changes for the Digimon demo.
return function(mod)
  local npc_text = "TEXT_CERULEANCITY_DEMO_END"
  local dialogue = "_CeruleanCityDemoEndText"

  -- A stationary object is solid, so it blocks its own bridge tile.
  mod.content.maps:patch("CERULEAN_CITY", {
    objects = {
      __append = {
        {
          index = 12,
          movement = "STAY",
          name = "CERULEANCITY_DEMO_GUARD",
          range = "DOWN",
          sprite = "SPRITE_BALDING_GUY",
          text = npc_text,
          x = 21,
          y = 0,
        },
      },
    },
  })

  mod.content.text:override(dialogue,
    "This is where the\nDIGIMON demo ends!\fMore content is\ncoming soon!")

  mod.content.text_pointers:patch("CeruleanCity", {
    [npc_text] = {
      text = dialogue,
    },
  })

  mod.content.map_scripts:register("CERULEAN_CITY", {
    talk = {
      [npc_text] = {
        { "face_player" },
        { "show_text", dialogue },
      },
    },
    onStep = function(game, ow, x, y)
      -- Trigger only from the cell immediately left of the guard.
      if x ~= 20 or y ~= 0 then return false end
      if ow.runner:isRunning() or #ow.scriptMoves > 0 then return false end

      local TextBox = require("src.render.TextBox")
      local npc = ow:npcByIndex(12)
      if npc then npc:facePlayer(ow.player) end
      game.stack:push(TextBox.new(game,
        game.data.text[dialogue]
          or "This is where the\nDIGIMON demo ends!\fMore content is\ncoming soon!",
        function()
          ow.player.facing = "down"
          ow:scriptMove(ow.player, "down", 1)
        end))
      return true
    end,
  })
end
