local programs = require('programs')

local mainMod = "SUPER"

hl.bind(mainMod .. " + A", hl.dsp.exec_cmd(programs.terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(programs.hyprlock))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(programs.fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }),
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("~/.config/rofi/launchers/type-2/launcher.sh || pkill rofi")),
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo()),
hl.bind(mainMod .. " + T", hl.dsp.layout("togglesplit")))

hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))
