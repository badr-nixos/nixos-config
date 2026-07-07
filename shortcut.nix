{ config, pkgs, ... }:
{
  environment.shellAliases = {
    nix-update  = "cd /etc/nixos && sudo nix flake update";
    nix-rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#nixos";
    nix-clean   = "sudo nix-collect-garbage -d && sudo nix store optimise";
    gadd  = "cd /etc/nixos && sudo git add .";
    glog  = "cd /etc/nixos && sudo git log --oneline && cd";
    gpush = "cd /etc/nixos && sudo git push && cd";
    gcm   = "cd /etc/nixos && sudo git commit -am";
  };

environment.interactiveShellInit = ''
  nix-shell-stable() {
    NIXPKGS_ALLOW_UNFREE=1 nix shell --impure "github:NixOS/nixpkgs/nixos-26.05#$1" "''${@:2}"
  }
  nix-shell-unstable() {
    NIXPKGS_ALLOW_UNFREE=1 nix shell --impure "nixpkgs#$1" "''${@:2}"
  }
'';

  programs.git = {
    enable = true;
    config = {
      safe.directory = "/etc/nixos";
    };
  };
}
