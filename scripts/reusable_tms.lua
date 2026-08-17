return function()
  local ItemEffects = require("src.inventory.ItemEffects")

  if ItemEffects.digimonReusableTMsHooked then return end
  ItemEffects.digimonReusableTMsHooked = true

  local nativeUse = ItemEffects.use
  ItemEffects.use = function(data, save, itemId, target, battle, moveIndex, ow)
    local result, payload, extra = nativeUse(
      data, save, itemId, target, battle, moveIndex, ow)
      
    local item = data and data.items and data.items[itemId]
    if result == "learn" and item and item.machine
        and item.machine.kind == "TM" then
      result = "learnkept"
    end
    return result, payload, extra
  end
end
