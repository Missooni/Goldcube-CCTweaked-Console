local function drawMenu()
cprint.cprint("Minux Tools for &1Goldcube&0\n")
cprint.cprint("[ &8Check for Console Updates&0 ]\n&7This requires http to be enabled!&0\n")
cprint.cprint("[ &8Set Override.d&0 ]")
cprint.cprint("[ &8Restore Override.d&0 ]\n&7Automatically start Goldcube \nwhen your Minux PC launches.&0\n")
cprint.cprint("[ &8Manage Game Library&0 ]\n&7Download games using Minux apt \nand run them from your library.&0\n")
cprint.cprint("[ &eExit Minux Tools&0 ]")
repeat
event, button, x, y = os.pullEvent()
until event == "mouse_click"
end

local function drawLibrary()
if fs.exists(goldcubeapi.gcDir.."/plugins/mnxtools/lib/") == false then fs.makeDir(goldcubeapi.gcDir.."/plugins/mnxtools/lib/") end
end

multishell.setTitle(multishell.getCurrent(), "mnxtools")
drawMenu()