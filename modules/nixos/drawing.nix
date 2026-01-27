{ pkgs, lib, config, ... }: 
{
  options = {
    drawing.enable = lib.mkEnableOption "enable drawing";
  };
  config = lib.mkIf config.gamedev.enable {
    environment.systemPackages = with pkgs; [
      gimp
      krita
    ];
  };
}
