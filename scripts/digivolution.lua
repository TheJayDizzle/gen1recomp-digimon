return function(mod)
  local Evolution = require("src.pokemon.Evolution")
  local Font = require("src.render.Font")
  local Growth = require("src.pokemon.Growth")
  local PaletteFX = require("src.render.PaletteFX")
  local PartyMenu = require("src.ui.PartyMenu")
  local Pokemon = require("src.pokemon.Pokemon")
  local Sound = require("src.core.Sound")
  local Stats = require("src.pokemon.Stats")
  local Strings = require("src.core.Strings")
  local TextBox = require("src.render.TextBox")
  local Theme = require("src.ui.Theme")

  local KEYS = { "hp", "attack", "defense", "speed", "special" }
  local LABEL = { hp="HP", attack="ATK", defense="DEF", speed="SPD", special="SPC" }
  local ORDER = { hp=1, attack=2, defense=3, speed=4, special=5 }

  local ROUTES = {
    TANEMON = {
      { target = "PALMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "MUSHROOMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
    },
    PALMON = {
      { target = "TOGEMON", requirement="LVL MIN 34", unlocked=function(mon) return (mon.level or 1) >= 34 end },
      { target = "VEGIEMON", requirement="SPC 40", unlocked=function(mon) return (mon.stats.special or 0) >= 40 end },
    },
    KOROMON = {
      { target = "AGUMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "BETAMON", requirement={ "LVL MIN 16", "SPD 30" }, unlocked=function(mon) return (mon.level or 1) >= 16 and (mon.stats.speed or 0) > 29 end },
    },    
    AGUMON = {
      { target = "GREYMON", requirement="LVL 34", unlocked=function(mon) return (mon.level or 1) >= 34 end },
      { target = "MONOCHROMON", requirement="DEF 55", unlocked=function(mon) return  (mon.stats.defense or 0) >= 55 end },
      -- TYRANNOMON
    },
    BUKAMON = {
      { target = "GOMAMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "GIZAMON", requirement="SPD 25", unlocked=function(mon) return (mon.stats.speed or 1) >= 25 end },
    },
    GOMAMON = {
      { target = "IKKAKUMON", requirement="LVL MIN 34", unlocked=function(mon) return (mon.level or 1) >= 34 end },
      { target = "GESOMON", requirement={"LVL MIN 28","SPC 35"}, unlocked=function(mon) return (mon.level or 1) >= 28 and (mon.stats.special) >= 35 end },
      { target = "SEADRAMON", requirement={"HP 75", "SPC 40"}, unlocked=function(mon) return (mon.stats.hp or 1) >= 75 and (mon.stats.special or 0) >= 40 end },
    },
    MINOMON = {
      { target = "WORMMON", requirement = "LVL MIN 9", unlocked=function(mon) return (mon.level or 1) >= 9 end },
      { target = "KUNEMON", requirement = { "LVL MIN 14", "SPC 25"}, unlocked=function(mon) return (mon.level or 1) >= 9 and (mon.stats.special or 0 ) > 24 end },
    },
    WORMMON = {
      { target = "STINGMON", requirement="LVL MIN 25", unlocked=function(mon) return (mon.level or 1) >= 25 end },
      { target = "KUWAGAMON", requirement={"LVL MIN 28","ATK 60"}, unlocked=function(mon) return (mon.level or 1) >= 16 end },
      -- IMPERIALDRAMON
    },
    KUNEMON = {
      { target = "FLYMON", requirement="LVL MIN 22", unlocked=function(mon) return (mon.level or 1) >= 22 end },
      { target = "SUKAMON", requirement="SPC 33", unlocked=function(mon) return (mon.stats.special or 0) >= 33 end },
    },
    TSUNOMON = {
      { target = "GABUMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "GIZAMON", requirement="SPD 25", unlocked=function(mon) return (mon.stats.speed or 1) >= 25 end },

    },
    GABUMON = {
      { target = "GARURUMON", requirement="LVL 34", unlocked=function(mon) return (mon.level or 1) >= 34 end },
      { target = "LEOMON", requirement={"LVL 40","ATK 65"}, unlocked=function(mon) return (mon.level or 1) >= 40 and (mon.stats.attack or 0) >= 65 end },
      { target = "FRIGIMON", requirement={"HP 65","SPC 50"}, unlocked=function(mon) return (mon.hp or 1) >= 65 and (mon.stats.special or 0) >=  50 end },
    },
    MOTIMON = {
      { target = "TENTOMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "KUNEMON", requirement="LVL MIN 10", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "HAGURUMON", requirement="DEF 35", unlocked=function(mon) return (mon.stats.defense or 0) >= 35 end },
    },
    TENTOMON = {
      { target = "KABUTERIMON", requirement="LVL MIN 34", unlocked=function(mon) return (mon.level or 1) >= 34 end },
      { target = "STINGMON", requirement={"LVL MIN 25","SPD 50"}, unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "KUWAGAMON", requirement={"LVL MIN 32","ATK 60"}, unlocked=function(mon) return (mon.level or 1) >= 16 end },
    },
    GOBURIMON = {
      { target = "OGREMON", requirement="LVL MIN 28", unlocked=function(mon) return (mon.level or 1) >= 28 end },
      { target = "FRIGIMON", requirement={"HP 65","SPC 50"}, unlocked=function(mon) return (mon.hp or 1) >= 65 and (mon.stats.special or 0) >=  50 end },
      -- Bakemon
    },
    TOKOMON = {
      { target = "PATAMON", requirement="LVL 14", unlocked=function(mon) return (mon.level or 1) >= 14 end },
      { target = "SALAMON", requirement={"LVL 14","ATK 35"}, unlocked=function(mon) return (mon.level or 1) >= 24 and (mon.stats.attack or 1) >= 35 end },
    },
    PATAMON = {
      { target = "ANGEMON", requirement={"ATK 50","SPC 40"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 50 and (mon.stats.special or 0) >= 40 end },
      { target = "DEVIMON", requirement={"ATK 40","SPC 50"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 40 and (mon.stats.special or 0) >= 50 end },
      { target = "AIRDRAMON", requirement={"LVL 30"}, unlocked=function(mon) return (mon.level or 1) >= 30 end },
      -- Eggvolutions
    },
    YOKOMON = {
      { target = "BIYOMON", requirement="LVL MIN 16", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "MUCHOMON", requirement="LVL MIN 13", unlocked=function(mon) return (mon.level or 1) >= 13 end },
    },
    BIYOMON = {
      { target = "BIRDRAMON", requirement="LVL MIN 35", unlocked=function(mon) return (mon.level or 1) >= 16 end },
      { target = "KOKATORIMON", requirement="ATK 35", unlocked=function(mon) return (mon.stats.attack or 1) >= 35 end },
      -- Meramon
    },
    NYAROMON = {
      { target = "SALAMON", requirement="LVL MIN 14", unlocked=function(mon) return (mon.level or 1) >= 14 end },
      { target = "CHUUMON", requirement="ATK 15", unlocked=function(mon) return (mon.stats.attack or 1) >= 15 end },
    },
    SALAMON = {
      { target = "GATOMON", requirement="LVL MIN 31", unlocked=function(mon) return (mon.level or 1) >= 31 end },
      { target = "LEOMON", requirement={"HP 45","ATK 45"}, unlocked=function(mon) return (mon.stats.hp or 1) >= 45 and (mon.stats.attack or 0) >= 45 end },
    },
    -- GATOMON -- Eggvolutions
    BETAMON = {
      { target = "SEADRAMON", requirement="LVL MIN 34", unlocked=function(mon) return (mon.level or 1) >= 34 end },
      { target = "AIRDRAMON", requirement="ATK 28", unlocked=function(mon) return (mon.stats.attack or 1) >= 28 end },
      { target = "GESOMON", requirement="SPC 35", unlocked=function(mon) return (mon.stats.special or 1) >= 35 end },
    },
    PAGUMON = {
      { target = "DEMIDEVIMON", requirement={"LVL MIN 19","SPC 30"}, unlocked=function(mon) return (mon.level or 1) >= 19 and (mon.stats.special or 0) >= 30 end },
      { target = "GOBURIMON", requirement={"LVL MIN 13","ATK 30"}, unlocked=function(mon) return (mon.level or 1) >= 13 and (mon.stats.attack or 0) >= 30 end },
      { target = "GAZIMON", requirement={"LVL MIN 15"}, unlocked=function(mon) return (mon.level or 1) >= 15 end },
    },
    DEMIDEVIMON = {
      { target = "DEVIMON", requirement="LVL MIN 40", unlocked=function(mon) return (mon.level or 1) >= 34 end },
      { target = "ANGEMON", requirement={"LVL MIN 40","ATK 50"}, unlocked=function(mon) return (mon.level or 1) >= 34 and (mon.stats.attack or 0) >= 50 end },
      -- BAKEMON
    },
    GOTSUMON = {
      { target = "MONOCHROMON", requirement={"LVL MIN 24"}, unlocked=function(mon) return (mon.level or 1) >= 24 end },
      { target = "OGREMON", requirement={"ATK 30 "}, unlocked=function(mon) return (mon.stats.attack or 0) >= 30 end },
      -- Golemon
    },
    UPAMON = {
      { target = "ARMADILLOMON", requirement={"LVL MIN 18"}, unlocked=function(mon) return (mon.level or 1) >= 18 end },
      { target = "WORMMON", requirement={"LVL MIN 12"}, unlocked=function(mon) return (mon.level or 1) >= 12 end },
      { target = "GAZIMON", requirement="SPD 25", unlocked=function(mon) return (mon.stats.speed or 1) >= 25 end },

    },
    ARMADILLOMON = {
      { target = "MONOCHROMON", requirement={"LVL MIN 25"}, unlocked=function(mon) return (mon.level or 1) >= 25 end },
      { target = "GREYMON", requirement={" ATK 45"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 45 end },
      -- Golemon
      -- Eggvolutions
    },
    MUSHROOMON = {
      { target = "WOODMON", requirement={"DEF 50"}, unlocked=function(mon) return (mon.stats.defense or 0) >= 50 end },
      { target = "VEGGIEMON", requirement={"SPC 35"}, unlocked=function(mon) return (mon.stats.special or 0) >= 35 end },
      { target = "TOGEMON", requirement={"ATK 40"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 40 end },
    },
    GAZIMON = {
      { target = "GARURUMON", requirement={"SPC 40"}, unlocked=function(mon) return (mon.stats.special or 0) >= 40 end },
      { target = "LEOMON", requirement={"ATK 40"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 40 end },
    },
    CHUUMON = {
      { target = "SUKAMON", requirement={"LVL MIN 25"}, unlocked=function(mon) return (mon.level or 1) >= 25 end },
      { target = "OGREMON", requirement={"ATK 55"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 55 end },
      -- Monzaemon
      -- Numemon?
    },    
    MUCHOMON = {
      { target = "KOKATORIMON", requirement={"LVL MIN 24"}, unlocked=function(mon) return (mon.level or 1) >= 24 end },
      { target = "BIRDRAMON", requirement={"SPC 45"}, unlocked=function(mon) return (mon.stats.special or 0) >= 45 end },
      { target = "AIRDRAMON", requirement={"LVL MIN 27"}, unlocked=function(mon) return (mon.level or 1) >= 27 end },
    },
    KAPURIMON = {
      { target = "HAGURUMON", requirement={"LVL MIN 17"}, unlocked=function(mon) return (mon.level or 1 ) >= 17 end },
      { target = "SALAMON", requirement={"ATK 25"}, unlocked=function(mon) return (mon.stats.attack or 0) >= 25 end },
      { target = "GABUMON", requirement={"SPC 40"}, unlocked=function(mon) return (mon.stats.special or 0) >= 40 end },
    },
    HAGURUMON = {
      { target = "GUARDROMON", requirement={"LVL MIN 36", "DEF 48"}, unlocked=function(mon) return (mon.level or 1 ) >= 17 and (mon.stats.defense or 0) >= 48 end },
      { target = "MONOCHROMON", requirement={"DEF 30"}, unlocked=function(mon) return (mon.stats.defense or 0) >= 30 end },
      { target = "IKKAKUMON", requirement={"LVL 32"}, unlocked=function(mon) return (mon.level or 1) >= 32 end },
      -- more steel mons necessary
    },
  }

    local EXTRA_DEVOLUTION_ROUTES = {
    KUWAGAMON = { "KUNEMON" },
    SNIMON = { "WORMMON", "KUNEMON" },
    -- SALAMON = {"WANYAMON"},
    WOODMON = { "PALMON" },

  }

  -- Persistent, uncapped bonuses live on the monster. The weak lookup lets every engine Stats.calc call reapply them without abusing capped Stat EXP.
  Stats.digivolutionBonusByDVs = Stats.digivolutionBonusByDVs
    or setmetatable({}, { __mode="k" })
  local bonusByDVs = Stats.digivolutionBonusByDVs
  if not Stats.digivolutionBonusHooked then
    Stats.digivolutionBonusHooked = true
    local nativeCalc = Stats.calc
    Stats.calc = function(def, level, dvs, statExp)
      local out = nativeCalc(def, level, dvs, statExp)
      local bonus = type(dvs) == "table" and bonusByDVs[dvs]
      if bonus then
        for _, key in ipairs(KEYS) do out[key] = out[key] + (tonumber(bonus[key]) or 0) end
      end
      return out
    end
  end

  local function bind(mon)
    if type(mon) ~= "table" then return end
    mon.digivolutionBonus = mon.digivolutionBonus or {}
    if type(mon.dvs) == "table" then bonusByDVs[mon.dvs] = mon.digivolutionBonus end
  end
  local function bindSave(save)
    if type(save) ~= "table" then return end
    for _, mon in ipairs(save.party or {}) do bind(mon) end
    for _, box in ipairs(save.boxes or {}) do
      for _, mon in ipairs(box or {}) do bind(mon) end
    end
    if save.daycare and save.daycare.mon then bind(save.daycare.mon) end
  end
  mod.events:on("game.ready", function(ev) bindSave(ev.game and ev.game.save) end)

  local function show(game, message, onDone, opts)
    game.stack:push(TextBox.new(game, Strings(message), onDone, opts))
  end
  local function requirementText(route)
    return type(route.requirement) == "table" and table.concat(route.requirement, "\n")
      or route.requirement or "No requirement."
  end
  local function resetMon(game, mon)
    bind(mon)
    local def = assert(game.data.pokemon[mon.species], "unknown target "..tostring(mon.species))
    mon.level = 1
    mon.exp = Growth.expForLevel(def.growthRate, 1)
    mon.moves = {}
    for _, moveId in ipairs(Pokemon.movesAtLevel(def, 1)) do
      local move = game.data.moves[moveId]
      mon.moves[#mon.moves+1] = { id=moveId, pp=move and move.pp or 0 }
    end
    mon.stats = Stats.calc(def, 1, mon.dvs or {}, mon.statExp)
    mon.hp, mon.status = mon.stats.hp, nil
  end

  local function evolutionPaths(species)
    local out = {}
    for _, route in ipairs(ROUTES[species] or {}) do
      out[#out+1] = { kind="evolve", target=route.target,
        requirement=route.requirement, unlocked=route.unlocked }
    end
    return out
  end
  local function devolutionPaths(species)
    local out, seen = {}, {}
    local function add(target)
      if seen[target] then return end
      seen[target] = true
      out[#out+1] = { kind="devolve", target=target,
        requirement="BONUS EACH 5 LVL", unlocked=function() return true end }
    end
    for source, routes in pairs(ROUTES) do
      for _, route in ipairs(routes) do if route.target == species then add(source) end end
    end
    for _, target in ipairs(EXTRA_DEVOLUTION_ROUTES[species] or {}) do add(target) end
    table.sort(out, function(a,b) return a.target < b.target end)
    return out
  end

  -- Levels 1-4 give 0, 5-9 give 5, 10-14 give 10, and so on, uncapped. The exact pool is distributed proportionally by DV with stable rounding. Maybe some balancing is needeed later to 
  -- be able to compensate ultimate level stat spike
  local function devolutionAward(mon)
    local pool = math.floor((mon.level or 1) / 5) * 5
    local award, ranked, total, used = {}, {}, 0, 0
    for _, key in ipairs(KEYS) do total = total + (tonumber(mon.dvs and mon.dvs[key]) or 0) + 1 end
    for _, key in ipairs(KEYS) do
      local exact = pool * ((tonumber(mon.dvs and mon.dvs[key]) or 0) + 1) / total
      award[key] = math.floor(exact); used = used + award[key]
      ranked[#ranked+1] = { key=key, remainder=exact-award[key] }
    end
    table.sort(ranked, function(a,b)
      return a.remainder == b.remainder and ORDER[a.key] < ORDER[b.key]
        or a.remainder > b.remainder
    end)
    for i=1,pool-used do award[ranked[i].key] = award[ranked[i].key] + 1 end
    return award
  end

  local function outline(x,y,w,h,r,g,b)
    love.graphics.setColor(r or 0,g or 0,b or 0,1)
    love.graphics.rectangle("fill",x,y,w,1); love.graphics.rectangle("fill",x,y+h-1,w,1)
    love.graphics.rectangle("fill",x,y,1,h); love.graphics.rectangle("fill",x+w-1,y,1,h)
    love.graphics.setColor(0,0,0,1)
  end

  local Confirm = {}; Confirm.__index=Confirm; Confirm.isOpaque=true
  function Confirm.new(game, menu, route)
    local mon = menu.mon
    local target = assert(game.data.pokemon[route.target],
      "unknown Devolution target "..tostring(route.target))
    -- Preview the actual target species at level 1. Stats.calc also includesbonuses earned on earlier cycles; this devolution's award is added in the final column below.
    local targetStats = Stats.calc(target, 1, mon.dvs or {}, mon.statExp)
    return setmetatable({ game=game, menu=menu, mon=mon, route=route,
      award=devolutionAward(mon), targetStats=targetStats, yes=true }, Confirm)
  end
  function Confirm:update()
    local input = self.game.input
    if input:wasPressed("left") or input:wasPressed("right") then
      self.yes=not self.yes; Sound.play(self.game.data,"Press_AB")
    elseif input:wasPressed("b") then
      Sound.play(self.game.data,"Press_AB"); self.game.stack:pop()
    elseif input:wasPressed("a") then
      Sound.play(self.game.data,"Press_AB")
      if not self.yes then self.game.stack:pop(); return end
      local oldLevel = self.mon.level
      self.game.stack:pop()
      self.mon.level=1
      Evolution.evolve(self.game,self.mon,self.route.target,function()
        if self.mon.species ~= self.route.target then self.mon.level=oldLevel; return end
        bind(self.mon)
        for _,key in ipairs(KEYS) do
          self.mon.digivolutionBonus[key]=(tonumber(self.mon.digivolutionBonus[key]) or 0)
            +(self.award[key] or 0)
        end
        resetMon(self.game,self.mon)
        self.game.stack:pop()
      end,"DEVOLUTION")
    end
  end
  function Confirm:draw()
    love.graphics.setColor(1,1,1,1); love.graphics.rectangle("fill",0,0,160,144)
    love.graphics.setColor(0,0,0,1)
    local target=self.game.data.pokemon[self.route.target]
    Font.draw(Strings("DEVOLVE TO"),40,8)
    local name=(target and target.name) or self.route.target
    Font.draw(name,math.floor(80-Font.width(name)/2),20)
    Font.draw(Strings("STAT BONUS"),40,34)
    if not Confirm.greenShader and love.graphics.newShader then
      local ok, shader = pcall(love.graphics.newShader, [[
        vec4 effect(vec4 color, Image texture, vec2 uv, vec2 screen) {
          vec4 pixel = Texel(texture, uv);
          return vec4(color.rgb, pixel.a * color.a);
        }
      ]])
      Confirm.greenShader = ok and shader or false
    end
    for row,key in ipairs(KEYS) do
      local y=42+(row-1)*14
      local current=tonumber(self.targetStats and self.targetStats[key]) or 0
      local gain=self.award[key] or 0
      Font.draw(LABEL[key],8,y); Font.draw(tostring(current),40,y)
      local previousShader = love.graphics.getShader and love.graphics.getShader()
      if Confirm.greenShader then love.graphics.setShader(Confirm.greenShader) end
      love.graphics.setColor(0,0.72,0,1); Font.draw("("..gain..")",72,y)
      if Confirm.greenShader then love.graphics.setShader(previousShader) end
      PaletteFX.markTrueColor(72,y,32,8)
      love.graphics.setColor(0,0,0,1); Font.draw(tostring(current+gain),112,y)
    end
    Font.drawCode(Theme.cursor,self.yes and 28 or 92,120)
    Font.draw(Strings("YES"),40,120); Font.draw(Strings("NO"),104,120)
    PaletteFX.markTrueColor(0,0,160,144); love.graphics.setColor(1,1,1,1)
  end

  local Menu={}; Menu.__index=Menu; Menu.isOpaque=true
  Menu.digimonHDIcons=true
  function Menu.new(game,mon)
    bind(mon)
    local paths={evolve=evolutionPaths(mon.species),devolve=devolutionPaths(mon.species)}
    return setmetatable({game=game,mon=mon,paths=paths,
      mode=#paths.evolve>0 and "evolve" or "devolve",indices={evolve=1,devolve=1}},Menu)
  end
  function Menu:list() return self.paths[self.mode] end
  function Menu:selectedRoute() return self:list()[self.indices[self.mode]] end
  function Menu:switchMode()
    self.mode=self.mode=="evolve" and "devolve" or "evolve"
    if #self:list()>0 then self.indices[self.mode]=math.max(1,math.min(self.indices[self.mode],#self:list())) end
  end
  function Menu:chooseEvolution(route)
    if not route.unlocked(self.mon) then show(self.game,requirementText(route)); return end
    local targetName=self.game.data.pokemon[route.target].name
    show(self.game,("Digivolve into\n%s?"):format(targetName),nil,{choice=function(yes)
      if not yes then return end
      local oldLevel=self.mon.level; self.mon.level=1
      Evolution.evolve(self.game,self.mon,route.target,function()
        if self.mon.species~=route.target then self.mon.level=oldLevel; return end
        resetMon(self.game,self.mon); self.game.stack:pop()
      end,"DIGIVOLUTION")
    end})
  end
  function Menu:chooseRoute()
    local route=self:selectedRoute()
    if not route then show(self.game,"No known paths.")
    elseif route.kind=="devolve" then self.game.stack:push(Confirm.new(self.game,self,route))
    else self:chooseEvolution(route) end
  end
  function Menu:update()
    local input,list=self.game.input,self:list()
    if input:wasPressed("left") or input:wasPressed("right") then Sound.play(self.game.data,"Press_AB"); self:switchMode()
    elseif input:wasPressed("up") and #list>0 then local i=self.indices[self.mode]; self.indices[self.mode]=i>1 and i-1 or #list
    elseif input:wasPressed("down") and #list>0 then local i=self.indices[self.mode]; self.indices[self.mode]=i<#list and i+1 or 1
    elseif input:wasPressed("b") then Sound.play(self.game.data,"Press_AB"); self.game.stack:pop()
    elseif input:wasPressed("a") then Sound.play(self.game.data,"Press_AB"); self:chooseRoute() end
  end
  function Menu:draw()
    love.graphics.setColor(1,1,1,1); love.graphics.rectangle("fill",0,0,160,144)
    love.graphics.setColor(0,0,0,1)
    local title=self.mode=="evolve" and Strings("DIGIVOLUTION") or Strings("DEVOLUTION")
    love.graphics.push(); love.graphics.translate(16,8); love.graphics.scale(-1,1); Font.drawCode(Theme.cursor,0,0); love.graphics.pop()
    Font.draw(title,math.floor(80-Font.width(title)/2),8); Font.drawCode(Theme.cursor,144,8)
    local def=self.game.data.pokemon[self.mon.species]
    Font.draw(self.mon.nickname or (def and def.name) or self.mon.species,8,24)
    Font.draw(Strings("Lv.%d",self.mon.level or 1),112,24)
    local list,index,max=self:list(),self.indices[self.mode],4
    local first=math.max(1,math.min(index,math.max(1,#list-max+1)))
    for i=first,math.min(#list,first+max-1) do
      local route,y=list[i],44+(i-first)*16
      local target=self.game.data.pokemon[route.target]
      local name=(target and target.name) or route.target
      love.graphics.setColor(1,1,1,1)
      PartyMenu.drawIcon(self.game,{species=route.target,hp=1,stats={hp=1}},8,y,false,0)
      love.graphics.setColor(0,0,0,1); Font.draw(name,32,y)
      if i==index then
        Font.drawCode(Theme.cursor,0,y)
        local w=math.min(152,Font.width(name)+28)
        if route.unlocked(self.mon) then outline(6,y-1,w,17,0,0,0) else outline(6,y-1,w,17,0.85,0,0) end
      end
    end
    if #list==0 then Font.draw(Strings("No known paths."),16,60) end
    local selected=self:selectedRoute()
    if selected then
      local lines=type(selected.requirement)=="table" and selected.requirement or {requirementText(selected)}
      Font.draw(lines[1] or "",8,116); Font.draw(lines[2] or "",8,128)
    end
    PaletteFX.markTrueColor(0,0,160,144); love.graphics.setColor(1,1,1,1)
  end

  mod.hooks:wrap("ui.party.submenu",function(next,game,items,mon,context)
    local out=next(game,items,mon,context)
    if type(out)~="table" or (context and context.battle) then return out end
    for _,entry in ipairs(out) do if entry.id=="digivolve" then return out end end
    local entry={id="digivolve",label=Strings("DIGIVOLV"),onSelect=function(selected,selectedGame)
      selectedGame.stack:push(Menu.new(selectedGame,selected))
    end}
    local at=#out+1
    for i,item in ipairs(out) do if item.action=="stats" then at=i; break end end
    table.insert(out,at,entry); return out
  end)
end
