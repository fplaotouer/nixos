{
  services = {
    xserver = {
      desktopManager.gnome = {
        enable = true;
      };
      displayManager.gdm = {
        enable = true;
        autoSuspend = false;
      };
    };
  };
  # Fix broken stuff
  services.avahi.enable = false;
  networking.networkmanager.enable = false;
}
