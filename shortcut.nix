{ ... }:

{
  environment.shellAliases = {
    # System Rebuild
    nix-update = "cd /etc/nixos && sudo nix flake update";
    nix-rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#nixos";
    
    # Fixed spelling: optimize (with a 'z')
    nix-clean  = "sudo nix-collect-garbage -d && sudo nix store optimise";

    # Stable Nix Shell (Pulls from 26.05 Stable branch)
    nix-shell-stable = "nix shell github:NixOS/nixpkgs/nixos-26.05#";

    # Quick Git Commands
    gadd  = "cd /etc/nixos && sudo git add .";
    glog  = "cd /etc/nixos && sudo git log --oneline";
    gpush = "cd /etc/nixos && sudo git push";
    gcm   = "cd /etc/nixos && sudo git commit -am";
  };

  programs.git = {
    enable = true;
    config = {
      safe = {
        directory = "/etc/nixos";
      };
    };
  };
} 
