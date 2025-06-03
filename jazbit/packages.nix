{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    libva-utils
    vdpauinfo
    glxinfo
    intel-gpu-tools
    htop
    powertop
    iw
    pciutils
    usbutils
    brave
    fastfetch
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
    google-chrome
  ];
}
