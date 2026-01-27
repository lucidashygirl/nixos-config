{ pkgs, lib, config, ... }: 
{
  options = {
    drawing.enable = lib.mkEnableOption "enable drawing";
  };
  config = lib.mkIf config.drawing.enable {
    environment.systemPackages = with pkgs; [
      gimp
      krita
    ];
  };
}
