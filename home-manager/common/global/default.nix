{
  inputs,
  lib,
  pkgs,
  config,
  outputs,
  ...
}: let
  inherit (inputs.nix-colors) colorSchemes;
in {
  imports =
    [
      inputs.nix-colors.homeManagerModule
    ]
    ++ (builtins.attrValues outputs.homeManagerModules);

  nixpkgs = {
    overlays = builtins.attrValues outputs.overlays;
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  nix = {
    package = lib.mkDefault pkgs.nixVersions.stable;
    settings = {
      experimental-features = ["nix-command" "flakes"];
    };
  };

  systemd.user.startServices = "sd-switch";

  programs = {
    home-manager.enable = true;
    git.enable = true;
    neovim.enable = true;
    fish.enable = true;
    bash.enable = true;
    zsh.enable = true;
    starship.enable = true;
  };

  home = {
    username = lib.mkDefault "pangz";
    homeDirectory = lib.mkDefault "/home/${config.home.username}";
    stateVersion = lib.mkDefault "22.11";
  };

  colorscheme = lib.mkDefault colorSchemes.gruvbox-dark-medium;
  home.file.".colorscheme".text = config.colorscheme.slug;
}
