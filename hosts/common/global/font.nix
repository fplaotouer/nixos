{pkgs, ...}: {
  fonts = {
    fontDir.enable = true;
    packages = [
      pkgs.noto-fonts
      pkgs.noto-fonts-cjk
      pkgs.noto-fonts-emoji
      (pkgs.nerdfonts.override {fonts = ["Iosevka" "JetBrainsMono"];})
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = ["Iosevka Nerd Font"];
        serif = ["Noto Serif"];
        sansSerif = ["Noto Sans"];
        emoji = ["Noto Color Emoji"];
      };
    };
  };
}
