{
  pkgs,
  config,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in {
  users.mutableUsers = false;
  users.users.misterio = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups =
      [
        "wheel"
      ]
      ++ ifTheyExist [
        "libvirtd"
      ];

    packages = [pkgs.home-manager];
  };

  sops.secrets.misterio-password = {
    sopsFile = ../../secrets.yaml;
    neededForUsers = true;
  };

  home-manager.users.pangz = import ../../../../home/pangz/${config.networking.hostName}.nix;

  services.geoclue2.enable = true;
  security.pam.services = {swaylock = {};};
}
