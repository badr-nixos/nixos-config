# /etc/nixos/dotfiles.nix
{ ... }:
{
  system.activationScripts.dotfiles.text = ''
    set -e
    HOME_DIR=/home/badr

    mkdir -p $HOME_DIR/.config/MangoHud
    mkdir -p $HOME_DIR/.config/sway
    mkdir -p $HOME_DIR/.config/foot

    ln -sfn ${./dotfiles/MangoHud/MangoHud.conf} $HOME_DIR/.config/MangoHud/MangoHud.conf
    ln -sfn ${./dotfiles/sway/config} $HOME_DIR/.config/sway/config
    ln -sfn ${./dotfiles/foot/foot.ini} $HOME_DIR/.config/foot/foot.ini
    ln -sfn ${./dotfiles/bash/.bashrc} $HOME_DIR/.bashrc

    chown -h badr:users \
      $HOME_DIR/.bashrc \
      $HOME_DIR/.config/MangoHud/MangoHud.conf \
      $HOME_DIR/.config/sway/config \
      $HOME_DIR/.config/foot/foot.ini
  '';
}
