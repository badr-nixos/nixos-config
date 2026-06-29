{ pkgs, nixpkgs-stable, ... }:
{
  nixpkgs.overlays = [(final: prev: {
    stable = nixpkgs-stable.legacyPackages.${pkgs.system};
  })];
}
