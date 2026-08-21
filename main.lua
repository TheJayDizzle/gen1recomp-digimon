return function(mod)

-- Add: DNA Digivolutions -> something like Mega Evolutions, usable once per fight (maybe limitted turns?). at defeat or end of fight digimon gets split again. Digimon used for DNA Digivolution get both half XP
-- Add: DigiEggs, maybe as rewards, hidden items or purchasable in Celadon City
-- Gym leaders concept (early rookies + 1 champion, later champions + 1 ultimate)
-- Add: Ultimate evolutions, are Megas possible? (balancing)
-- Concept: Mega evolutions maybe time limited
-- Concept: Evolution not at level, but on "activation" -> Digimon gets reset to level 1, prevents having only ultimates later while enemies have champions
-- Add: Baby Digimon
-- Rework: Attack Types (Dark/Steel)
-- Add: Gen 2 moves




local function loadScript(filename)
  local path = "scripts/" .. filename
  local source = assert(mod:read(path), "missing " .. path)
  local chunk, loadError = load(source, "@" .. mod.path .. "/" .. path)
  assert(chunk, loadError)
  local script = chunk()
  assert(type(script) == "function", path .. " must return a function")
  return script
end

-- Load order matters: growth and species data must exist before the systems
-- that refer to registered Digimon, moves, encounters, or UI assets.
loadScript("growth.lua")()
loadScript("digimon.lua")(mod)
loadScript("digivolution.lua")(mod)
loadScript("encounters.lua")(mod)
loadScript("trainers.lua")(mod)
loadScript("map.lua")(mod)
loadScript("text.lua")(mod)
loadScript("HD_battle.lua")(mod)
loadScript("always_obey.lua")()
loadScript("dex_navigation.lua")()
loadScript("reusable_tms.lua")()
loadScript("HD_party.lua")(mod)
loadScript("HD_icons.lua")(mod)
loadScript("custom_borders.lua")(mod)
loadScript("moves.lua")(mod)


mod.content.constants:patch("dexSize", 151)

-- Event re-write for oak#s lab
mod.content.text:register(
  "_OaksLabYouWantKoromonText",
  "So! You want the\nKOROMON, huh?"
)

mod.content.text:register(
  "_OaksLabYouWantTanemonText",
  "So! You want the\nTANEMON, huh?"
)

mod.content.text:register(
  "_OaksLabYouWantBukamonText",
  "So! You want the\nBUKAMON, huh?"
)


 local function starter_script(
  species,
  text,
  choice_flag,
  ball,
  rival_ball,
  rival_species,
  rival_x
)
return {
  { "check_flag", "EVENT_GOT_STARTER" },
  { "jump_if_true", "reject" },

  { "check_flag", "EVENT_FOLLOWED_OAK_INTO_LAB" },
  { "jump_if_false", "reject" },

  { "push_screen", "DexEntryMenu", {
    species = species,
    forceOwned = true
  }},

  { "ask", text },
  { "jump_if_false", "done" },

  { "show_text", "_OaksLabReceivedMonText", {
    RAM = species
  }},

  { "give_pokemon", species, 5 },

  { "set_flag", "EVENT_GOT_STARTER" },
  { "set_flag", choice_flag },

  { "hide_object", "OAKS_LAB", ball },

  { "move_npc_to", 1, rival_x, 4 },
  { "face_object", 1, "up" },

  { "show_text", "_OaksLabRivalIllTakeThisOneText" },

  { "hide_object", "OAKS_LAB", rival_ball },

  { "show_text", "_OaksLabRivalReceivedMonText", {
    RAM = rival_species
  }},

  { "jump", "done" },

  { "label", "reject" },
  { "show_text", "_OaksLabThoseArePokeBallsText" },

  { "label", "done" },
}
end


mod.content.map_scripts:register("OAKS_LAB", {
  talk = {
    TEXT_OAKSLAB_CHARMANDER_POKE_BALL = starter_script(
      "KOROMON",
      "_OaksLabYouWantKoromonText",
      "EVENT_CHOSE_CHARMANDER",
      "OAKSLAB_CHARMANDER_POKE_BALL",
      "OAKSLAB_SQUIRTLE_POKE_BALL",
      "BUKAMON",
      7
    ),
    TEXT_OAKSLAB_BULBASAUR_POKE_BALL = starter_script(
      "TANEMON",
      "_OaksLabYouWantTanemonText",
      "EVENT_CHOSE_BULBASAUR",
      "OAKSLAB_BULBASAUR_POKE_BALL",
      "OAKSLAB_CHARMANDER_POKE_BALL",
      "KOROMON",
      6
    ),
    TEXT_OAKSLAB_SQUIRTLE_POKE_BALL = starter_script(
      "BUKAMON",
      "_OaksLabYouWantBukamonText",
      "EVENT_CHOSE_SQUIRTLE",
      "OAKSLAB_SQUIRTLE_POKE_BALL",
      "OAKSLAB_BULBASAUR_POKE_BALL",
      "TANEMON",
      8
    ),
  },
})


do
  local remap = {
    ["BULBASAUR"] = { species = "TANEMON", level = 5 },
    ["CHARMANDER"] = { species = "KOROMON", level = 5 },
    ["SQUIRTLE"] = { species = "TSUNOMON", level = 5 },
  }
  mod.events:on("pokemon.before_give", function(gift)
    local map = gift.ctx.overworld and gift.ctx.overworld.map
    if not (map and map.id == "OAKS_LAB") then return end
    if gift.ctx.save.flags and gift.ctx.save.flags.EVENT_GOT_STARTER then return end
    local hit = remap[gift.species]
    if not hit then return end
    gift.species = hit.species
    gift.level = hit.level
  end)
end

mod.content.map_scripts:register("MT_MOON_POKECENTER", {
  talk = {
    TEXT_MTMOONPOKECENTER_MAGIKARP_SALESMAN = function(game, ow, npc, done)
      local TextBox = require("src.render.TextBox")
      local function show(message, on_done)
        game.stack:push(TextBox.new(game, message, on_done))
      end

      if game.save.flags.EVENT_BOUGHT_MAGIKARP then
        show("MAN: Sorry, but I don't\ngive refunds!", done)
        return
      end

      game.stack:push(TextBox.new(game,
        "MAN: Hello, there!\nHave I got a deal\vjust for you!\f"
          .. "I'll let you have\na rare BETAMON\vfor just ¥500!\vWhat do you say?",
        nil, { choice = function(yes)
          if not yes then
            show("No? I'm only\ndoing this as a\vfavor to you!", done)
            return
          end
          if game.save.money < 500 then
            show("You'll need more\nmoney than that!", done)
            return
          end

          game.save.money = game.save.money - 500
          game.save.flags.EVENT_BOUGHT_MAGIKARP = true
          require("src.script.Commands").give_pokemon(
            { save = game.save, game = game, overworld = ow }, "BETAMON", 5)
          show(("%s got a\nBETAMON!"):format(game.save.player.name), done)
        end }))
    end,
  },
})


-- Registration of new Gen 2 like TYpes
  mod.content.type_chart:register("DARK", {
    category = "special",
    name = "DARK",
  })

  mod.content.type_chart:register("STEEL", {
    category = "physical",
    name = "STEEL",
  })


-- Type Effectivity chart
  mod.content.type_chart:register("BUG>DARK", { multiplier = 20 })

  mod.content.type_chart:register("BUG>DRAGON", { multiplier = 10 })

  mod.content.type_chart:register("BUG>STEEL", { multiplier = 5 })

  mod.content.type_chart:register("DARK>DARK", { multiplier = 5 })

  mod.content.type_chart:register("DARK>FIGHTING", { multiplier = 5 })

  mod.content.type_chart:register("DARK>GHOST", { multiplier = 20 })

  mod.content.type_chart:register("DARK>PSYCHIC_TYPE", { multiplier = 20 })

  mod.content.type_chart:register("DRAGON>STEEL", { multiplier = 5 })

  mod.content.type_chart:register("FIGHTING>DARK", { multiplier = 20 })

  mod.content.type_chart:register("FIGHTING>STEEL", { multiplier = 20 })

  mod.content.type_chart:register("FIRE>STEEL", { multiplier = 20 })

  mod.content.type_chart:register("FLYING>STEEL", { multiplier = 5 })

  mod.content.type_chart:register("GHOST>DARK", { multiplier = 5 })

  mod.content.type_chart:register("GRASS>STEEL", { multiplier = 5 })

  mod.content.type_chart:register("GROUND>STEEL", { multiplier = 20 })

  mod.content.type_chart:register("ICE>STEEL", { multiplier = 5 })

  mod.content.type_chart:register("NORMAL>STEEL", { multiplier = 5 })

  mod.content.type_chart:register("POISON>STEEL", { multiplier = 0 })

  mod.content.type_chart:register("PSYCHIC_TYPE>DARK", { multiplier = 0 })

  mod.content.type_chart:register("PSYCHIC_TYPE>STEEL", { multiplier = 5 })

  mod.content.type_chart:register("ROCK>STEEL", { multiplier = 5 })

  mod.content.type_chart:register("STEEL>BUG", { multiplier = 20 })

  mod.content.type_chart:register("STEEL>ELECTRIC", { multiplier = 5 })

  mod.content.type_chart:register("STEEL>FIGHTING", { multiplier = 10 })

  mod.content.type_chart:register("STEEL>FIRE", { multiplier = 5 })

  mod.content.type_chart:register("STEEL>GROUND", { multiplier = 10 })

  mod.content.type_chart:register("STEEL>ICE", { multiplier = 20 })

  mod.content.type_chart:register("STEEL>ROCK", { multiplier = 20 })

  mod.content.type_chart:register("STEEL>STEEL", { multiplier = 5 })

  mod.content.type_chart:register("STEEL>WATER", { multiplier = 5 })




end
