local programs = require("programs")

hl.on("hyprland.start", function ()
  hl.exec_cmd("waybar")
  hl.exec_cmd("swaync")
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")

  hl.exec_cmd("nm-applet --indicator")
  hl.exec_cmd("swww-daemon")

  hl.exec_cmd(programs.terminal)
end)
