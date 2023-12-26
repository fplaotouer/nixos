{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.extraGroups.vboxusers.members = ["pangz"];
  virtualisation.virtualbox = {
    host = {
      enable = true;
      enableExtensionPack = true;
    };
    guest = {
      enable = true;
      x11 = true;
    };
  };
}
