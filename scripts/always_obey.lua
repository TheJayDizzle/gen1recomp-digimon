-- Digimon always follow their Tamer's orders, regardless of level, badges,
-- or original trainer. The current Gen 1 recomp does not yet run pokered's
-- CheckForDisobedience path, but exposing both methods keeps this rule explicit
-- and makes it apply if the native obedience check is restored later.
return function()
  local BattleState = require("src.battle.BattleState")
  if BattleState.digimonAlwaysObeys then return end
  BattleState.digimonAlwaysObeys = true

  function BattleState:obedienceLevel()
    return math.huge
  end

  function BattleState:checkObedience()
    return false
  end
end
