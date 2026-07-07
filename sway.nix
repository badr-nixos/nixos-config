{ pkgs, ... }:
{
 

 programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    config.common.default = [ "hyprland" "gtk" ];
  };

	services.gvfs.enable = true;
        programs.dconf.enable = true;

  programs.thunar = {
    enable = true;
    plugins = with pkgs; [
     thunar-archive-plugin
     thunar-volman
    ];
  };
  services.tumbler.enable = true;

environment.variables = {
  XCURSOR_THEME = "phinger-cursors-dark";
  XCURSOR_SIZE = "24";
};


}
