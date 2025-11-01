# Adovaz's sway dotfiles

Config files for sway wm, inspired and based on dotfiles by [@ikhsan3adi](https://codeberg.org/ikhsan3adi) (mine are kinda fucked up).
## Dependencies

|                     | App/Program/Utilities Used                                                                                                                                                                                                                                                                      |
| :------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Window Manager      | [`sway`](https://swaywm.org/)                                                                                                                                                                                                                                                                   |
| Launcher            | [`rofi-wayland`](https://github.com/lbonn/rofi)                                                                                                                                                                                                                                                 |
| Lockscreen          | [`swaylock-effects`](https://github.com/mortie/swaylock-effects)                                                                                                                                                                                                                                |
| Status Bar          | [`waybar`](https://github.com/Alexays/Waybar)                                                                                                                                                                                                                                                   |
| Network             | [`networkmanager`](https://archlinux.org/packages/?name=networkmanager)                                                                                                                                                                                                                         |
| Brightness          | [`light`](https://gitlab.com/dpeukert/light)                                                                                                                                                                                                                                                    |
| Audio               | [`pipewire`](https://pipewire.org/)                                                                                                                                                                                                                                                             |
| Notification        | [`mako`](https://github.com/emersion/mako)                                                                                                                                                                                                                                                      |
| Screenshot          | [`grim`](https://gitlab.freedesktop.org/emersion/grim) \w [`slurp`](https://github.com/emersion/slurp)                                                                                                                                                                                          |
| Terminal            | [`kitty`](https://github.com/kovidgoyal/kitty)                                                                                                                                                                                                                                                  |
| Shell               | [`fish`](https://fishshell.com/)                                                                                                                                                                                                                                                                |
| Shell Prompt        | [`oh-my-fish`](https://github.com/oh-my-fish/oh-my-fish)                                                                                                                                                                                                                                        |
| Terminal Visuals    | [`hyfetch`](https://github.com/hykilpikonna/hyfetch), [`cava`](https://github.com/karlstav/cava), [`tty-clock`](https://github.com/xorg62/tty-clock), [`cmatrix`](https://github.com/abishekvashok/cmatrix), [`pipes.sh`](https://github.com/pipeseroni/pipes.sh) & many more                   |
| Code Editor         | [VSCode](https://code.visualstudio.com/) \w [Catppuccin Macchiato Theme](https://marketplace.visualstudio.com/items?itemName=Catppuccin.catppuccin-vsc-pack)                                                                                                                                    |
| Browser             | [Firefox Browser](https://www.firefox.com)                                                                                                                                                                                                                                                      |
| File Manager        | [`Thunar`](https://docs.xfce.org/xfce/thunar/start)                                                                                                                                                                                                                                             |
| GTK settings editor | [`nwg-look`](https://github.com/nwg-piotr/nwg-look)                                                                                                                                                                                                                                             |
| GTK theme           | [Catppuccin Macchiato GTK](https://github.com/catppuccin/gtk/blob/main/docs/USAGE.md)                                                                                                                                                                                                           |
| Folders Icon        | Papirus-Dark \w [Catppuccin Macchiato Papirus Folders](https://github.com/catppuccin/papirus-folders)                                                                                                                                                                                           |
| Cursor              | [Adwaita](https://github.com/manu-mannattil/adwaita-cursors)                                                                                                                                                                                                                                    |
| Font                | [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads), [Font Awesome](https://archlinux.org/packages/extra/any/otf-font-awesome/)                                                                                                                                                 |
| Color Palette       | [Catppuccin Macchiato](https://catppuccin.com/palette/)                                                                                                                                                                                                                                         |
| Other               | [`wl-clipboard`](https://github.com/bugaevc/wl-clipboard), [`rfkill-input-handler-disable`](https://github.com/devkev/rfkill-input-handler-disable), [`overskride`](https://github.com/kaii-lb/overskride), [`imv`](https://sr.ht/~exec64/imv/), [`xarchiver`](https://github.com/ib/xarchiver) |

`yay -Syu sway rofi swaylock-effects waybar networkmanager light pipewire mako grim slurp kitty fish hyfetch nwg-look wl-clipboard rfkill-input-handler-disable overskride imv xarchiver catppuccin-gtk-theme-macchiato firefox thunar papirus-icon-theme nerd-fonts font-awesome code` This should work 🙏🙏

## Installation

- Install dependencies (should be all of them above).
- Clone repo and copy or symlink the folders to `~.config/`
- Should be done!

## Keybinds

| Shortcut | Keybind       |
| ------- | ------------ |
| **Launching** || 
Terminal | `Mod+Return`  |
| App menu | `Mod+D`       |
| Run      | `Mod+Shift+D` |
| VSCode   | `Mod+Shift+V` |
| Firefox  | `Mod+Shift+B` |
| Thunar   | `Mod+Shift+E` |
| **Sway** ||
|Reload sway| `Mod+Shift+C`|
|Kill sway | `Mod+Shift+Q` |
