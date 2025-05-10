{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    obsidian
    neovim
    google-chrome
    ghostty
    vscode
    zip
    xz
    unzip
    p7zip
  ];
}
