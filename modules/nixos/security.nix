{ lib, config, ... }: 
{
  options = {
    security-services.enable = lib.mkEnableOption "enable security services";
  };
  config = lib.mkIf config.security-services.enable {
    security = {
      rtkit.enable = true;
      polkit.enable = true;
    };
  };
}
