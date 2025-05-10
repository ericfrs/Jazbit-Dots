{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    obsidian
    neovim
    google-chrome
    ghostty
    fish
    starship
    vscode
    zip
    xz
    unzip
    p7zip
  ];
}
