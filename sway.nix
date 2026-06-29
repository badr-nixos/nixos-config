{ pkgs, ... }:
{
#  programs.sway = {
#    enable = true;
#    wrapperFeatures.gtk = true;
#    extraPackages = [];
#  };

#  xdg.portal = {
#    enable = true;
#    wlr = {
#      enable = true;
#      settings.screencast = {
#        chooser_type = "dmenu";
#        chooser_cmd = "${pkgs.wmenu}/bin/wmenu";
#      };
#    };
#    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
#    config.common.default = [ "wlr" "gtk" ];
#  };

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
  security.rtkit.enable = true;
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
