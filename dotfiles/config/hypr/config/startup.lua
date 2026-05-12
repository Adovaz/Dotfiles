hl.on("hyprland.start", function () 
  hl.exec_cmd("waybar & hypridle & swayosd-server & ~/.config/hypr/scripts/waybar_peek.py & /usr/lib/xfce-polkit/xfce-polkit & swaybg -i ~/Pictures/Wallpapers/wallpaper.png -m fill")
end)