{lib, ...}: {
  programs.neovim = {
    enable = true;
    vimAlias = true;
    defaultEditor = lib.mkDefault true;
  };
}
