# /etc/nixos/dotfiles.nix
{ ... }:
{
  system.activationScripts.dotfiles.text = ''
    set -e
    HOME_DIR=/home/badr

    mkdir -p $HOME_DIR/.config/MangoHud
   # mkdir -p $HOME_DIR/.config/sway
   # mkdir -p $HOME_DIR/.config/sway/scripts
   # mkdir -p $HOME_DIR/.config/foot
    mkdir -p $HOME_DIR/.config/hypr
    mkdir -p $HOME_DIR/.config/waybar
    mkdir -p $HOME_DIR/.config/rofi
    mkdir -p $HOME_DIR/.config/kitty

    ln -sfn ${./dotfiles/MangoHud/MangoHud.conf} $HOME_DIR/.config/MangoHud/MangoHud.conf
   # ln -sfn ${./dotfiles/sway/config} $HOME_DIR/.config/sway/config
   # ln -sfn ${./dotfiles/scripts/vrr-toggle.py} $HOME_DIR/.config/sway/scripts/vrr-toggle.py
   # ln -sfn ${./dotfiles/foot/foot.ini} $HOME_DIR/.config/foot/foot.ini
    ln -sfn ${./dotfiles/bash/.bashrc} $HOME_DIR/.bashrc
    ln -sfn ${./dotfiles/hypr/hyprland.lua} $HOME_DIR/.config/hypr/hyprland.lua
    ln -sfn ${./dotfiles/waybar/config.jsonc} $HOME_DIR/.config/waybar/config.jsonc
    ln -sfn ${./dotfiles/waybar/style.css} $HOME_DIR/.config/waybar/style.css
    ln -sfn ${./dotfiles/kitty/kitty.conf} $HOME_DIR/.config/kitty/kitty.conf
    ln -sfn ${./dotfiles/rofi/config.rasi} $HOME_DIR/.config/rofi/config.rasi

    chown -h badr:users \
      $HOME_DIR/.bashrc \
      $HOME_DIR/.config/MangoHud/MangoHud.conf \
      $HOME_DIR/.config/hypr/hyprland.lua \
      $HOME_DIR/.config/waybar/config.jsonc \
      $HOME_DIR/.config/waybar/style.css \
      $HOME_DIR/.config/kitty/kitty.conf \
      $HOME_DIR/.config/rofi/config.rasi
  '';
}
