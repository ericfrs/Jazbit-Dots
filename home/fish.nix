{ pkgs, ... }:
{
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

    plugins = [
      { name = "fish-you-should-use"; src = pkgs.fishPlugins.fish-you-should-use.src; }
      { name = "plugin-sudope"; src = pkgs.fishPlugins.plugin-sudope.src; }
      { name = "done"; src = pkgs.fishPlugins.done.src; }
    ];
  };
}
