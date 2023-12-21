{pkgs, ...}: {
  imports = [
    ./alacritty.nix
    ./gammastep.nix
    ./mako.nix
    ./swaylock.nix
    ./waybar.nix
    ./wofi.nix
  ];

  xdg.mimeApps.enable = true;
  home.packages = with pkgs; [
    gtk3 # For gtk-launch
    primary-xwayland
    wl-clipboard
    xdg-utils-spawn-terminal # Patched to open terminal
  ];

  home.sessionVariables = {
    MOZ_ENABLE_WAYLAND = 1;
    QT_QPA_PLATFORM = "wayland";
    LIBSEAT_BACKEND = "logind";
  };

  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-wlr];
}
