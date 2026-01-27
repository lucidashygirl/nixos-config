{ pkgs, lib, ...}:
{
  imports = [
    ./hardware-configuration.nix
  ];

  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      download-buffer-size = 524288000;
    };
    gc.automatic = true;
  };
  system.stateVersion = "24.11";
}
