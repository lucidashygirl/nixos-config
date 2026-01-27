{ lib, config, ... }: 
{
  options = {
    networking-service.enable = lib.mkEnableOption "enable network manager";
  };
  config = lib.mkIf config.networking-service.enable {
    networking = {
      networkmanager.enable = true;
    };
  };
}
