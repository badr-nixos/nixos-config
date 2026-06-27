{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	git
    	wget
    	kitty
    	#wmenu
    	grim
    	slurp
	hicolor-icon-theme 
        adwaita-icon-theme
        p7zip
        lxqt.lxqt-policykit
        unrar
	file-roller 
	rofi 
   	#vesktop
    	btop
    	fastfetch
    	protonup-qt
    	mesa-demos
    	lutris
    	ncdu
	lunar-client
  ];
}
