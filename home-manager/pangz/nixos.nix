{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./../common/global
    ./../common/features/cli
    ./../common/features/desktop/hyprland
    ./../common/features/music
  ];

  home = {
    username = "pangz";
    homeDirectory = "/home/${config.home.username}";
    stateVersion = "22.11";
    sessionPath = ["$HOME/.local/bin"];
    sessionVariables = {
      FLAKE = "$HOME/nixos";
    };
  };

  colorscheme = inputs.nix-colors.colorschemes.gruvbox-dark-medium;
}
