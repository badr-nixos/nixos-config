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
	hicolor-icon-theme 
        adwaita-icon-theme
        _7zz
        unar
	file-roller 
	rofi 
	awww
	waybar
    	btop
    	fastfetch
    	protonup-qt
    	lutris
    	ncdu
	lunar-client
  ];
}
