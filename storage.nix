{ ... }:
{
  fileSystems."/mnt/m2" = {
    device = "/dev/disk/by-uuid/68e488be-315a-4894-a715-da243b1d1103";
    fsType = "ext4";
    options = [ "nofail" "defaults" "noatime" ];
  };

  fileSystems."/mnt/hdd" = {
    device = "/dev/disk/by-uuid/31b2e87d-3780-4745-a5d7-12292ecdac95";
    fsType = "ext4";
    options = [ "nofail" "defaults" "noatime"  ];
  };
}
