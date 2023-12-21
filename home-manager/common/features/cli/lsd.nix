{
  lib,
  config,
  pkgs,
  ...
}: {
  programs.lsd = {
    enableAliases = true;
  };
}
