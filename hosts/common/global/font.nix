{pkgs, ...}: {
  fonts = {
    fontDir.enable = true;
    packages = [
      pkgs.noto-fonts
      pkgs.noto-fonts-cjk
      pkgs.noto-fonts-emoji
      (pkgs.nerdfonts.override {fonts = ["Iosevka" "JetBrainsMono"];})
    ];
  };
}
