dir="$HOME/.config/rofi/launchers/"

rofi \
  -show p \
  -modi p:'rofi-power-menu --symbols-font "Symbols Nerd Font Mono" --choices=shutdown/reboot/suspend/logout' \
  -font "JetBrains Mono NF 16" \
  -theme ${dir}/pmenu.rasi 