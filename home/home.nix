{ config, pkgs, unstable, ... }:

{
  imports = [
    ./user-pkgs.nix 
    ./starship.nix
    ./fish.nix
  ];

  home.username = "ericfrs";
  home.homeDirectory = "/home/ericfrs";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  dconf.settings = {
    "org/gnome/desktop/background" = {
      picture-uri = "file://${config.home.homeDirectory}/.config/wallpapers/wall01-l.png";
      picture-uri-dark = "file://${config.home.homeDirectory}/.config/wallpapers/wall01-d.png";
    };
  };

  programs.git = {
    enable = true;
    userName = "Eric A. Farias";
    userEmail = "erikofarias@gmail.com";
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    withNodeJs = true;
    withPython3 = true;
    package = unstable.neovim-unwrapped;
  };

  home.file.".config/nvim" = {
    source = builtins.fetchGit {
      url = "https://github.com/LazyVim/starter";
      rev = "803bc181d7c0d6d5eeba9274d9be49b287294d99";
    };
    recursive = true;
  };
}
