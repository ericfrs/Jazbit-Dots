{ config, pkgs, ... }:

{
  services.xserver.enable = true;

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  programs.dconf.enable = true;

  environment.gnome.excludePackages = with pkgs; [
    epiphany
    gedit
    yelp
    geary
    gnome-contacts
    gnome-maps
    gnome-music
    gnome-tour
    gnome-connections
    gnome-logs
    evince
    simple-scan
  ];

  environment.systemPackages = with pkgs.gnomeExtensions; [
    appindicator
    window-title-is-back
    just-perfection
    forge
  ];
}
