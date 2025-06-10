{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    tree-sitter
    ripgrep
    ast-grep
    fd
    lazygit
    fzf
    curl
    gcc
    gnumake
    cmake
    wget
    nodejs_20
    nodePackages.npm
    python3
    go
    rustc
    cargo
    lua
    luajit
    luarocks
    bat
    delta
    wl-clipboard
    tectonic
    imagemagick
    ghostscript
    mermaid-cli
    nixpkgs-fmt
    alejandra
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    withNodeJs = true;
    withPython3 = true;
    withRuby = false;
  };
}
