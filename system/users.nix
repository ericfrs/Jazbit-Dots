{ config, pkgs, ... }:

{
  users.users.ericfrs = {
    shell = pkgs.fish;
    isNormalUser = true;
    description = "Eric";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
