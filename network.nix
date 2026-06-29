{ ... }:
{

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  time.timeZone = "Asia/Riyadh";

    users.users.badr = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

}
