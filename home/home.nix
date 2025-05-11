{ config, pkgs, ... }:

{
  imports = [
    ./user-pkgs.nix 
    ./starship.nix
    ./fish.nix
  ];

  home.username = "ericfrs";
  home.homeDirectory = "/home/ericfrs";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  dconf.settings = {
    "org/gnome/desktop/background" = {
      picture-uri = "file://${config.home.homeDirectory}/.config/wallpapers/wall01-l.png";
      picture-uri-dark = "file://${config.home.homeDirectory}/.config/wallpapers/wall01-d.png";
    };
  };

  programs.git = {
    enable = true;
    userName = "Eric A. Farias";
    userEmail = "erikofarias@gmail.com";
  };
}
