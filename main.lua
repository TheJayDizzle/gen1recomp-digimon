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




-- Digivolution repeatedly resets a Digimon to level 1, so shorten all six cumulative EXP curves before any species or party members are created.
local growth_source = assert(mod:read("growth.lua"), "missing growth.lua")
local growth_chunk, growth_error = load(growth_source,
  "@" .. mod.path .. "/growth.lua")
assert(growth_chunk, growth_error)
local apply_growth_curve = growth_chunk()
assert(type(apply_growth_curve) == "function",  "growth.lua must return a function")
apply_growth_curve()


-- Species definitions live in digimon.lua; loading them first makes their IDs and Pokédex text available to every later module in this mod.
local digimon_source = assert(mod:read("digimon.lua"), "missing digimon.lua")
local digimon_chunk, digimon_error = load(digimon_source, "@" .. mod.path .. "/digimon.lua")
assert(digimon_chunk, digimon_error)
local register_digimon = digimon_chunk()
assert(type(register_digimon) == "function", "digimon.lua must return a function")
register_digimon(mod)


-- The party's DIGIVOLVE action and its dedicated window live separately so requirements and transformation logic can be added without growing main.
local digivolution_source = assert(mod:read("digivolution.lua"),
  "missing digivolution.lua")
local digivolution_chunk, digivolution_error = load(digivolution_source,
  "@" .. mod.path .. "/digivolution.lua")
assert(digivolution_chunk, digivolution_error)
local apply_digivolution_ui = digivolution_chunk()
assert(type(apply_digivolution_ui) == "function",  "digivolution.lua must return a function")
apply_digivolution_ui(mod)


-- Wild encounter tables live in encounters.lua, keeping this file focused on trainer, text, and story changes.
local encounter_source = assert(mod:read("encounters.lua"), "missing encounters.lua")
local encounter_chunk, encounter_error = load(encounter_source,
  "@" .. mod.path .. "/encounters.lua")
assert(encounter_chunk, encounter_error)
local apply_encounters = encounter_chunk()
assert(type(apply_encounters) == "function", "encounters.lua must return a function")
apply_encounters(mod)


local trainers_source = assert(mod:read("trainers.lua"), "missing trainers.lua")
local trainers_chunk, trainers_error = load(trainers_source,
  "@" .. mod.path .. "/trainers.lua")
assert(trainers_chunk, trainers_error)
local apply_trainers = trainers_chunk()
assert(type(apply_trainers) == "function", "trainers.lua must return a function")
apply_trainers(mod)


-- World and NPC changes live in map.lua. This patch adds the permanent
-- Cerulean demo boundary without replacing the rest of the city map.
local map_source = assert(mod:read("map.lua"), "missing map.lua")
local map_chunk, map_error = load(map_source, "@" .. mod.path .. "/map.lua")
assert(map_chunk, map_error)
local apply_map_changes = map_chunk()
assert(type(apply_map_changes) == "function", "map.lua must return a function")
apply_map_changes(mod)


-- Keep the base game's generated dialogue untouched. This mod-local file replaces POKéMON in every registered text entry with DIGIMON instead.
local text_source = assert(mod:read("text.lua"), "missing text.lua")
local text_chunk, text_error = load(text_source, "@" .. mod.path .. "/text.lua")
assert(text_chunk, text_error)
local apply_text_overrides = text_chunk()
assert(type(apply_text_overrides) == "function", "text.lua must return a function")
apply_text_overrides(mod)

local hd_battle_source = assert(mod:read("HD_battle.lua"), "missing HD_battle.lua")
local hd_battle_chunk, hd_battle_error = load(hd_battle_source, "@" .. mod.path .. "/HD_battle.lua")
assert(hd_battle_chunk, hd_battle_error)
local apply_hd_battle = hd_battle_chunk()
assert(type(apply_hd_battle) == "function", "HD_battle.lua must return a function")
apply_hd_battle(mod)

-- While viewing a Pokédex entry, Up and Down browse the adjacent seen entry without returning to the list first.
local dex_navigation_source = assert(mod:read("dex_navigation.lua"),
  "missing dex_navigation.lua")
local dex_navigation_chunk, dex_navigation_error = load(dex_navigation_source,
  "@" .. mod.path .. "/dex_navigation.lua")
assert(dex_navigation_chunk, dex_navigation_error)
local apply_dex_navigation = dex_navigation_chunk()
assert(type(apply_dex_navigation) == "function",
  "dex_navigation.lua must return a function")
apply_dex_navigation()

-- Digivolution resets learned moves regularly, sio TMs remain in the bag after a successful use just like HMs do.
local reusable_tms_source = assert(mod:read("reusable_tms.lua"),
  "missing reusable_tms.lua")
local reusable_tms_chunk, reusable_tms_error = load(reusable_tms_source,
  "@" .. mod.path .. "/reusable_tms.lua")
assert(reusable_tms_chunk, reusable_tms_error)
local apply_reusable_tms = reusable_tms_chunk()
assert(type(apply_reusable_tms) == "function",
  "reusable_tms.lua must return a function")
apply_reusable_tms()

-- Give the ordinary field-party screen more breathing room while retaining its native Gen 1 controls and drawing components.
local hd_party_source = assert(mod:read("HD_party.lua"), "missing HD_party.lua")
local hd_party_chunk, hd_party_error = load(hd_party_source,
  "@" .. mod.path .. "/HD_party.lua")
assert(hd_party_chunk, hd_party_error)
local apply_hd_party = hd_party_chunk()
assert(type(apply_hd_party) == "function", "HD_party.lua must return a function")
apply_hd_party(mod)

-- Party and Digivolution icons are redrawn at window resolution. Custom icon sheets can later replace the temporary front-sprite portraits.
local hd_icons_source = assert(mod:read("HD_icons.lua"), "missing HD_icons.lua")
local hd_icons_chunk, hd_icons_error = load(hd_icons_source,
  "@" .. mod.path .. "/HD_icons.lua")
assert(hd_icons_chunk, hd_icons_error)
local apply_hd_icons = hd_icons_chunk()
assert(type(apply_hd_icons) == "function", "HD_icons.lua must return a function")
apply_hd_icons(mod)

-- Replace the Poké Ball-like corners used by every Gen 1 menu box with the mod's 8x8 Digivice symbol.
local custom_borders_source = assert(mod:read("custom_borders.lua"),
  "missing custom_borders.lua")
local custom_borders_chunk, custom_borders_error = load(custom_borders_source,
  "@" .. mod.path .. "/custom_borders.lua")
assert(custom_borders_chunk, custom_borders_error)
local apply_custom_borders = custom_borders_chunk()
assert(type(apply_custom_borders) == "function",
  "custom_borders.lua must return a function")
apply_custom_borders(mod)

-- New moves and edits to existing movesd
local moves_source = assert(mod:read("moves.lua"), "missing moves.lua")
local moves_chunk, moves_error = load(moves_source,
  "@" .. mod.path .. "/moves.lua")
assert(moves_chunk, moves_error)
local apply_moves = moves_chunk()
assert(type(apply_moves) == "function", "moves.lua must return a function")
apply_moves(mod)


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
