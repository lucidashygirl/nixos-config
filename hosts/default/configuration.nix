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

  keyboard-de-us.enable = true;
  
  time.timeZone = "America/New_York";
  system.stateVersion = "24.11";
}
