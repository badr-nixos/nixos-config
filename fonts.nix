{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    inter
    jetbrains-mono
    nerd-fonts.jetbrains-mono
  ];
}
