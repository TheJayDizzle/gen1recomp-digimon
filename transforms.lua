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
end
