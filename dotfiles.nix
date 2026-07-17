# /etc/nixos/dotfiles.nix
{ ... }:
{
  system.activationScripts.dotfiles.text = ''
    set -e
    HOME_DIR=/home/badr

    mkdir -p $HOME_DIR/.config/MangoHud
    mkdir -p $HOME_DIR/.config/sway
    mkdir -p $HOME_DIR/.config/foot
    # mkdir -p $HOME_DIR/.config/hypr
    # mkdir -p $HOME_DIR/.config/kitty
    # mkdir -p $HOME_DIR/.config/rofi
    # mkdir -p $HOME_DIR/.config/waybar

    ln -sf ${./dotfiles/MangoHud/MangoHud.conf} $HOME_DIR/.config/MangoHud/MangoHud.conf
    ln -sf ${./dotfiles/sway/config} $HOME_DIR/.config/sway/config
    ln -sf ${./dotfiles/foot/foot.ini} $HOME_DIR/.config/foot/foot.ini
    ln -sf ${./dotfiles/bash/.bashrc} $HOME_DIR/.bashrc
    # ln -sf ${./dotfiles/hypr/hyprland.lua} $HOME_DIR/.config/hypr/hyprland.lua
    # ln -sf ${./dotfiles/kitty/kitty.conf} $HOME_DIR/.config/kitty/kitty.conf
    # ln -sf ${./dotfiles/rofi/config.rasi} $HOME_DIR/.config/rofi/config.rasi
    # ln -sf ${./dotfiles/waybar/config.jsonc} $HOME_DIR/.config/waybar/config.jsonc
    # ln -sf ${./dotfiles/waybar/style.css} $HOME_DIR/.config/waybar/style.css

    chown -h badr:users \
      $HOME_DIR/.bashrc \
      $HOME_DIR/.config/MangoHud/MangoHud.conf \
      $HOME_DIR/.config/sway/config \
      $HOME_DIR/.config/foot/foot.ini
      # $HOME_DIR/.config/hypr/hyprland.lua \
      # $HOME_DIR/.config/kitty/kitty.conf \
      # $HOME_DIR/.config/rofi/config.rasi \
      # $HOME_DIR/.config/waybar/config.jsonc \
      # $HOME_DIR/.config/waybar/style.css
  '';
}
