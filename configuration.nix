# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
#
{ ... }:

{
  imports =
    [ # Include the results of the hardware scan.
	./hardware-configuration.nix
	./boot.nix
	./storage.nix
	./network.nix
	./sway.nix
	./extra.nix
	./packages.nix
	./fonts.nix
	./stable.nix
    ];



	system.stateVersion = "26.05"; # Did you read the comment?

}


