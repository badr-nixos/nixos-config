{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	bottles
	wineWow64Packages.stable	
	protontricks
	git
    	kitty
    	grim
    	slurp
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
	papirus-icon-theme
	adwaita-icon-theme
  	gnome-themes-extra
  ];
}
