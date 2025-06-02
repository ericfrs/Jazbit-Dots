{ config, pkgs, ... }:

{
  users.users.ericfrs = {
    shell = pkgs.fish;
    isNormalUser = true;
    description = "Eric";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  boot.loader.systemd-boot.consoleMode = "max";
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernel.sysctl = {
    "vm.swappiness" = 180;
    "vm.vfs_cache_pressure" = 50;
    "vm.watermark_boost_factor" = 0;
    "vm.watermark_scale_factor" = 125;
    "vm.page-cluster" = 0;
  };

  boot = {
    kernelParams = [
      "quiet"
    ];
    
    consoleLogLevel = 3;
    
    plymouth.enable = true;
    plymouth.theme = "catppuccin-mocha";
    plymouth.themePackages = [ (pkgs.catppuccin-plymouth.override { variant = "mocha"; }) ];
  };

  zramSwap = {
    enable = true;
    memoryPercent = 50;
    algorithm = "zstd";
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
