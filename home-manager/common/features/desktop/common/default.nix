{
  imports = [
    ./deluge.nix
    ./librewolf.nix
    ./gtk.nix
  ];
  xdg.portal.enable = true;
}
