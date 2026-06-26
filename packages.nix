{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	git
    	wget
    	kitty
    	wmenu
    	grim
    	slurp
    	vesktop
    	btop
    	fastfetch
    	protonup-qt
    	mesa-demos
    	lutris
    	ncdu
    	hicolor-icon-theme
    	adwaita-icon-theme
    	p7zip
	lxqt.lxqt-policykit
	unrar
	lunar-client
  ];
}
