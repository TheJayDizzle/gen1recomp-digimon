-- A roomier field-party layout that keeps the native Gen 1 drawing and all
-- of PartyMenu's interaction logic. Special-purpose party screens retain
-- their original geometry only where they need a two-line prompt.
return function()
  local Font = require("src.render.Font")
  local HudTiles = require("src.render.HudTiles")
  local PartyMenu = require("src.ui.PartyMenu")

  if PartyMenu.digimonModernLayoutHooked then return end
  PartyMenu.digimonModernLayoutHooked = true

  local nativeDraw = PartyMenu.draw
  local nativeSgbPalettes = PartyMenu.sgbPalettes
  local nativeEntryY = PartyMenu.entryY
  local nativeBottomMessage = PartyMenu.bottomMessage
  local PARTY_TOP_MARGIN = 2
  local PARTY_ROW_HEIGHT = 20

  PartyMenu.bottomMessage = function(self)
    if self.battle then return "Switch DIGIMON?" end
    return nativeBottomMessage(self)
  end

  local function compact(self)
    return not self.tmhm and not self.softboiledFrom and not self.heal
  end

  PartyMenu.draw = function(self, ...)
    if not compact(self) then return nativeDraw(self, ...) end

    local nativeDrawBox, nativeFontDraw = Font.drawBox, Font.draw
    local nativeDrawHPBar, nativeHudTile = HudTiles.drawHPBar, HudTiles.tile
    local prompt = self:bottomMessage()
    PartyMenu.entryY = function(i)
      return PARTY_TOP_MARGIN + (i - 1) * PARTY_ROW_HEIGHT
    end

    -- The original prompt is rows 12-17 (48 px). Replace only that exact
    -- box with rows 15-17 (24 px), and move its single line into the middle.
    Font.drawBox = function(tx, ty, tw, th, ...)
      if tx == 0 and ty == 12 and tw == 20 and th == 6 then
        return nativeDrawBox(0, 15, 20, 3, ...)
      end
      return nativeDrawBox(tx, ty, tw, th, ...)
    end
    Font.draw = function(text, x, y, ...)
      if text == prompt and x == 8 and y == 112 then
        return nativeFontDraw(text, x, 128, ...)
      end
      -- Item targeting normally prints a loose bottom-row instruction.
      -- Give it the same compact Gen 1 box as the field/battle prompt.
      if (self.pickOnly or self.swapFrom)
          and text == prompt and x == 8 and y == 136 then
        nativeDrawBox(0, 15, 20, 3)
        return nativeFontDraw(text, x, 128, ...)
      end
      -- Species names share x=24 and the top of one of the six party rows.
      -- Move them clear of the cursor/icon edge without moving right-aligned
      -- levels or HP numbers toward the screen boundary.
      if x == 24 and y >= PARTY_TOP_MARGIN and y <= 102
          and (y - PARTY_TOP_MARGIN) % PARTY_ROW_HEIGHT == 0 then
        x = 26
      end
      -- Put the level digits against the right edge of the name row. This
      -- leaves the middle of the row free for long Digimon names. HP values
      -- use y % 20 == 8 and therefore remain at their existing positions.
      if y >= PARTY_TOP_MARGIN and y <= 102
          and (y - PARTY_TOP_MARGIN) % PARTY_ROW_HEIGHT == 0 then
        if x == 112 and tostring(text):match("^%d%d?$") then
          x = 144
        elseif x == 104 and tostring(text):match("^%d%d%d$") then
          x = 136
        end
      end
      return nativeFontDraw(text, x, y, ...)
    end
    HudTiles.tile = function(code, x, y, ...)
      -- The <LV> glyph begins at x=104 natively. Align it with the final
      -- three character cells so levels 1-99 and level 100 share an edge.
      if code == 0x6E and x == 104
          and y >= PARTY_TOP_MARGIN and y <= 102
          and (y - PARTY_TOP_MARGIN) % PARTY_ROW_HEIGHT == 0 then
        x = 136
      end
      return nativeHudTile(code, x, y, ...)
    end
    HudTiles.drawHPBar = function(data, tx, ty, mon, ...)
      -- PartyMenu normally starts at tile 5 (x=40), making the right cap
      -- touch the HP number at x=104. Tile 3 aligns HP: with the name and
      -- preserves the original six-segment bar with an eight-pixel gap.
      if tx == 5 then tx = 3.25 end
      return nativeDrawHPBar(data, tx, ty, mon, ...)
    end

    local args, unpackArgs = { ... }, table.unpack or unpack
    local ok, result = pcall(nativeDraw, self, unpackArgs(args))
    PartyMenu.entryY = nativeEntryY
    Font.drawBox, Font.draw = nativeDrawBox, nativeFontDraw
    HudTiles.drawHPBar, HudTiles.tile = nativeDrawHPBar, nativeHudTile
    if not ok then error(result, 0) end
    return result
  end

  PartyMenu.sgbPalettes = function(self, game)
    local zones = nativeSgbPalettes(self, game)
    if not compact(self) or type(zones) ~= "table" then return zones end

    -- Native HP palette strips assume 16-pixel rows. Move those strips to
    -- the bars' new y positions so green/yellow/red still line up exactly.
    local bar = 0
    for _, zone in ipairs(zones) do
      if zone.x == 48 and zone.w == 56 and zone.h == 8 then
        bar = bar + 1
        zone.x = zone.x - 14
        zone.y = PARTY_TOP_MARGIN + (bar - 1) * PARTY_ROW_HEIGHT + 8
      end
    end
    return zones
  end
end
