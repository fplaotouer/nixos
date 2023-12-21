{pkgs, ...}: {
  imports = [
    ./lsd.nix
  ];
  home.packages = with pkgs; [];
}
