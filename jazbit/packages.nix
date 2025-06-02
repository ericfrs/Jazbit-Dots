{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    brave
    fastfetch
    htop
    ghostty
    fish
    obsidian
    zip
    xz
    unzip
    p7zip
    vscode
    motrix
    readest
    git
  ];
}
