-- Initial app placement only; windows can be moved freely afterward.
hl.window_rule({
    name = "vscode-start-on-v",
    match = { class = "^code$" },
    workspace = "name:V",
})

hl.window_rule({
    name = "helium-start-on-h",
    match = { class = "^helium$" },
    workspace = "name:H",
})

hl.window_rule({
    name = "zen-start-on-z",
    match = { class = "^zen$" },
    workspace = "name:Z",
})

hl.window_rule({
    name = "kitty-start-on-k",
    match = { class = "^kitty$" },
    workspace = "name:K",
})

hl.window_rule({
    name = "steam-start-on-s",
    match = { class = "^steam$" },
    workspace = "name:S",
})

hl.window_rule({
    name = "discord-start-on-d",
    match = { class = "^discord$" },
    workspace = "name:D",
})

hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})
