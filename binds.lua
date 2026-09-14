local constants = require("constants")
local programs = require('programs')


hl.bind(constants.mainMod .. " + A", hl.dsp.exec_cmd(programs.terminal))
hl.bind(constants.mainMod .. " + Q", hl.dsp.window.close())
hl.bind(constants.mainMod .. " + M", hl.dsp.exec_cmd(programs.hyprlock))
hl.bind(constants.mainMod .. " + E", hl.dsp.exec_cmd(programs.fileManager))
hl.bind(constants.mainMod .. " + D", hl.dsp.exec_cmd("~/.config/rofi/launchers/type-2/launcher.sh || pkill rofi"))
hl.bind(constants.mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(constants.mainMod .. " + T", hl.dsp.layout("togglesplit"), { description = "Toggle split" })
hl.bind(constants.mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(constants.mainMod .. " + R", hl.dsp.exec_cmd("~/.config/waybar/scripts/launch.sh"))
hl.bind("CTRL + SHIFT + X", hl.dsp.exec_cmd("~/.local/bin/screenshot-region"))

hl.bind(constants.mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(constants.mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(constants.mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(constants.mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

hl.bind(constants.mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(constants.mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(constants.mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(constants.mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(constants.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

local repeatingKeys = {
    XF86AudioRaiseVolume = "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+",
    XF86AudioLowerVolume = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-",
    XF86AudioMute = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle",
    XF86AudioMicMute = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle",
    XF86MonBrightnessUp = "brightnessctl -e4 -n2 set 5%+",
    XF86MonBrightnessDown = "brightnessctl -e4 -n2 set 5%-",
}

for key, command in pairs(repeatingKeys) do
    hl.bind(key, hl.dsp.exec_cmd(command), { locked = true, repeating = true })
end

local mediaKeys = {
    XF86AudioNext = "playerctl next",
    XF86AudioPause = "playerctl play-pause",
    XF86AudioPlay = "playerctl play-pause",
    XF86AudioPrev = "playerctl previous",
}

for key, command in pairs(mediaKeys) do
    hl.bind(key, hl.dsp.exec_cmd(command), { locked = true })
end
