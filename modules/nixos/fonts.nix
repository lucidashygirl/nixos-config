{ pkgs, lib, config, ... }: 
{
  options = {
    fonts.enable = lib.mkEnableOption "enable fonts";
  };

  config = lib.mkIf config.fonts.enable {
    fonts.packages = with pkgs; [ font-awesome maple-mono.NF open-dyslexic ];
  };
}
