{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./system/boot.nix
    ./system/network.nix
    ./system/locale.nix
    ./system/desktop.nix
    ./system/audio.nix
    ./system/users.nix
    ./system/packages.nix
    ./system/nix.nix
  ];

  system.stateVersion = "24.11";
}
