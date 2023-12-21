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
  ];

  home = {
    username = "pangz";
    homeDirectory = "/home/${config.home.username}";
    stateVersion = "22.11";
    sessionPath = ["$HOME/.local/bin"];
    sessionVariables = {
      FLAKE = "$HOME/Documents/NixConfig";
    };
  };

  colorscheme = inputs.nix-colors.colorschemes.gruvbox-dark-medium;
}
