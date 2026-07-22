{ pkgs, ... }:
{


  boot.kernelPackages = pkgs.linuxPackages_latest;


services.lact.enable = true;
hardware.amdgpu.overdrive.enable = true;


  systemd.oomd.enable = false;
  boot.kernel.sysctl = {
  "vm.vfs_cache_pressure" = 50;
 };


  security.polkit.enable = true;  
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  programs.gamemode.enable = true;

  powerManagement.cpuFreqGovernor = "performance";


  programs.firefox.enable = true;

  services.flatpak.enable = true;
 
 programs.gamescope.enable = true;
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  programs.appimage.enable = true;
  programs.appimage.binfmt = true;

  environment.pathsToLink = [ "/share" ];
  
  environment.variables.XDG_DATA_DIRS = [
  "${pkgs.gsettings-desktop-schemas}/share/gsettings-schemas/${pkgs.gsettings-desktop-schemas.name}"

];

}
