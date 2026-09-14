local constants = require("constants")

-- Toggle between the two most recently used workspaces.
hl.bind(constants.workspaceMod .. " + Tab", hl.dsp.focus({ workspace = "previous" }))

-- Alt+letter switches workspace; Alt+Ctrl+letter moves the focused window.
-- Alt+Shift remains reserved for switching keyboard layouts.
for key in constants.workspaceLetters:gmatch(".") do
    local workspace = "name:" .. key
    hl.bind(constants.workspaceMod .. " + " .. key, hl.dsp.focus({ workspace = workspace }))
    hl.bind(constants.workspaceMod .. " + CTRL + " .. key, hl.dsp.window.move({ workspace = workspace }))
end

for workspace = 1, 10 do
    local key = workspace % 10
    hl.bind(constants.workspaceMod .. " + " .. key, hl.dsp.focus({ workspace = workspace }))
    hl.bind(constants.workspaceMod .. " + CTRL + " .. key, hl.dsp.window.move({ workspace = workspace }))
end

-- Keep scratchpad shortcuts separate from the named S workspace.
hl.bind(constants.mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(constants.mainMod .. " + CTRL + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(constants.workspaceMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(constants.workspaceMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
