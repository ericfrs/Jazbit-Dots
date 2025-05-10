{ config, pkgs, ... }:

{
  networking.hostName = "jazbit";
  networking.networkmanager.enable = true;
}
