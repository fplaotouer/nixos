{config, ...}: let
  inherit (config.colorscheme) kind;
in {
  services.mako = {
    enable = true;
    settings = {
      global = {
        width = 300;
        height = 300;
        offset = "30x50";
        origin = "top-right";
        transparency = 10;
        frame_color = "#eceff1";
        font = "Droid Sans 12";
      };

      urgency_normal = {
        background = "#37474f";
        foreground = "#eceff1";
        timeout = 12;
      };
      global.icon_path =
        if kind == "dark"
        then "${config.gtk.iconTheme.package}/share/icons/Papirus-Dark"
        else "${config.gtk.iconTheme.package}/share/icons/Papirus-Light";
    };
  };
}
