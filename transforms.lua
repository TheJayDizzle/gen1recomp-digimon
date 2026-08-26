-- Rebuild the edited Pokemon Center sign from the player's imported
-- OVERWORLD tileset. Only the changed pixels are shipped by the mod.
return function(ctx)
  local sheet = ctx.readImage("tilesets/overworld.png")
  local light = 2 / 3

  local pixels = {
    { 30, 34, light },
    { 16, 35, 1 },
    { 17, 35, 1 },
    { 18, 35, 0 },
    { 19, 35, 0 },
    { 21, 35, 1 },
    { 24, 35, 1 },
    { 25, 35, 0 },
    { 28, 35, 0 },
    { 29, 35, 1 },
    { 16, 36, 1 },
    { 26, 36, 1 },
    { 29, 36, 1 },
    { 30, 36, 1 },
    { 16, 37, 1 },
    { 25, 37, 1 },
    { 26, 37, 0 },
    { 30, 37, 1 },
    { 16, 38, 1 },
    { 17, 38, 1 },
    { 18, 38, 0 },
    { 29, 38, 1 },
    { 16, 39, 1 },
    { 18, 39, 0 },
    { 19, 39, 0 },
    { 20, 39, 1 },
    { 21, 39, 1 },
    { 22, 39, 0 },
    { 24, 39, 1 },
    { 25, 39, 0 },
    { 26, 39, 1 },
    { 28, 39, 0 },
    { 29, 39, 1 },
    { 30, 39, 1 },
  }

  for _, pixel in ipairs(pixels) do
    local x, y, shade = pixel[1], pixel[2], pixel[3]
    sheet:setPixel(x, y, shade, shade, shade, 1)
  end

  ctx.writeImage(sheet, "tilesets/overworld.png")

  -- The Content Editor's Diglett's Cave maps use rearranged tiles from the
  -- selected ROM's CAVERN sheet. Rebuild those sheets locally so the mod does
  -- not ship ROM-derived pixels.
  local cavern = ctx.readImage("tilesets/cavern.png")

  local function buildTileSheet(width, height, tileIds, output)
    local result = ctx.blank(width, height)
    local columns = width / 8
    for outputIndex, tileId in ipairs(tileIds) do
      local outputZero = outputIndex - 1
      local destX = (outputZero % columns) * 8
      local destY = math.floor(outputZero / columns) * 8
      local sourceX = (tileId % 16) * 8
      local sourceY = math.floor(tileId / 16) * 8
      for y = 0, 7 do
        for x = 0, 7 do
          result:setPixel(destX + x, destY + y,
            cavern:getPixel(sourceX + x, sourceY + y))
        end
      end
    end
    ctx.writeImage(result, output)
  end

  buildTileSheet(128, 8, {
    2, 3, 18, 19, 18, 32, 32, 10, 11, 26, 27,
  }, "mapbuilder/diglett/digletts_cave_1f_tiles.png")

  buildTileSheet(128, 16, {
    5, 5, 37, 16, 23, 16, 38, 38, 49, 23, 32, 32, 49, 8, 9, 24,
    25, 2, 3, 18, 19, 10, 11, 26, 27, 17, 40, 40, 5, 41, 7,
  }, "mapbuilder/diglett/digletts_cave_tiles.png")

  -- The Celadon export combines tiles from OVERWORLD and FOREST. Rebuild
  -- both editor sheets from the player's imported cache so no ROM-derived
  -- tilesheet or editor-private path is shipped with the mod.
  local forest = ctx.readImage("tilesets/forest.png")
  local function mixedTileSheet(width, height, entries, output)
    local result = ctx.blank(width, height)
    local columns = width / 8
    for outputIndex, entry in ipairs(entries) do
      if entry then
        local outputZero = outputIndex - 1
        local destX = (outputZero % columns) * 8
        local destY = math.floor(outputZero / columns) * 8
        local sourceX = (entry.id % 16) * 8
        local sourceY = math.floor(entry.id / 16) * 8
        for y = 0, 7 do
          for x = 0, 7 do
            result:setPixel(destX + x, destY + y,
              entry.image:getPixel(sourceX + x, sourceY + y))
          end
        end
      end
    end
    ctx.writeImage(result, output)
  end
  local function o(id) return { image = sheet, id = id } end
  local function f(id) return { image = forest, id = id } end

  mixedTileSheet(128, 48, {
    o(64), o(65), o(80), o(81), o(44), o(44), o(44), o(76),
    o(83), o(90), o(18), o(18), o(77), o(90), o(91), o(91),
    o(92), o(23), o(23), o(93), o(15), o(10), o(15), o(75),
    o(75), o(31), o(48), o(48), o(78), o(26), o(26), o(79),
    o(70), o(71), o(86), o(87), o(11), o(12), o(27), o(28),
    o(66), o(67), o(74), o(74), o(68), o(69), o(5), o(6),
    o(21), o(22), o(7), o(8), o(9), o(24), o(25), o(57),
    o(57), o(37), o(38), o(34), o(0), o(40), o(41), o(14),
    o(85), o(85), o(42), o(43), o(58), o(59), o(4), o(4),
    o(51), o(20), o(20), o(26), o(45), o(46), o(61), o(62),
    o(56), o(56), o(21), o(34), o(47), o(63), o(55), o(55),
    o(52),
  }, "mapbuilder/celadon/celadon_city_tiles.png")

  mixedTileSheet(128, 24, {
    o(64), o(65), o(80), o(81), o(45), o(46), o(61), o(62),
    f(52), f(32), f(32), o(3), o(44), o(44), o(48), o(48),
    o(44), o(44), f(2), f(3), f(18), f(19), o(51), o(50),
    o(20), o(20), o(84), o(50), o(20), o(70), o(71), o(86),
    o(87),
  }, "mapbuilder/celadon/celadon_gardens_tiles.png")
end
