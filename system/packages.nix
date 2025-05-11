{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    automake
    autoconf
    flex
    fontforge
    pkg-config
    gcc
    binutils
    ripgrep
    luarocks
    python3
    fd
    wget
    tree-sitter
    wl-clipboard
    imagemagick
    ghostscript
    sqlite
    tectonic
    gnumake
    cmake
    zig
    mermaid-cli
    lazygit
    fzf
    lua
    ast-grep
    ];
  nixpkgs.config.allowUnfree = true;
  programs.fish.enable = true;
}
