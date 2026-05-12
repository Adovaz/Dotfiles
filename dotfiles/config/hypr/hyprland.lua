--------------------------------------------
-- Adovaz's Hyprland Config (Sway Backup) --
--------------------------------------------

------------------
---- MONITORS ----
------------------

hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "1",
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true,
    },
})

------------------
---- REQUIRES ----
------------------
require("config.startup")
require("config.theme")
require("config.input")
require("config.workspaces")
require("config.keybinds")
