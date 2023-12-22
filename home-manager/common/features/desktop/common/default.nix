{
  imports = [
    ./deluge.nix
    ./font.nix
    ./librewolf.nix
    ./gtk.nix
  ];
  xdg.portal.enable = true;
}
