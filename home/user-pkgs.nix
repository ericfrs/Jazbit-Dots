{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    obsidian
    google-chrome
    ghostty
    vscode
    zip
    xz
    unzip
    p7zip
  ];
}
