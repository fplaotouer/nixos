{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix

    ./../common/global
    ./../common/users/pangz
    ./../common/optional/hyprland.nix
    ./../common/optional/fail2ban.nix
    ./../common/optional/virt-manager.nix
    ./../common/optional/virtualbox.nix
  ];

  networking.hostName = "nixos";
}
