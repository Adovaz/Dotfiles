return {
    term           = "kitty",
    lockscreen     = "hyprlock",
    colorpicker    = "~/.config/hypr/scripts/colorpicker",
    files          = "thunar",
    editor         = "code",
    browser        = "firefox",
    rofi_launcher  = "~/.config/hypr/scripts/menu.sh drun",
    rofi_runner    = "~/.config/hypr/scripts/menu.sh run",
    rofi_powermenu = "~/.config/hypr/scripts/pmenu.sh",
    volumemute     = "swayosd-client --output-volume mute-toggle",
    volumedown     = "swayosd-client --output-volume lower",
    volumeup       = "swayosd-client --output-volume raise",
    brightnessdown = "swayosd-client --brightness lower",
    brightnessup   = "swayosd-client --brightness raise",
    screenshot     = "~/.config/hypr/scripts/screenshot.sh",
    notifycmd      = "notify-send -h string:x-canonical-private-synchronous:hypr-cfg -u low"
}
