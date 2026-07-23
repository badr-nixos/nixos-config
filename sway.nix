{ pkgs, ... }:
{
 
#programs.sway = {
#  enable = true;
#  wrapperFeatures.gtk = true;
#  extraPackages = with pkgs; [ wmenu swaybg ];
#};

#programs.uwsm = {
#  enable = true;
#  waylandCompositors = {
#    sway = {
#      prettyName = "Sway";
#      comment = "Sway compositor managed by UWSM";
#      binPath = "/run/current-system/sw/bin/sway";
#    };
#  };
#};

#xdg.portal = {
#  enable = true;
#  wlr.enable = true;
#  extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
#  config.common.default = "*";
#};

#xdg.portal.wlr.settings = {
#  screencast = {
#    chooser_type = "dmenu";
#    chooser_cmd = "${pkgs.wmenu}/bin/wmenu -p SelectOutput -f \"Inter 10\" -N 000000 -n ffffff -M 000000 -m ffffff -S ffffff -s 000000";
#  };
#};

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

environment.sessionVariables = {
  XCURSOR_THEME = "phinger-cursors-dark";
  XCURSOR_SIZE = "24";
  NIXOS_OZONE_WL = "1";
};


#systemd.user.services.vrr-toggle = {
#  description = "Toggle VRR based on fullscreen state";
#  partOf = [ "graphical-session.target" ];
#  wantedBy = [ "graphical-session.target" ];
#  after = [ "graphical-session.target" ];
#  serviceConfig = {
#    ExecStart = "${pkgs.python3.withPackages (ps: [ ps.i3ipc ])}/bin/python3 %h/.config/sway/scripts/vrr-toggle.py";
#    Restart = "on-failure";
#  };
#};


}
