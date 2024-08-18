local surfapi = dofile(goldcubeapi.gcDir.."/apis/surface")
local surface = surfapi.load(goldcubeapi.gcDir.."/plugins/gcolor/menu.nft")
local selectColor = colors.white
local selectElement = "none"

local function drawCurrentColor(selectColor)
surface:drawString("  \n  \n  ",24,12,selectColor,selectColor)
surface:drawString("x",25,12,colors.red,colors.white)
local ColorR, ColorB, ColorG = term.getPaletteColor(selectColor)
end

multishell.setTitle(multishell.getCurrent(), "gcolor")
drawCurrentColor(selectColor)
surface:output()
goldcubeapi.easyTouch()
