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
end
