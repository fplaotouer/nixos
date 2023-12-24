{pkgs, ...}: {
  programs.browserpass.enable = true;
  programs.librewolf = {
    enable = true;
    settings = {
    };
  };

  xdg.mimeApps.defaultApplications = {
    "text/html" = ["librewolf.desktop"];
    "text/xml" = ["librewolf.desktop"];
    "x-scheme-handler/http" = ["librewolf.desktop"];
    "x-scheme-handler/https" = ["librewolf.desktop"];
  };
}
