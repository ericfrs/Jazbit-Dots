{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [];
  nixpkgs.config.allowUnfree = true;
  programs.fish.enable = true;
}
