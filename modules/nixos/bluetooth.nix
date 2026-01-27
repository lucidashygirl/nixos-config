{ pkgs, lib, config, ... }:
{
  options = {
    bluetooth.enable = lib.mkEnableOption "enable bluetooth";
  };
  config = lib.mkIf config.bluetooth.enable {
    hardware.bluetooth.enable = true;
    environment.systemPackages = with pkgs; [
      bluetui
      bluez
    ];
  };
}
