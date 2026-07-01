{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	wineWow64Packages.stable	
	bottles
	protontricks
	git
    	kitty
    	grim
    	slurp
        unar
	file-roller 
	rofi 
	waybar
    	btop
    	fastfetch
    	protonup-qt
    	lutris
    	ncdu
	lunar-client
	linux-wallpaperengine
#	vesktop
  ];
}
