local v = require("config.variables")

---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(v.term)) -- Terminal
local closeWindowBind = hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close()) -- Bind for closing windows
-- closeWindowBind:set_enabled(false)

-- Power
hl.bind(mainMod .. " + CTRL + ALT + Escape", hl.dsp.exit())
hl.bind(mainMod .. " + CTRL + ALT + S", hl.dsp.exec_cmd("hyprlock & systemctl sleep"))
hl.bind(mainMod .. " + CTRL + ALT + SHIFT + R ", hl.dsp.exec_cmd("reboot"))
hl.bind(mainMod .. " + CTRL + ALT + SHIFT + U ", hl.dsp.exec_cmd("poweroff"))

-- Apps
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd(v.files))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd(v.editor))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd(v.browser))

-- Rofi
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(v.rofi_launcher))
hl.bind(mainMod .. " + SHIFT + D", hl.dsp.exec_cmd(v.rofi_runner))

-- Hyprland
hl.bind(mainMod .. " + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + S", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("hyprctl reload"))

-- Screenshots
hl.bind("Print", hl.dsp.exec_cmd(v.screenshot))
hl.bind(mainMod .. "+ Print", hl.dsp.exec_cmd(v.screenshot .. " -g"))
hl.bind("XF86SelectiveScreenshot", hl.dsp.exec_cmd(v.screenshot .. " -g"))

-- Misc
hl.bind(mainMod .. " + CTRL + SHIFT + C", hl.dsp.exec_cmd("wl-color-picker"))
hl.bind(mainMod .. " + CTRL+ ALT + L", hl.dsp.exec_cmd(v.lockscreen))


-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(v.volumeup), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(v.volumedown),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd(v.volumemute),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd(v.brightnessup),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd(v.brightnessdown),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })


--------------
-- Movement --
--------------
-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
