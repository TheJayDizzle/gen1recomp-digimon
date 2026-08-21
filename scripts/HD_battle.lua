-- Proof-of-concept HD battle backdrop.
--
-- This keeps the normal battle UI for now, but replaces the opaque white
-- battle paper with a full-window canvas behind the 160x144 battle layer.
return function(mod)
  local ok_battle, BattleState = pcall(require, "src.battle.BattleState")
  local ok_world, OverworldState = pcall(require, "src.world.OverworldController")
  if not (ok_battle and ok_world and BattleState and OverworldState) then
    return
  end
  local Font = require("src.render.Font")

  if BattleState.digimonHDHooked then return end
  BattleState.digimonHDHooked = true

  -- Custom scene coordinates are in the original battle's 160x144 logical
  -- pixels. `bottom` is where a texture's feet rest, so 56x56 and 160x160
  -- source art can share the same battlefield position.
  local CUSTOM_SPRITES = {
    -- These match the classic battle slots for ordinary 56x56 front art and
    -- 32x32 (rendered 2x) back art, keeping them clear of the HUD and box.
    enemy = { centerX = 124, bottom = 54, maxSize = 70, scale = 1 },
    player = { left = 0, bottom = 96, maxSize = 78, scale = 1 },
  }

  -- Large art gets its own layout rather than pushing every normal-sized mon
  -- into the same oversized position. Add a species entry as needed.
  local LARGE_SPECIES_LAYOUT = {
    -- greymon2.png has 13 transparent rows below its visible feet. At its
    -- 64/160 scene fit this is 5.2 logical pixels, so the canvas rests at 69
    -- for the artwork itself to rest close to y = 64.
    
    TANEMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.7},
    TOGEMON = { centerX = 124, bottom = 54, maxSize = 64, scale = 1},
    KOROMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.7},
    AGUMON = { centerX = 124, bottom = 54, maxSize = 64, scale = 0.8},
    GREYMON = { centerX = 124, bottom = 54, maxSize = 56, scale = 1},
    BUKAMON = { centerX = 124, bottom = 46, maxSize = 56, scale = 0.5},
    MINOMON = { centerX = 124, bottom = 46, maxSize = 56, scale = 0.6},
    STINGMON = { centerX = 124, bottom = 54, maxSize = 64, scale = 1},
    KUNEMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.5},
    FLYMON = { centerX = 124, bottom = 54, maxSize = 60, scale = 1},
    TSUNOMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.7},
    GABUMON = { centerX = 124, bottom = 54, maxSize = 70, scale = 0.9},
    GARURUMON = { centerX = 124, bottom = 54, maxSize = 56, scale = 1},
    MOTIMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.7},
    KABUTERIMON = { centerX = 124, bottom = 54, maxSize = 56, scale = 1},
    TOKOMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.3},
    GOBURIMON = { centerX = 124, bottom = 54, maxSize = 70, scale = 0.7},
    OGREMON = { centerX = 124, bottom = 54, maxSize = 56, scale = 1},
    AIRDRAMON = { centerX = 124, bottom = 54, maxSize = 56, scale = 1},
    SNIMON = { centerX = 124, bottom = 54, maxSize = 70, scale = 1},
    GESOMON = { centerX = 124, bottom = 54, maxSize = 64, scale = 1},
    FRIGIMON = { centerX = 124, bottom = 54, maxSize = 56, scale = 1},
    YOKOMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.6},
    BIYOMON = { centerX = 124, bottom = 54, maxSize = 64, scale = 0.7},
    BIRDRAMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 1},
    LEOMON = { centerX = 124, bottom = 54, maxSize = 56, scale = 1},
    NYAROMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.6},
    SALAMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.6},
    GATOMON = { centerX = 124, bottom = 54, maxSize = 56, scale = 1},
    BETAMON = { centerX = 124, bottom = 46, maxSize = 76, scale = 1},
    SEADRAMON = { centerX = 124, bottom = 46, maxSize = 50, scale = 1},
    PAGUMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.7},
    DEVIMON = { centerX = 124, bottom = 46, maxSize = 52, scale = 1},
    UPAMON = { centerX = 124, bottom = 46, maxSize = 52, scale = 0.6},
    MONOCHROMON = { centerX = 124, bottom = 46, maxSize = 54, scale = 0.9},
    ARMADILLOMON = { centerX = 124, bottom = 54, maxSize = 70, scale = 1},
    MUSHROOMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.75},
    VEGIEMON = { centerX = 124, bottom = 54, maxSize = 70, scale = 0.9},
    GAZIMON = { centerX = 124, bottom = 46, maxSize = 58, scale = 0.9},
    CHUUMON = { centerX = 124, bottom = 46, maxSize = 58, scale = 0.6},
    SUKAMON = { centerX = 124, bottom = 46, maxSize = 58, scale = 0.8},
    MUCHOMON = { centerX = 124, bottom = 46, maxSize = 58, scale = 0.75},
    KOKATORIMON = { centerX = 124, bottom = 54, maxSize = 64, scale = 0.95},
    KAPURIMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.65},
    HAGURUMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.8},
    GUARDROMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.8},
    GIZAMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.8},
    LALAMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.6},
    SUNFLOWMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.75},
    FLORAMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.75},
    KIWIMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.75},
    OTAMAMON = { centerX = 124, bottom = 46, maxSize = 46, scale = 0.66},
    GEKOMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.75},
    IMPMON = { centerX = 124, bottom = 46, maxSize = 70, scale = 0.75},
    WIZARDMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.75},
    SORCERMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.75},
    MOYJAMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.75},
    SUNARIZAMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.75},
    VEEMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.75},
    HAWKMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.8},
    BAKEMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.75},
    NUMEMON = { centerX = 124, bottom = 46, maxSize = 64, scale = 0.7},

  }

  -- Per-species layout for the player's back-facing battle sprite. These
  -- values override CUSTOM_SPRITES.player only for the named Digimon.
  -- Use `left` to position from the left edge, or replace it with `centerX`
  -- when centering is more convenient. `bottom` remains the feet/baseline.
  local PLAYER_SPECIES_LAYOUT = {
    AGUMON = { left = 12, bottom = 96, maxSize = 45, scale = 1},
    -- GREYMON = { centerX = 36, bottom = 96, maxSize = 78, scale = 0.6 },
    GARURUMON = { left = 0, bottom = 96, maxSize = 70, scale = 1},
    PAGUMON = { left = 0, bottom = 96, maxSize = 78, scale = 0.85},
    GOTSUMON = { left = 12, bottom = 96, maxSize = 56, scale = 1},
    UPAMON = { left = 0, bottom = 96, maxSize = 70, scale = 0.9},
    MUSHROOMON = { left = 6, bottom = 96, maxSize = 70, scale = 0.9},
    CHUUMON = { left = 12, bottom = 96, maxSize = 70, scale = 0.8},
    GAZIMON = { left = 6, bottom = 96, maxSize = 70, scale = 0.9},
    SUKAMON = { left = 0, bottom = 96, maxSize = 70, scale = 1},
    SUNFLOWMON = { left = 0, bottom = 96, maxSize = 78, scale = 1},
    FLORAMON = { left = 6, bottom = 96, maxSize = 56, scale = 0.9},
    KIWIMON = { left = 0, bottom = 96, maxSize = 70, scale = 1},
    OTAMAMON = { left = 12, bottom = 96, maxSize = 52, scale = 1},
    GEKOMON = { left = 12, bottom = 96, maxSize = 70, scale = 0.9},
    WIZARDMON = { left = 0, bottom = 96, maxSize = 70, scale = 0.9},
    IMPMON = { left = 6, bottom = 96, maxSize = 70, scale = 0.75},
    SUNARIZAMON = { left = 6, bottom = 96, maxSize = 70, scale = 1},
    TORTAMON = { left = 12, bottom = 96, maxSize = 64, scale = 1},
    VEEMON = { left = 0, bottom = 96, maxSize = 70, scale = 1},
    HAWKMON = { left = 12, bottom = 96, maxSize = 56, scale = 1},
    BAKEMON = { left = 0, bottom = 96, maxSize = 70, scale = 1},
    NUMEMON = { left = 6, bottom = 96, maxSize = 64, scale = 1},

  }

  local stageCanvas
  local originalDrawPicsLayer = BattleState.drawPicsLayer
  local originalDrawTextArea = BattleState.drawTextArea
  local originalDrawAnimLayer = BattleState.drawAnimLayer
  local originalDrawHUDs = BattleState.drawHUDs
  local originalFrontPlacement = BattleState.frontPlacement
  local originalBackPlacement = BattleState.backPlacement
  local textureContext
  local sideTextures = {}
  local menuSpriteCache = setmetatable({}, { __mode = "k" })

  ---------------------------------------------------------------------------
  -- Compact experience presentation
  ---------------------------------------------------------------------------
  -- Experience.apply still performs every native calculation immediately.
  -- This screen only visualizes the old-to-new EXP range while the battle
  -- queue waits, replacing the repeated gained/grew/stat-box sequence.
  local Experience = require("src.battle.Experience")
  local Growth = require("src.pokemon.Growth")
  local PartyMenu = require("src.ui.PartyMenu")

  local ExpOverlay = {}
  ExpOverlay.__index = ExpOverlay
  ExpOverlay.isOpaque = false
  ExpOverlay.digimonHDIcons = true

  local function expSegments(game, mon, oldExp, finalExp, oldLevel, finalLevel)
    local def = game.data.pokemon[mon.species]
    local rate = def.growthRate
    local rates = game.data.growth_rates
    local cap = game.data.constants and game.data.constants.levelCap or 100
    local segments = {}
    local position = oldExp
    local level = oldLevel

    while position < finalExp and level <= cap do
      local base = Growth.expForLevel(rate, level, rates)
      local nextExp = level < cap
        and Growth.expForLevel(rate, level + 1, rates) or math.max(base + 1, finalExp)
      -- A save made under an older, cheaper curve can legitimately carry less
      -- total EXP than the current curve says this level starts at. Treat the
      -- preceding threshold as its visual floor so existing progress remains
      -- visible; the actual saved EXP and leveling calculation stay untouched.
      local visualBase = base
      if position < base then
        visualBase = Growth.expForLevel(rate, math.max(1, level - 1), rates)
        if position < visualBase then visualBase = 0 end
      end
      local finish = math.min(finalExp, nextExp)
      segments[#segments + 1] = {
        level = level, first = position, last = finish,
        base = visualBase, nextExp = nextExp, duration = 2.60,
      }
      position = finish
      if position >= nextExp then level = level + 1 else break end
    end

    if #segments == 0 then
      local base = Growth.expForLevel(rate, finalLevel, rates)
      local nextExp = finalLevel < cap
        and Growth.expForLevel(rate, finalLevel + 1, rates) or base + 1
      -- Unchanged/non-participating party members enter this branch. Apply
      -- the same old-save curve compatibility used by animated segments, or
      -- their existing within-level EXP can incorrectly render as an empty
      -- bar until they receive enough EXP to level up.
      local visualBase = base
      if finalExp < base then
        visualBase = Growth.expForLevel(rate, math.max(1, finalLevel - 1), rates)
        if finalExp < visualBase then visualBase = 0 end
      end
      segments[1] = { level=finalLevel, first=finalExp, last=finalExp,
        base=visualBase, nextExp=nextExp, duration=0.25 }
    elseif finalLevel > oldLevel
       and finalExp == Growth.expForLevel(rate, finalLevel, rates) then
      -- Hold the newly reset bar briefly when the award lands exactly on a
      -- level boundary; otherwise the last visible frame would be a full bar.
      local base = Growth.expForLevel(rate, finalLevel, rates)
      local nextExp = finalLevel < cap
        and Growth.expForLevel(rate, finalLevel + 1, rates) or base + 1
      segments[#segments + 1] = { level=finalLevel, first=finalExp,
        last=finalExp, base=base, nextExp=nextExp, duration=0.30 }
    end
    return segments
  end

  function ExpOverlay.new(game, party, records)
    local entries = {}
    for _, mon in ipairs(party) do
      local record = records[mon]
      local oldExp = record and record.oldExp or mon.exp
      local oldLevel = record and record.oldLevel or mon.level
      local finalExp = record and record.finalExp or mon.exp
      local finalLevel = record and record.finalLevel or mon.level
      entries[#entries + 1] = {
        mon=mon, gained=record and record.gained or 0,
        index=1, elapsed=0, levelFlash=0, barFlash=0,
        segments=expSegments(game, mon, oldExp, finalExp, oldLevel, finalLevel),
      }
    end
    return setmetatable({ game=game, entries=entries, speed=1,
      boosted=false, finished=false }, ExpOverlay)
  end

  function ExpOverlay:update(dt)
    local input = self.game.input
    local pressed = input:wasPressed("a") or input:wasPressed("b")
    if pressed then
      if self.finished then
        self.game.stack:pop()
        return
      elseif not self.boosted then
        self.boosted = true
        self.speed = 2
      end
    end

    local allFinished = true
    local advance = (dt or 0) * self.speed
    for _, entry in ipairs(self.entries) do
      entry.levelFlash = math.max(0, (entry.levelFlash or 0) - (dt or 0))
      entry.barFlash = math.max(0, (entry.barFlash or 0) - (dt or 0))
      entry.elapsed = entry.elapsed + advance
      local segment = entry.segments[entry.index]
      while segment and entry.elapsed >= segment.duration do
        local completedLevel = segment.level
        entry.elapsed = entry.elapsed - segment.duration
        entry.index = entry.index + 1
        segment = entry.segments[entry.index]
        if segment and segment.level > completedLevel then
          entry.levelFlash = 0.80
          entry.barFlash = 0.35
        end
      end
      if segment then allFinished = false end
    end
    self.finished = allFinished
  end

  function ExpOverlay:drawPanel()
    local g = love.graphics
    g.setColor(0, 0, 0, 1)
    Font.drawBox(0, 0, 16, 18)

    for i, entry in ipairs(self.entries) do
      local animating = entry.index <= #entry.segments
      local segment = entry.segments[math.min(entry.index, #entry.segments)]
      local progress = animating
        and math.min(1, entry.elapsed / math.max(0.01, segment.duration)) or 1
      local shownExp = segment.first + (segment.last - segment.first) * progress
      local span = math.max(1, segment.nextExp - segment.base)
      local ratio = math.max(0, math.min(1, (shownExp - segment.base) / span))
      local def = self.game.data.pokemon[entry.mon.species]
      local name = entry.mon.nickname or def.name
      local y = 8 + (i - 1) * 22

      -- A short alternating row tint makes each level boundary noticeable
      -- without pausing the simultaneous party-wide EXP animation.
      if entry.levelFlash > 0
         and math.floor(entry.levelFlash / 0.10) % 2 == 1 then
        g.setColor(1, 0.94, 0.55, 1)
        g.rectangle("fill", 6, y - 1, 116, 21)
        g.setColor(0, 0, 0, 1)
      end

      local iconState = PartyMenu.digimonHDIconState
      if iconState and iconState.drawDirectIcon then
        iconState.drawDirectIcon(self.game, entry.mon, 5, y + 1)
      else
        PartyMenu.drawIcon(self.game, entry.mon, 5, y + 1, false, 0)
      end
      Font.draw(name, 28, y)

      local levelText = ("L%d"):format(segment.level)
      Font.draw(levelText, 28, y + 8)
      if entry.levelFlash > 0 then
        -- Draw this directly: the Gen 1 font maps the Unicode up-triangle to
        -- its right-facing menu cursor on some font/charmap combinations.
        local arrowX = 28 + Font.width(levelText) + 2
        local arrowY = y + 9
        g.setColor(0, 0, 0, 1)
        g.rectangle("fill", arrowX + 2, arrowY, 1, 1)
        g.rectangle("fill", arrowX + 1, arrowY + 1, 3, 1)
        g.rectangle("fill", arrowX, arrowY + 2, 5, 1)
        g.rectangle("fill", arrowX + 2, arrowY + 3, 1, 3)
      end
      local gainedText = ("+%d"):format(entry.gained)
      Font.draw(gainedText, 116 - Font.width(gainedText), y + 8)

      g.setColor(0, 0, 0, 1)
      g.rectangle("fill", 28, y + 17, 88, 4)
      g.setColor(1, 1, 1, 1)
      g.rectangle("fill", 29, y + 18, 86, 2)
      if entry.barFlash > 0 then
        g.setColor(0.15, 0.85, 0.25, 1)
      else
        g.setColor(3 / 255, 198 / 255, 252 / 255, 1)
      end
      local fillWidth = math.floor(86 * ratio + 0.5)
      if shownExp > segment.base and fillWidth == 0 then fillWidth = 1 end
      g.rectangle("fill", 29, y + 18, fillWidth, 2)
    end

    g.setColor(1, 1, 1, 1)
  end

  -- The ordinary menu draw target is the centered 160x144 UI canvas. The
  -- actual panel is drawn by render.hud below so it can begin at the physical
  -- left edge of a widescreen window.
  function ExpOverlay:draw() end

  mod.hooks:wrap("render.hud", function(next, game, viewport)
    next(game, viewport)
    local top = game and game.stack and game.stack:top()
    if getmetatable(top) ~= ExpOverlay or type(viewport) ~= "table" then return end
    local screenW, screenH = tonumber(viewport.width) or 0,
      tonumber(viewport.height) or 0
    if screenW <= 0 or screenH <= 0 then return end

    -- 128 logical pixels is two-thirds of a 192x144 4:3 display. Preserve
    -- square pixels and cap against two-thirds on narrower/wider viewports.
    local scale = math.min(screenH / 144, (screenW * 2 / 3) / 128)
    local originY = (screenH - 144 * scale) / 2
    top.digimonHDIconViewport = { x=0, y=originY, scale=scale }

    local g = love.graphics
    local oldR, oldG, oldB, oldA = g.getColor()
    local oldShader = g.getShader and g.getShader() or nil
    if g.setShader then g.setShader() end
    g.push()
    g.translate(0, originY)
    g.scale(scale, scale)
    top:drawPanel()
    g.pop()
    if g.setShader then g.setShader(oldShader) end
    g.setColor(oldR, oldG, oldB, oldA)
  end)

  if not BattleState.digimonExpOverlayHooked then
    BattleState.digimonExpOverlayHooked = true
    local originalAwardExp = BattleState.awardExp
    local originalSayNext = BattleState.sayNext
    local originalSayNextWaitSfx = BattleState.sayNextWaitSfx
    local originalUiNext = BattleState.uiNext
    local originalLearnMove = BattleState.learnMove

    function BattleState:awardExp(...)
      local nativeApply = Experience.apply
      local inMoveLearning = false
      local suppressGainedText = false
      local records = {}
      local party = self:playerPartyView()
      local overlayQueued = false

      Experience.apply = function(data, mon, ...)
        local oldExp, oldLevel = mon.exp, mon.level
        local levels, gained = nativeApply(data, mon, ...)
        local finalExp, finalLevel = mon.exp, mon.level
        local record = records[mon]
        if not record then
          record = { oldExp=oldExp, oldLevel=oldLevel, gained=0 }
          records[mon] = record
        end
        record.gained = record.gained + gained
        record.finalExp, record.finalLevel = finalExp, finalLevel
        if not overlayQueued then
          overlayQueued = true
          originalUiNext(self, function()
            return ExpOverlay.new(self.game, party, records)
          end)
        end
        suppressGainedText = true
        return levels, gained
      end
      self.sayNext = function(state, text)
        if suppressGainedText then
          suppressGainedText = false
          return
        end
        return originalSayNext(state, text)
      end
      self.sayNextWaitSfx = function(state, text, sfx)
        -- Calls made by learnMove retain both their text and learning sound.
        -- All other calls in awardExp are the repetitive grew-level notices.
        if not inMoveLearning then return end
        return originalSayNextWaitSfx(state, text, sfx)
      end
      self.uiNext = function(state, factory)
        -- The only non-move UI queued here is the per-level StatBox.
        if not inMoveLearning then return end
        return originalUiNext(state, factory)
      end
      self.learnMove = function(state, ...)
        inMoveLearning = true
        local results = { originalLearnMove(state, ...) }
        inMoveLearning = false
        return (table.unpack or unpack)(results)
      end

      local ok, result = pcall(originalAwardExp, self, ...)
      Experience.apply = nativeApply
      self.sayNext, self.sayNextWaitSfx = nil, nil
      self.uiNext, self.learnMove = nil, nil
      if not ok then error(result, 0) end
      return result
    end
  end

  local function graphicsReady()
    local g = love and love.graphics
    return g and g.newCanvas and g.getDimensions and g.setCanvas
  end

  -- The status screen and Dex entry reserve a 7x7-tile (56x56) picture
  -- area. Unlike battle, those menus draw the source texture directly, so
  -- large Digimon art would otherwise cover their text and HUD. Cache a
  -- nearest-neighbour version that fits the original slot; ordinary 56x56
  -- sprites are returned unchanged.
  local function menuSizedSprite(sprite)
    if not sprite or type(sprite.getDimensions) ~= "function" then return sprite end
    local w, h = sprite:getDimensions()
    local fit = math.min(1, 56 / math.max(w, h))
    if fit >= 1 then return sprite end
    local cached = menuSpriteCache[sprite]
    if cached then return cached end
    local cw, ch = math.max(1, math.floor(w * fit + 0.5)),
      math.max(1, math.floor(h * fit + 0.5))
    local g = love.graphics
    local previous = g.getCanvas and g.getCanvas() or nil
    local oldR, oldG, oldB, oldA = 1, 1, 1, 1
    if g.getColor then oldR, oldG, oldB, oldA = g.getColor() end
    local ok, canvas = pcall(g.newCanvas, cw, ch, { dpiscale = 1 })
    if not ok then ok, canvas = pcall(g.newCanvas, cw, ch) end
    if not ok or not canvas then return sprite end
    -- Downsampling a 160px illustration to the menu's 56px slot needs a
    -- filtered sample. Keep the finished thumbnail nearest-filtered so the
    -- renderer's integer upscale remains crisp.
    if canvas.setFilter then canvas:setFilter("nearest", "nearest") end
    local minFilter, magFilter
    if sprite.getFilter then minFilter, magFilter = sprite:getFilter() end
    if sprite.setFilter then sprite:setFilter("linear", "linear") end
    g.setCanvas(canvas)
    g.clear(0, 0, 0, 0)
    g.setColor(1, 1, 1, 1)
    g.draw(sprite, 0, 0, 0, fit, fit)
    if sprite.setFilter then sprite:setFilter(minFilter or "nearest", magFilter or "nearest") end
    g.setColor(oldR, oldG, oldB, oldA)
    if previous then g.setCanvas(previous) else g.setCanvas() end
    menuSpriteCache[sprite] = canvas
    return canvas
  end

  local ok_summary, SummaryMenu = pcall(require, "src.ui.SummaryMenu")
  if ok_summary and SummaryMenu and not SummaryMenu.digimonMenuSpriteHooked then
    SummaryMenu.digimonMenuSpriteHooked = true
    local originalSummaryNew = SummaryMenu.new
    SummaryMenu.new = function(...)
      local menu = originalSummaryNew(...)
      local states = menu.game and menu.game.stack and menu.game.stack.states or {}
      for _, state in ipairs(states) do
        if getmetatable(state) == BattleState then
          menu.digimonInBattle = true
          break
        end
      end
      menu.digimonFullSprite = menu.sprite
      menu.sprite = menuSizedSprite(menu.sprite)
      menu.digimonHDIcons = true
      menu.historyIndex = math.max(1,
        #(type(menu.mon.digivolutionHistory) == "table"
          and menu.mon.digivolutionHistory or {}))
      return menu
    end

    local HISTORY_COLUMNS = 4

    local function history(menu)
      local entries = type(menu.mon.digivolutionHistory) == "table"
        and menu.mon.digivolutionHistory or nil
      if not entries or #entries == 0 then return { menu.mon.species } end
      return entries
    end

    -- The original status screen has two pages. Keep its A/B progression, add
    -- the DV and evolution-history pages, and use the d-pad to inspect history.
    function SummaryMenu:update(dt)
      local input = self.game.input
      if self.page == 4 then
        local entries = history(self)
        local index = math.max(1, math.min(self.historyIndex or #entries, #entries))
        if input:wasPressed("left") then
          index = math.max(1, index - 1)
        elseif input:wasPressed("right") then
          index = math.min(#entries, index + 1)
        elseif input:wasPressed("up") then
          index = math.max(1, index - HISTORY_COLUMNS)
        elseif input:wasPressed("down") then
          index = math.min(#entries, index + HISTORY_COLUMNS)
        elseif input:wasPressed("a") or input:wasPressed("b") then
          self.game.stack:pop()
          return
        end
        self.historyIndex = index
      elseif input:wasPressed("a") or input:wasPressed("b") then
        local lastPage = self.digimonInBattle and 2 or 4
        if self.page < lastPage then
          self.page = self.page + 1
        else
          self.game.stack:pop()
        end
      end
    end
  end

  local ok_dex, DexEntryMenu = pcall(require, "src.ui.DexEntryMenu")
  if ok_dex and DexEntryMenu and not DexEntryMenu.digimonMenuSpriteHooked then
    DexEntryMenu.digimonMenuSpriteHooked = true
    local originalDexNew = DexEntryMenu.new
    DexEntryMenu.new = function(...)
      local menu = originalDexNew(...)
      menu.digimonFullSprite = menu.sprite
      menu.sprite = menuSizedSprite(menu.sprite)
      return menu
    end
  end

  local function canvasSize()
    local g = love.graphics
    -- This runs while the 160x144 UI canvas is bound. Both graphics dimension
    -- calls describe that active canvas on this LÖVE build, so use the window
    -- mode first to get the actual display surface.
    local w, h
    if love.window and love.window.getMode then w, h = love.window.getMode() end
    if (not w or not h) and g.getPixelDimensions then
      w, h = g.getPixelDimensions()
    end
    if not w or not h then w, h = g.getDimensions() end
    if w < 1 then w = 1 end
    if h < 1 then h = 1 end
    return math.floor(w), math.floor(h)
  end

  local function ensureStageCanvas()
    if not graphicsReady() then return nil end
    local w, h = canvasSize()
    if not stageCanvas or stageCanvas:getWidth() ~= w
       or stageCanvas:getHeight() ~= h then
      if stageCanvas and stageCanvas.release then stageCanvas:release() end
      local ok, made = pcall(love.graphics.newCanvas, w, h, { dpiscale = 1 })
      if not ok then made = love.graphics.newCanvas(w, h) end
      stageCanvas = made
      if stageCanvas.setFilter then stageCanvas:setFilter("linear", "linear") end
    end
    return stageCanvas
  end

  local function battleRenderer(battle)
    local renderer = battle and battle.game and battle.game.renderer
    if renderer then return renderer end
    local ok_game, Game = pcall(require, "src.core.Game")
    return ok_game and Game and Game.renderer or nil
  end

  local function battleScale(battle)
    local renderer = battleRenderer(battle)
    if renderer and renderer.fitScale then
      local ok, value = pcall(renderer.fitScale, renderer)
      if ok and value and value > 0 then return value end
    end
    return 1
  end

  local function sourceImage(battle, side)
    if not (battle and type(battle.picImage) == "function") then return nil end
    local image
    if side == "enemy" then
      image = battle and battle.showEnemyTrainer and battle.trainerPic
      image = image or (battle and battle.enemy and battle.enemy.sprite)
    else
      image = battle and battle.showPlayerBack and battle.playerBackPic
      image = image or (battle and battle.player and battle.player.sprite)
    end
    if not image then return nil end
    local ok, resolved = pcall(battle.picImage, battle, image)
    if not ok or not resolved or type(resolved.getDimensions) ~= "function" then
      return nil
    end
    return resolved
  end

  local function textureScale(side)
    return side == "player" and 2 or 1
  end

  local function pictureSlide(battle)
    local timing = require("src.core.Timing")
    return (battle.introSlide or 0)
      * (timing.BATTLE_SLIDE_PX_PER_FRAME or 2)
  end

  -- Render one side through the engine's own picture code. This preserves
  -- trainer placeholders, send-out growth, slides, damage flashes and faint
  -- effects; only the destination texture and placement are changed.
  local function sideTexture(battle, side)
    local image = sourceImage(battle, side)
    if not image then return nil end
    local scale = textureScale(side)
    local w, h = image:getDimensions()
    local baseW = math.max(1, math.ceil(w * scale))
    local baseH = math.max(1, math.ceil(h * scale))
    -- Movement effects need room outside the standing sprite. The former
    -- tight canvas clipped every displaced pixel, making jumps and charges
    -- appear motionless.
    local marginX, marginY = 80, 72
    local cw, ch = baseW + marginX * 2, baseH + marginY * 2
    local cached = sideTextures[side]
    if not cached or cached.canvas:getWidth() ~= cw
       or cached.canvas:getHeight() ~= ch then
      if cached and cached.canvas and cached.canvas.release then
        cached.canvas:release()
      end
      local ok, made = pcall(love.graphics.newCanvas, cw, ch,
        { dpiscale = 1 })
      if not ok then
        ok, made = pcall(love.graphics.newCanvas, cw, ch)
      end
      if not ok or not made then return nil end
      if made.setFilter then made:setFilter("nearest", "nearest") end
      cached = { canvas = made }
      sideTextures[side] = cached
    end

    cached.baseWidth, cached.baseHeight = baseW, baseH
    cached.contentLeft = marginX
    cached.anchorX = marginX + baseW / 2
    cached.anchorY = marginY + baseH

    local g = love.graphics
    local previous = g.getCanvas and g.getCanvas() or nil
    local oldScissor = g.getScissor and { g.getScissor() } or nil
    local setScissor, intersectScissor, getScissor =
      g.setScissor, g.intersectScissor, g.getScissor
    local oldContext = textureContext
    textureContext = {
      side = side,
      scale = scale,
      anchorX = cached.anchorX,
      anchorY = cached.anchorY,
    }
    g.setCanvas(cached.canvas)
    g.clear(0, 0, 0, 0)
    -- drawBattlerPic normally clips effects to the original GB pic windows.
    -- This isolated texture contains no HUD to protect, so let displaced art
    -- use the transparent margins instead.
    if setScissor then g.setScissor() end
    g.setScissor = function() end
    g.intersectScissor = function() end
    g.getScissor = function() return nil end
    g.setColor(1, 1, 1, 1)
    -- The player grow-in branch in BattleState uses the original hard-coded
    -- back-pic anchor (centre near x=8, baseline y=96) directly instead of
    -- calling backPlacement. Move that isolated capture into our padded
    -- texture's anchor so its reduced frames do not float above/left and
    -- then snap into place when the grow finishes.
    local shiftedGrow = side == "player" and battle.player
      and battle:growInScale(battle.player) ~= nil
    if shiftedGrow then
      g.push()
      g.translate(cached.anchorX - (8 + baseW / 2), cached.anchorY - 96)
    end
    local ok, err = pcall(originalDrawPicsLayer, battle, pictureSlide(battle),
      0, 0, side, true)
    if shiftedGrow then g.pop() end
    textureContext = oldContext
    g.setScissor, g.intersectScissor, g.getScissor =
      setScissor, intersectScissor, getScissor
    if setScissor then
      if oldScissor and oldScissor[1] then
        setScissor(oldScissor[1], oldScissor[2], oldScissor[3], oldScissor[4])
      else
        setScissor()
      end
    end
    if previous then g.setCanvas(previous) else g.setCanvas() end
    if not ok then error(err, 0) end
    return cached
  end

  local function drawCustomBattleSprites(battle, canvas, ox, oy, screenScale, onlySide)
    local g = love.graphics
    local function drawSide(side)
      -- Keep the enemy trainer and thrown-ball portion of the introduction
      -- in the engine's own layer. The actual battler is captured once its
      -- send-out state makes it drawable.
      if side == "enemy" and (battle.showEnemyTrainer or battle.enemySendingOut) then
        return
      end
      local ok, texture = pcall(sideTexture, battle, side)
      if not ok then
        if mod.log and mod.log.warn then
          mod.log:warn("custom battle %s picture failed: %s", side,
            tostring(texture))
        end
        return
      end
      local placement = CUSTOM_SPRITES[side]
      if side == "enemy" then
        local species = battle.enemy and battle.enemy.mon and battle.enemy.mon.species
        placement = LARGE_SPECIES_LAYOUT[species] or placement
      elseif side == "player" then
        local species = battle.player and battle.player.mon
          and battle.player.mon.species
        placement = PLAYER_SPECIES_LAYOUT[species] or placement
      end
      if not (texture and texture.canvas and placement) then return end
      local imageW, imageH = texture.baseWidth, texture.baseHeight
      local fit = 1
      if placement.maxSize then
        fit = math.min(1, placement.maxSize / math.max(imageW, imageH))
      end
      local logicalScale = placement.scale * fit
      local factor = screenScale * logicalScale
      local x
      if placement.centerX then
        x = placement.centerX - texture.anchorX * logicalScale
      else
        x = (placement.left or 0) - texture.contentLeft * logicalScale
      end
      -- Wild battles use the shared introSlide counter: the foe begins 144
      -- logical pixels to the left and slides into its front-sprite slot.
      -- Capturing into a centred texture intentionally ignores the engine's
      -- placement coordinates, so preserve that one offset here instead.
      if side == "enemy" then x = x - pictureSlide(battle) end
      local y = placement.bottom - texture.anchorY * logicalScale
      g.setColor(1, 1, 1, 1)
      g.draw(texture.canvas, ox + x * screenScale, oy + y * screenScale,
        0, factor, factor)
    end
    if onlySide then
      drawSide(onlySide)
    else
      drawSide("player")
      drawSide("enemy")
    end
  end

  local function drawStageToCanvas(battle)
    local canvas = ensureStageCanvas()
    if not canvas then return nil end

    local g = love.graphics
    local previous = g.getCanvas and g.getCanvas() or nil
    local r, gr, b, a = 1, 1, 1, 1
    if g.getColor then r, gr, b, a = g.getColor() end

    g.setCanvas(canvas)
    local w, h = canvas:getDimensions()

    -- Keep the classic plain battle field. The previous blue scene was only
    -- a canvas proof of concept and is intentionally not part of the mod.
    g.clear(1, 1, 1, 1)

    -- The scene canvas is window-sized.  The UI remains the normal 160x144
    -- battle canvas and is composited over this scene by the renderer.
    local screenScale = battleScale(battle)
    local ox = (w - 160 * screenScale) / 2
    local oy = (h - 144 * screenScale) / 2
    drawCustomBattleSprites(battle, canvas, ox, oy, screenScale)

    g.setColor(r, gr, b, a)
    g.setCanvas(previous)
    return canvas
  end

  local function submitStage(battle)
    local canvas = drawStageToCanvas(battle)
    local renderer = battleRenderer(battle)
    if canvas and renderer and renderer.setWorldOverride then
      renderer:setWorldOverride(canvas)
    end
  end

  -- Status and Dex menus have the same 160x144 UI surface as battle. Draw
  -- their high-resolution art directly into a display-sized canvas instead
  -- of enlarging a 56x56 thumbnail after the fact.
  local function submitMenuSpriteStage(menu, mirror, baseline)
    local sprite = menu and menu.digimonFullSprite
    local renderer = menu and menu.game and menu.game.renderer
    local canvas = ensureStageCanvas()
    if not (sprite and renderer and renderer.setWorldOverride and canvas) then
      return false
    end
    local w, h = sprite:getDimensions()
    local fit = math.min(1, 56 / math.max(w, h))
    local dw, dh = w * fit, h * fit
    local g = love.graphics
    local previous = g.getCanvas and g.getCanvas() or nil
    local r, gr, b, a = 1, 1, 1, 1
    if g.getColor then r, gr, b, a = g.getColor() end
    g.setCanvas(canvas)
    local cw, ch = canvas:getDimensions()
    g.clear(1, 1, 1, 1)
    local scale = battleScale({ game = menu.game })
    local ox, oy = (cw - 160 * scale) / 2, (ch - 144 * scale) / 2
    local x, y = 8, math.max(0, baseline - dh)
    g.setColor(1, 1, 1, 1)
    if mirror then
      g.draw(sprite, ox + (x + dw) * scale, oy + y * scale,
        0, -fit * scale, fit * scale)
    else
      g.draw(sprite, ox + x * scale, oy + y * scale,
        0, fit * scale, fit * scale)
    end
    g.setColor(r, gr, b, a)
    if previous then g.setCanvas(previous) else g.setCanvas() end
    renderer:setWorldOverride(canvas)
    return true
  end

  local function withoutMenuPaperAndSprite(menu, fn, suppressDexFrame)
    local g = love.graphics
    local rectangle, draw = g.rectangle, g.draw
    g.rectangle = function(mode, x, y, w, h, ...)
      local r, gr, b, a = g.getColor()
      if mode == "fill" and x == 0 and y == 0 and w == 160 and h == 144
         and r == 1 and gr == 1 and b == 1 and (a == nil or a == 1) then
        return
      end
      return rectangle(mode, x, y, w, h, ...)
    end
    g.draw = function(drawable, ...)
      if drawable == menu.sprite then return end
      if suppressDexFrame and drawable and drawable.getDimensions then
        local dw, dh = drawable:getDimensions()
        if dw == 24 and dh == 48 then
          local args = { ... }
          local hasQuad = type(args[1]) ~= "number"
          local x = hasQuad and args[2] or args[1]
          local y = hasQuad and args[3] or args[2]
          local outerHorizontal = y == 0 or y == 136
          local outerVertical = (x == 0 or x == 152) and y ~= 72
          if outerHorizontal or outerVertical then return end
        end
      end
      return draw(drawable, ...)
    end
    local ok, result = pcall(fn)
    g.rectangle, g.draw = rectangle, draw
    if not ok then error(result, 0) end
    return result
  end

  if ok_summary and SummaryMenu and not SummaryMenu.digimonStageSpriteHooked then
    SummaryMenu.digimonStageSpriteHooked = true
    local originalSummaryDraw = SummaryMenu.draw
    local PaletteFX = require("src.render.PaletteFX")
    local HudTiles = require("src.render.HudTiles")
    local PartyMenu = require("src.ui.PartyMenu")
    local Theme = require("src.ui.Theme")
    local summaryGreenShader

    local function summaryHPDV(dvs)
      if dvs.hp ~= nil then return tonumber(dvs.hp) or 0 end
      local attack = tonumber(dvs.attack) or 0
      local defense = tonumber(dvs.defense) or 0
      local speed = tonumber(dvs.speed) or 0
      local special = tonumber(dvs.special) or 0
      return (attack % 2) * 8 + (defense % 2) * 4
        + (speed % 2) * 2 + (special % 2)
    end

    local function drawSummaryDVPage(menu)
      local g = love.graphics
      local mon = menu.mon
      local def = menu.game.data.pokemon[mon.species]
      local dvs = mon.dvs or {}

      g.setColor(1, 1, 1, 1)
      g.rectangle("fill", 0, 0, 160, 144)

      -- Retain the familiar status-screen portrait and header on the new page.
      if menu.sprite then
        local pw, ph = menu.sprite:getDimensions()
        local py = math.max(0, 56 - ph)
        g.draw(menu.sprite, 8 + pw, py, 0, -1, 1)
        if menu.spriteTrueColor then
          PaletteFX.markTrueColor(8, py, pw, ph)
        end
      end

      g.setColor(0, 0, 0, 1)
      Font.draw(mon.nickname or def.name, 72, 8)
      Font.draw("DVs", 104, 24)
      HudTiles.statusTile(0x74, 8, 56)
      Font.drawCode(0xF2, 16, 56)
      Font.draw(("%03d"):format(def.dex or 0), 24, 56)

      Font.drawBox(7, 5, 12, 11)
      local rows = {
        { "HP", summaryHPDV(dvs) },
        { "ATTACK", tonumber(dvs.attack) or 0 },
        { "DEFENSE", tonumber(dvs.defense) or 0 },
        { "SPEED", tonumber(dvs.speed) or 0 },
        { "SPECIAL", tonumber(dvs.special) or 0 },
      }
      for i, row in ipairs(rows) do
        local y = 48 + (i - 1) * 16
        Font.draw(row[1], 64, y)
        Font.draw(("%2d"):format(row[2]), 128, y)
      end
      Font.draw("A/B: NEXT", 72, 128)
      g.setColor(1, 1, 1, 1)
    end

    local function drawSummaryHistoryPage(menu)
      local g = love.graphics
      local entries = type(menu.mon.digivolutionHistory) == "table"
        and menu.mon.digivolutionHistory or {}
      if #entries == 0 then entries = { menu.mon.species } end
      local selected = math.max(1, math.min(menu.historyIndex or #entries, #entries))
      menu.historyIndex = selected
      local first = math.floor((selected - 1) / 12) * 12 + 1
      local last = math.min(#entries, first + 11)

      g.setColor(1, 1, 1, 1)
      g.rectangle("fill", 0, 0, 160, 144)
      g.setColor(0, 0, 0, 1)
      local title = "DIGIVOLUTION HISTORY"
      Font.draw(title, math.floor((160 - Font.width(title)) / 2), 8)

      -- Keep the history itself visually separate from the selected name.
      g.rectangle("line", 4, 24, 152, 94)

      local xs = { 12, 48, 84, 120 }
      local ys = { 32, 64, 96 }
      for index = first, last do
        local slot = index - first
        local column = slot % 4 + 1
        local row = math.floor(slot / 4) + 1
        local x, y = xs[column], ys[row]
        g.setColor(0, 0, 0, 1)
        g.rectangle("line", x - 2, y - 2, 20, 20)
        if index == selected then
          g.rectangle("line", x - 1, y - 1, 18, 18)
        end
        PartyMenu.drawIcon(menu.game, {
          species = entries[index], hp = 1, stats = { hp = 1 },
        }, x, y, index == selected, 0)
        if index < #entries then
          Font.drawCode(Theme.cursor, x + 24, y + 4)
        end
      end

      local selectedDef = menu.game.data.pokemon[entries[selected]]
      local name = selectedDef and selectedDef.name or tostring(entries[selected])
      Font.draw(name, math.floor((160 - Font.width(name)) / 2), 120)
      Font.draw("A/B: NEXT", 72, 128)
      PaletteFX.markTrueColor(0, 0, 160, 144)
      g.setColor(1, 1, 1, 1)
    end

    local function drawSummaryStatProgress(menu)
      if menu.page ~= 1 or not (menu.mon and menu.mon.stats) then return end
      local g = love.graphics
      local oldR, oldG, oldB, oldA = g.getColor()
      local oldShader = g.getShader and g.getShader() or nil
      local bonusStats = menu.mon.digivolutionBonus or {}
      local rows = {
        { key="attack", y=80 }, { key="defense", y=96 },
        { key="speed", y=112 }, { key="special", y=128 },
      }

      if summaryGreenShader == nil and g.newShader then
        local ok, shader = pcall(g.newShader, [[
          vec4 effect(vec4 color, Image texture, vec2 uv, vec2 screen) {
            vec4 pixel = Texel(texture, uv);
            return vec4(color.rgb, pixel.a * color.a);
          }
        ]])
        summaryGreenShader = ok and shader or false
      end

      for _, row in ipairs(rows) do
        local total = tonumber(menu.mon.stats[row.key]) or 0
        local bonus = tonumber(bonusStats[row.key]) or 0
        local base = total - bonus
        local bonusText = bonus < 100 and ("+" .. bonus) or tostring(bonus)

        -- Replace the native total-only row with base, accumulated bonus,
        -- and final total. Each column is three characters wide.
        g.setColor(1,1,1,1)
        g.rectangle("fill",8,row.y,72,8)
        g.setColor(0,0,0,1)
        Font.draw(("%3d"):format(base),8,row.y)

        if summaryGreenShader then g.setShader(summaryGreenShader) end
        g.setColor(0,0.72,0,1)
        Font.draw(("%3s"):format(bonusText),32,row.y)
        if summaryGreenShader then g.setShader(oldShader) end
        PaletteFX.markTrueColor(32,row.y,24,8)

        g.setColor(0,0,0,1)
        Font.draw(("%3d"):format(total),56,row.y)
      end
      if summaryGreenShader then g.setShader(oldShader) end
      g.setColor(oldR,oldG,oldB,oldA)
    end

    SummaryMenu.draw = function(self, ...)
      local args, unpackArgs = { ... }, table.unpack or unpack
      if self.page == 3 then
        if not submitMenuSpriteStage(self, true, 56) then
          return drawSummaryDVPage(self)
        end
        love.graphics.clear(0, 0, 0, 0)
        self.letterboxWhite = false
        return withoutMenuPaperAndSprite(self, function()
          return drawSummaryDVPage(self)
        end)
      end
      if self.page == 4 then
        self.letterboxWhite = true
        return drawSummaryHistoryPage(self)
      end
      if not submitMenuSpriteStage(self, true, 56) then
        local result = originalSummaryDraw(self, unpackArgs(args))
        drawSummaryStatProgress(self)
        return result
      end
      love.graphics.clear(0, 0, 0, 0)
      self.letterboxWhite = false
      local result = withoutMenuPaperAndSprite(self, function()
        return originalSummaryDraw(self, unpackArgs(args))
      end)
      drawSummaryStatProgress(self)
      return result
    end
  end

  if ok_dex and DexEntryMenu and not DexEntryMenu.digimonStageSpriteHooked then
    DexEntryMenu.digimonStageSpriteHooked = true
    local originalDexDraw = DexEntryMenu.draw
    DexEntryMenu.draw = function(self, ...)
      local args, unpackArgs = { ... }, table.unpack or unpack
      if not submitMenuSpriteStage(self, false, 60) then
        return originalDexDraw(self, unpackArgs(args))
      end
      love.graphics.clear(0, 0, 0, 0)
      self.letterboxWhite = false
      return withoutMenuPaperAndSprite(self, function()
        return originalDexDraw(self, unpackArgs(args))
      end, true)
    end
  end

  local function colorIsOpaqueWhite()
    local g = love.graphics
    if not g.getColor then return true end
    local r, gr, b, a = g.getColor()
    return r == 1 and gr == 1 and b == 1 and (a == nil or a == 1)
  end

  local function isBattlePaperFill(mode, x, y, w, h)
    return mode == "fill" and x == 0 and y == 0
      and w == 160 and h == 144 and colorIsOpaqueWhite()
  end

  local function withBattlePaperRemoved(fn, battle)
    local g = love and love.graphics
    if not (g and g.rectangle) then return fn(battle) end

    local rectangle = g.rectangle
    g.rectangle = function(mode, x, y, w, h, ...)
      if isBattlePaperFill(mode, x, y, w, h) then
        if g.clear and g.getCanvas and g.getCanvas() then
          g.clear(0, 0, 0, 0)
        end
        return
      end
      return rectangle(mode, x, y, w, h, ...)
    end

    local ok, result = pcall(fn, battle)
    g.rectangle = rectangle
    if not ok then error(result, 0) end
    return result
  end

  local originalPushBattle = OverworldState.pushBattle
  OverworldState.pushBattle = function(self, battle, ...)
    local save = self.game and self.game.save
      or battle and battle.game and battle.game.save
      or require("src.core.Game").save
    local options = save and save.options

    if options then
      local oldLayout = options.battleLayout
      local oldBg = options.battleBg
      options.battleLayout = "og"
      -- The custom sprites now draw directly over the normal battle frame,
      -- so retain the game's opaque white background and its white surround.
      options.battleBg = "white"

      if battle and not battle.digimonHDOptionsWrapped then
        battle.digimonHDOptionsWrapped = true
        local onFinish = battle.onFinish
        battle.onFinish = function(result, ...)
          options.battleLayout = oldLayout
          options.battleBg = oldBg
          if onFinish then return onFinish(result, ...) end
        end
      end
    end

    return originalPushBattle(self, battle, ...)
  end

  local originalDraw = BattleState.draw
  BattleState.draw = function(self, ...)
    -- Varargs belong to this wrapper; capture them before entering the
    -- nested callback below (Lua does not expose `...` there).
    local drawArgs = { ... }
    local unpackArgs = table.unpack or unpack
    if self.blankForAskName then
      return originalDraw(self, unpackArgs(drawArgs))
    end

    self.digimonHDScene = true
    local ok, result = pcall(function()
      -- The display-sized stage owns the true-color battlers. Clear the UI
      -- canvas first so it can show through; Renderer otherwise starts an
      -- opaque battle canvas which would hide the entire stage.
      submitStage(self)
      love.graphics.clear(0, 0, 0, 0)
      -- The stage is already solid white all the way to the window edge.
      -- Do not let the renderer add a separate letterbox surround.
      self.letterboxWhite = false
      -- Keep HUDs, text and battle effects in the normal UI layer above the
      -- stage, while dropping only the vanilla full-frame white paper.
      return withBattlePaperRemoved(function()
        return originalDraw(self, unpackArgs(drawArgs))
      end, self)
    end)
    self.digimonHDScene = false
    if not ok then error(result, 0) end
    return result
  end

  BattleState.frontPlacement = function(ex, ey, w, h, scale)
    if textureContext and textureContext.side == "enemy" then
      local s = textureContext.scale
      return textureContext.anchorX - w * s / 2,
        textureContext.anchorY - h * s, s
    end
    return originalFrontPlacement(ex, ey, w, h, scale)
  end

  BattleState.backPlacement = function(w, h, pad, padL, scale)
    if textureContext and textureContext.side == "player" then
      local s = textureContext.scale
      return textureContext.anchorX - w * s / 2,
        textureContext.anchorY - (h - pad) * s, s
    end
    return originalBackPlacement(w, h, pad, padL, scale)
  end

  -- Vanilla gives the player's name ten tiles from x=80 to the right edge.
  -- Longer Digimon names are valid but their final glyphs would be clipped.
  -- Shift only that label left by the overflow; short names retain the exact
  -- native placement and all other HUD elements remain untouched.
  BattleState.drawHUDs = function(self, ...)
    local nativeFontDraw = Font.draw
    Font.draw = function(text, x, y, ...)
      if self.player and text == self.player.name and y == 56 then
        local width = #Font.split(text) * 8
        x = math.min(x, 160 - width)
      end
      return nativeFontDraw(text, x, y, ...)
    end

    local args, unpackArgs = { ... }, table.unpack or unpack
    local ok, result = pcall(originalDrawHUDs, self, unpackArgs(args))
    Font.draw = nativeFontDraw
    if not ok then error(result, 0) end
    return result
  end

  -- QoL: B is a quick cursor shortcut for RUN in wild and Safari battles.
  -- Trainer battles retain their normal B-button behavior because running
  -- is forbidden there. The shortcut only moves the cursor; A confirms it.
  local originalBattleUpdate = BattleState.update
  BattleState.update = function(self, dt, ...)
    local input = self.game and self.game.input
    if self.phase == "menu" and self.kind ~= "trainer"
       and not self.demo and input
       and input:wasPressed("b") then
      self.menuIndex = 4
    end
    return originalBattleUpdate(self, dt, ...)
  end

  BattleState.drawPicsLayer = function(self, slide, sx, sy, onlySide, skipMenuClip)
    if self.digimonHDScene then
      -- The custom scene owns both mons, except for the opponent's native
      -- trainer/ball introduction which has no battler image to capture yet.
      if onlySide ~= "player" and (self.showEnemyTrainer or self.enemySendingOut) then
        return originalDrawPicsLayer(self, slide, sx, sy, "enemy", skipMenuClip)
      end
      return
    end
    return originalDrawPicsLayer(self, slide, sx, sy, onlySide, skipMenuClip)
  end

  mod.hooks:wrap("ui.options.rows", function(next, game, rows)
    rows = next(game, rows)
    local filtered = {}
    for _, row in ipairs(rows or {}) do
      if row.id ~= "battleLayout" and row.id ~= "battleBg" then
        filtered[#filtered + 1] = row
      end
    end
    return filtered
  end)
end
