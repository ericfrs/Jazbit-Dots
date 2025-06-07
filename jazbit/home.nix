{ config, pkgs, ... }:

{
  home = {
    username = "ericfrs";
    homeDirectory = "/home/ericfrs";
    stateVersion = "25.05";
    packages = [];
  };

  dconf.settings = {
    "org/gnome/desktop/background" = {
      picture-uri = "file://${config.home.homeDirectory}/.config/wallpapers/wall03-l.png";
      picture-uri-dark = "file://${config.home.homeDirectory}/.config/wallpapers/wall02-d.png";
    };
    "org/gnome/desktop/interface" = {
      gtk-theme = "adw-gtk3";
      icon-theme = "Papirus";
      cursor-theme = "Bibata-Modern-Ice";
      font-name = "Inter 11";
      document-font-name = "Roboto 11";
      monospace-font-name = "Maple Mono NF Regular 11";
      font-antialiasing = "rgba";
    };
    "org/gnome/desktop/wm/preferences" = {
      titlebar-font = "Maple Mono NF Bold 11";
    };
  };

  programs = {
    home-manager.enable = true;

    # Git
    git = {
      enable = true;
      userName = "Eric A. Farias";
      userEmail = "erikofarias@gmail.com";
    };
  };
}
