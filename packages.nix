
{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	vesktop
#	bottles
	wineWow64Packages.stagingFull
	protontricks
	git
    	grim
    	slurp
	file-roller 
#	rofi 
#	waybar
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
	glib
	gsettings-desktop-schemas
	mangohud
	foot
	prismlauncher
	openjdk8
	openjdk17

  ];
}
