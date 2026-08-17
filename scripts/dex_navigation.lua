return function()
  local DexEntryMenu = require("src.ui.DexEntryMenu")

  if DexEntryMenu.digimonNavigationHooked then return end
  DexEntryMenu.digimonNavigationHooked = true

  local nativeUpdate = DexEntryMenu.update

  local function seenEntries(game)
    local data = game and game.data or {}
    local seen = game and game.save and game.save.pokedex
      and game.save.pokedex.seen or {}
    local entries = {}

    for species, def in pairs(data.pokemon or {}) do
      if def.dex and seen[species] then
        entries[#entries + 1] = { species = species, dex = def.dex }
      end
    end
    table.sort(entries, function(a, b)
      if a.dex == b.dex then return a.species < b.species end
      return a.dex < b.dex
    end)
    return entries
  end

  local function adjacentSpecies(self, step)
    local entries = seenEntries(self.game)
    if #entries < 2 or not (self.def and self.def.id) then return nil end

    for i, entry in ipairs(entries) do
      if entry.species == self.def.id then
        return entries[((i - 1 + step) % #entries) + 1].species
      end
    end
    return nil
  end

  local function changeEntry(self, step)
    local species = adjacentSpecies(self, step)
    if not species then return false end


    local replacement = DexEntryMenu.new(self.game, species, self.onDone)
    local stack = self.game.stack
    stack.states[#stack.states] = replacement
    return true
  end

  DexEntryMenu.update = function(self, dt)
    local input = self.game.input
    if input:wasPressed("down") then
      changeEntry(self, 1)
      return
    elseif input:wasPressed("up") then
      changeEntry(self, -1)
      return
    end
    return nativeUpdate(self, dt)
  end
end
