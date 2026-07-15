{ pkgs, ... }:
{
 
programs.sway = {
  enable = true;
  wrapperFeatures.gtk = true;
  extraPackages = with pkgs; [ wmenu swaybg ];
};

programs.uwsm = {
  enable = true;
  waylandCompositors = {
    sway = {
      prettyName = "Sway";
      comment = "Sway compositor managed by UWSM";
      binPath = "/run/current-system/sw/bin/sway";
    };
  };
};

xdg.portal = {
  enable = true;
  wlr.enable = true;
  config.common.default = "*";
};

# programs.hyprland = {
#    enable = true;
#    withUWSM = true;
#    xwayland.enable = true;
#  };
#
#  xdg.portal = {
#    enable = true;
#    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
#    config.common.default = [ "hyprland" "gtk" ];
#  };

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
