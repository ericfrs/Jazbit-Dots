{ config, pkgs, ... }:

{
  imports = [ ./user-pkgs.nix ];

  home.username = "ericfrs";
  home.homeDirectory = "/home/ericfrs";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "Eric A. Farias";
    userEmail = "erikofarias@gmail.com";
  };
}
