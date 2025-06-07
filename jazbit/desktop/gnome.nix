{ config, pkgs, ... }:

{
  services = {
    xserver.enable = true;
    xserver.displayManager.gdm.enable = true;
    xserver.desktopManager.gnome.enable = true;
  };

  programs.dconf.enable = true;

  fonts.fontconfig.subpixel.rgba = "rgb";

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
    pkgs.gnome-tweaks
    pkgs.bibata-cursors
    pkgs.adw-gtk3
    appindicator
    window-title-is-back
    just-perfection
    pop-shell
    caffeine
    arcmenu
    clipboard-indicator
    adw-gtk3-colorizer
  ];
}
