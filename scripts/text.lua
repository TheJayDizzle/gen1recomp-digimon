-- Applies the terminology change to the base game's dialogue without changing game files.
-- will need to look our for snippets like "POKé", also sprite for Pokecenter needs to be changed
-- obviously, Pokemon names in trainers text will need to be modified to their new correspondive digimon name
return function(mod)
  local replacements = {
    { "POKéDEX", "DIGIDEX" },
    { "POKéMON", "DIGIMON" },
    { "POKéMANIAC", "DIGIMANIAC" },
    { "TRAINER", "TAMER" },
    { "Trainer", "Tamer" },
    { "trainer", "tamer" },
  }

  for id, text in mod.content.text:each() do
    local replaced = text
    for _, replacement in ipairs(replacements) do
      replaced = replaced:gsub(replacement[1], replacement[2])
    end

    if replaced ~= text then
      mod.content.text:override(id, replaced)
    end
  end

  -- Start-menu labels are authored directly by the UI rather than coming
  -- from the text registry, so translate those rows through their public
  -- construction hook.
  mod.hooks:wrap("ui.start_menu.items", function(next, game, items)
    local out = next(game, items)
    if type(out) ~= "table" then return out end
    for _, item in ipairs(out) do
      if type(item) == "table" and type(item.label) == "string" then
        item.label = item.label:gsub("POKéDEX", "DIGIDEX")
                               :gsub("POKéMON", "DIGIMON")

        -- The SAVE row builds its player/badge/Dex summary from another
        -- hardcoded UI string. Its numeric value is the same owned-entry
        -- count; only intercept the TextBox created synchronously by this
        -- row so the label reads DIGIDEX as well.
        if item.label == "SAVE" and type(item.onSelect) == "function" then
          local nativeSelect = item.onSelect
          item.onSelect = function(...)
            local TextBox = require("src.render.TextBox")
            local nativeTextBoxNew = TextBox.new
            TextBox.new = function(boxGame, text, ...)
              if type(text) == "string" then
                text = text:gsub("POKéDEX", "DIGIDEX")
                           :gsub("POKéMON", "DIGIMON")
              end
              return nativeTextBoxNew(boxGame, text, ...)
            end
            local args, unpackArgs = { ... }, table.unpack or unpack
            local ok, result = pcall(nativeSelect, unpackArgs(args))
            TextBox.new = nativeTextBoxNew
            if not ok then error(result, 0) end
            return result
          end
        end
      end
    end
    return out
  end)

  -- The Dex list title is also a direct UI literal rather than registered
  -- dialogue. Keep its behavior intact and rename only the displayed title.
  local PokedexMenu = require("src.ui.PokedexMenu")
  if not PokedexMenu.digimonTitleHooked then
    PokedexMenu.digimonTitleHooked = true
    local nativeNew = PokedexMenu.new
    PokedexMenu.new = function(...)
      local menu = nativeNew(...)
      if menu and menu.title == "POKéDEX" then menu.title = "DIGIDEX" end
      return menu
    end
  end
end
