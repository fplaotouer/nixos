{
  pkgs,
  config,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in {
  users.mutableUsers = false;
  users.users.pangz = {
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

  home-manager.users.pangz = import ./../../../../home/pangz/${config.networking.hostName}.nix;

  services.geoclue2.enable = true;
  security.pam.services = {swaylock = {};};
}
