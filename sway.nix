{ pkgs, ... }:
{

programs.hyprland = {
  enable = true;
  xwayland.enable = true;
};
  
xdg.portal = {
  enable = true;
  extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  config.common.default = "*";
};


  security.polkit.enable = true;
  programs.dconf.enable = true;

  programs.thunar = {
    enable = true;
    plugins = with pkgs; [
      thunar-archive-plugin
      thunar-volman
    ];
  };

  services.gvfs.enable = true;
  services.tumbler.enable = true;


}
