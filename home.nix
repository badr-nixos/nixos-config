{ ... }:
{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.backupFileExtension = "bak";
  home-manager.users.badr = { ... }: {
    home.stateVersion = "26.05";
    xdg.configFile = {
     # "hypr/hyprland.lua".source = ./dotfiles/hypr/hyprland.lua;
     # "waybar/config.jsonc".source = ./dotfiles/waybar/config.jsonc;
     # "waybar/style.css".source = ./dotfiles/waybar/style.css;
     # "rofi/config.rasi".source = ./dotfiles/rofi/config.rasi;
      "MangoHud/MangoHud.conf".source = ./dotfiles/MangoHud/MangoHud.conf;
      "sway/config".source = ./dotfiles/sway/config;
      "foot/foot.ini".source = ./dotfiles/foot/foot.ini;
     #
     #


};
##################################################################################
   home.file = {
      ".bashrc".source = ./dotfiles/bash/.bashrc; 
     #
     #


};
##################################################################################


  };
}
