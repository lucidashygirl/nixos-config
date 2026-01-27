{ lib, config, ... }: 
{
  options = {
    networking.enable = lib.mkEnableOption "enable network manager";
  };
  config = lib.mkIf config.networking.enable {
    networking = {
      networkmanager.enable = true;
    };
  };
}
