-- Draw Digimon menu icons after the 160x144 canvas has been composited.
-- This preserves the source image's resolution instead of first reducing it
-- to a 16x16 bitmap on the Game Boy UI canvas.
return function(mod)
  local Assets = require("src.render.Assets")
  local PartyMenu = require("src.ui.PartyMenu")
  local Renderer = require("src.render.Renderer")

  local ICON_OFFSET_X = 0
  local state = PartyMenu.digimonHDIconState
  if not state then
    state = {
      nativeDrawIcon = PartyMenu.drawIcon,
      pending = {},
      imageCache = setmetatable({}, { __mode = "v" }),
    }
    PartyMenu.digimonHDIconState = state

    -- Install one permanent dispatcher on the engine class. On a mod hot
    -- reload only state.drawIcon is replaced; the engine method is not
    -- wrapped repeatedly, while the new mod instance can reconnect its HUD
    -- hook below.
    PartyMenu.drawIcon = function(...)
      return state.drawIcon(...)
    end
  end
  PartyMenu.digimonHDIconHooked = true

  local nativeDrawIcon = state.nativeDrawIcon
  local pending = state.pending
  local imageCache = state.imageCache

  local function imageFor(path)
    if not path then return nil end
    if imageCache[path] then return imageCache[path] end
    local ok, image = pcall(Assets.image, path)
    if ok and image then
      if image.setFilter then image:setFilter("nearest", "nearest") end
      imageCache[path] = image
      return image
    end
    -- Do not permanently cache a failed lookup. During a reload an asset can
    -- be unavailable for one frame and become valid again immediately.
    return nil
  end

  local function presentation(game, mon)
    local data = game and game.data
    local def = data and data.pokemon and data.pokemon[mon.species]
    if not (def and def.trueColor and def.spriteFront) then return nil end

    -- A custom icons-registry image wins. Until one is supplied, use the
    -- high-resolution front sprite as a proof-of-concept menu portrait.
    local entry = def.icon
    if entry == nil then
      entry = data.icons and data.icons.bySpecies
        and data.icons.bySpecies[mon.species]
    end
    local path, frames
    if type(entry) == "table" then
      path, frames = entry.image, math.max(1, tonumber(entry.frames) or 1)
    else
      path, frames = def.spriteFront, 1
    end
    local image = imageFor(path)
    if not image then return nil end
    return image, frames
  end

  state.drawIcon = function(game, mon, x, y, selected, counter, forceAlt)
    local top = game and game.stack and game.stack:top()
    local isParty = top and getmetatable(top) == PartyMenu
    local isDigivolution = top and top.digimonHDIcons == true
    if not (isParty or isDigivolution) then
      return nativeDrawIcon(game, mon, x, y, selected, counter, forceAlt)
    end

    local image, frames = presentation(game, mon)
    if not image then
      return nativeDrawIcon(game, mon, x, y, selected, counter, forceAlt)
    end
    pending[#pending + 1] = {
      image = image, frames = frames, mon = mon,
      x = x, y = y, selected = selected == true,
      counter = tonumber(counter) or 0, forceAlt = forceAlt == true,
    }
    return true
  end

  local function selectedFrame(request)
    if request.frames < 2 then return 0 end
    if request.forceAlt then return 1 end
    if not request.selected then return 0 end
    local mon = request.mon
    local hp, maxHp = tonumber(mon.hp) or 0,
      math.max(1, tonumber(mon.stats and mon.stats.hp) or 1)
    local px = math.floor(hp * 48 / maxHp)
    local speed = px >= 27 and 5 or px >= 10 and 16 or 32
    return math.floor(request.counter / speed) % 2
  end

  mod.hooks:wrap("render.hud", function(next, game, viewport)
    next(game, viewport)
    if #pending == 0 then return end

    local requests = pending
    pending = {}
    state.pending = pending
    if type(viewport) ~= "table" or not love or not love.graphics then return end
    local dpiX, dpiY = tonumber(viewport.dpiX) or 1,
      tonumber(viewport.dpiY) or 1
    local uiw, uih = Renderer:uiSize()
    local pixelW = (tonumber(viewport.width) or 0) * dpiX
    local pixelH = (tonumber(viewport.height) or 0) * dpiY
    local uiScale = Renderer:uiScale()
    if Renderer.uiFill then
      uiScale = math.min(pixelW / uiw, pixelH / uih)
    end
    local sx, sy = uiScale / dpiX, uiScale / dpiY
    if sx <= 0 or sy <= 0 then return end
    local gameX = math.floor((pixelW - uiw * uiScale) / 2) / dpiX
    local gameY = math.floor((pixelH - uih * uiScale) / 2) / dpiY

    local g = love.graphics
    local oldR, oldG, oldB, oldA = g.getColor()
    local oldShader = g.getShader and g.getShader() or nil
    g.setShader()
    g.setColor(1, 1, 1, 1)
    g.setScissor(gameX, gameY, uiw * sx, uih * sy)

    for _, request in ipairs(requests) do
      local image = request.image
      local iw, ih = image:getDimensions()
      local frameH = ih / request.frames
      local frame = math.min(request.frames - 1, selectedFrame(request))
      local slotW, slotH = 16 * sx, 16 * sy
      local fit = math.min(slotW / iw, slotH / frameH)
      local dw, dh = iw * fit, frameH * fit
      local dx = gameX + (request.x + ICON_OFFSET_X) * sx + (slotW - dw) / 2
      local dy = gameY + request.y * sy + slotH - dh
      if request.frames > 1 then
        local quad = g.newQuad(0, frame * frameH, iw, frameH, iw, ih)
        g.draw(image, quad, dx, dy, 0, fit, fit)
      else
        g.draw(image, dx, dy, 0, fit, fit)
      end
    end

    g.setScissor()
    if oldShader then g.setShader(oldShader) end
    g.setColor(oldR, oldG, oldB, oldA)
  end)
end
