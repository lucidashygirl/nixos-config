{ lib, config, ... }: 
{
  options = {
    security.enable = lib.mkEnableOption "enable security services";
  };
  config = lib.mkIf config.security.enable {
    security = {
      rtkit.enable = true;
      polkit.enable = true;
    };
  };
}
