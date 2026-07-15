{ config, pkgs, ... }:
{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.backupFileExtension = "bak";
  home-manager.users.badr = { pkgs, ... }: {
    home.stateVersion = "26.05";
    xdg.configFile = {
     # "hypr/hyprland.lua".source = ./dotfiles/hypr/hyprland.lua;
     # "waybar/config.jsonc".source = ./dotfiles/waybar/config.jsonc;
     # "waybar/style.css".source = ./dotfiles/waybar/style.css;
      "kitty/kitty.conf".source = ./dotfiles/kitty/kitty.conf;
     # "rofi/config.rasi".source = ./dotfiles/rofi/config.rasi;
      "MangoHud/MangoHud.conf".source = ./dotfiles/MangoHud/MangoHud.conf;
      "sway/config".source = ./dotfiles/sway/config;
    };
  };
}
