{pkgs, ...}: {
  fontProfiles = {
    enable = true;
    monospace = {
      family = "Iosevka Fonts";
      package = pkgs.nerdfonts.override {fonts = ["Iosevka"];};
    };
    regular = {
      family = "Noto Fonts";
      package = pkgs.noto-fonts;
    };
  };
}
