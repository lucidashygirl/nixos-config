{lib, config, ...}: 
{
  options = {
    keyboard-de-us.enable = lib.mkEnableOption "enable Deutsche US keyboard layout";
  };
  config = lib.mkIf config.keyboard-de-us.enable {
    services.xserver.xkb = {
      layout = "de";
      variant = "us";
      options = "grp:rctrl_ralt_toggle";
    };
  };
}
