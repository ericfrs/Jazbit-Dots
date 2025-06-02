{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    ghostty
    fishPlugins.fish-you-should-use
    fishPlugins.plugin-sudope
    fishPlugins.done
    starship
  ];

  programs.fish = {
    enable = true;

    shellInit = ''
      set -U fish_greeting
      starship init fish | source
    '';

    shellAliases = {
      ls = "ls -la --color=auto";
      nixup = "sudo nixos-rebuild switch";
    };
  };
}
