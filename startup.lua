os.loadAPI("goldcubeapi")
if peripheral.getType("top") == "monitor" and peripheral.getType("left") == "monitor" then
goldcubeapi.colorMonitors(shell)
end
goldcubeapi.drawConsoleMenu()
if peripheral.getType("bottom") == "speaker" then
goldcubeapi.speaker.playNote("bit",1, 8)
goldcubeapi.delay(0.16)
goldcubeapi.speaker.playNote("bit",1, 15)
goldcubeapi.delay(0.04)
goldcubeapi.speaker.playNote("bit",1, 17)
goldcubeapi.delay(0.2)
goldcubeapi.speaker.playNote("bit",1, 13)
end
if goldcubeapi.imgscreen ~= nil then
local surface = dofile("surface")
local surf = surface.create(57, 24)
local logoFrames = fs.list("startanim")
local surfimg = ""
term.redirect(goldcubeapi.imgscreen)
for k, v in pairs(logoFrames) do
    surf:clear(colors.black)
    surfimg = surface.load("startanim/"..v)
    surf:drawSurface(surfimg, 9, 1)
    surf:output(goldcubeapi.imgscreen)
    os.sleep(0.1)
end
term.redirect(goldcubeapi.terminal)
end
goldcubeapi.mainMenuButtons(shell)