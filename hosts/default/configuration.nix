{ pkgs, lib, ...}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules
  ];

  gaming.enable = true;
  system.stateVersion = "24.11";
}
