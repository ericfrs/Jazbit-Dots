{ config, pkgs, ... }:

{
  users.users.ericfrs = {
    shell = pkgs.fish;
    isNormalUser = true;
    description = "Eric";
    extraGroups = [ "networkmanager" "wheel" "video" "audio" ];
  };

  boot = {
    loader.systemd-boot.consoleMode = "max";

    kernelPackages = pkgs.linuxPackages_latest;

    kernel.sysctl = {
    "vm.swappiness" = 180;
    "vm.vfs_cache_pressure" = 50;
    "vm.watermark_boost_factor" = 0;
    "vm.watermark_scale_factor" = 125;
    "vm.page-cluster" = 0;
    };

    kernelParams = [
      "quiet"
      "mitigations=off"
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
    extraPackages = with pkgs; [
      intel-media-driver
      intel-vaapi-driver
      libvdpau-va-gl
      intel-ocl
    ];
    extraPackages32 = with pkgs.pkgsi686Linux; [
      intel-media-driver
      intel-vaapi-driver
      libvdpau-va-gl
    ];
  };

  environment.sessionVariables = {
    VDPAU_DRIVER = "va_gl";
  };
}
