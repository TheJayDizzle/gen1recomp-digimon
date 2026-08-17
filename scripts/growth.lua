
return function()
  local Growth = require("src.pokemon.Growth")
  if Growth.digimonCurveScaleApplied then return end
  Growth.digimonCurveScaleApplied = true

  local EXP_SCALE = 0.60
  for id, original in pairs(Growth.CURVES) do
    local curve = original
    Growth.CURVES[id] = function(level)
      return math.floor(curve(level) * EXP_SCALE)
    end
  end
end
-- Digimon are expected to repeat the level curve after Digivolution reset to level 1. Reduce every built-in cumulative EXP threshold to 60%.
-- Will need careful observation, balancing in endgame could be a problem, if Digimon get noch enouch xp
