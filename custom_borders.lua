return function(mod)
  local Assets = require("src.render.Assets")
  local Font = require("src.render.Font")

  if Font.digimonBorderHooked then return end
  Font.digimonBorderHooked = true

  local nativeDrawBox = Font.drawBox
  local imagePath = mod.assets:path("assets/icons/digivice_border.png")
  local image

  local function borderImage()
    if image then return image end
    local ok, loaded = pcall(Assets.image, imagePath)
    if not (ok and loaded) then return nil end
    if loaded.setFilter then loaded:setFilter("nearest", "nearest") end
    image = loaded
    return image
  end

  Font.drawBox = function(tx, ty, tw, th, fill)
    local icon = borderImage()
    if not icon then return nativeDrawBox(tx, ty, tw, th, fill) end

    -- Preserve the native paper and straight border pieces while suppressing
    -- its four Poké Ball-like corner glyphs.
    local border = Font.BORDER
    local tl, tr, bl, br = border.tl, border.tr, border.bl, border.br
    border.tl, border.tr, border.bl, border.br = 0x7F, 0x7F, 0x7F, 0x7F
    local ok, result = pcall(nativeDrawBox, tx, ty, tw, th, fill)
    border.tl, border.tr, border.bl, border.br = tl, tr, bl, br
    if not ok then error(result, 0) end

    local g = love.graphics
    local r, green, b, a = g.getColor()
    g.setColor(1, 1, 1, 1)
    -- The left corners face inward by mirroring the authored right-facing
    -- Digivice around the edge of its 8-pixel tile.
    g.draw(icon, (tx + 1) * 8, ty * 8, 0, -1, 1)
    g.draw(icon, (tx + tw - 1) * 8, ty * 8)
    g.draw(icon, (tx + 1) * 8, (ty + th - 1) * 8, 0, -1, 1)
    g.draw(icon, (tx + tw - 1) * 8, (ty + th - 1) * 8)
    g.setColor(r, green, b, a)
    return result
  end
end
