{ pkgs, lib, config, ... }: 
{
  options = {
    extra-fonts.enable = lib.mkEnableOption "enable fonts";
  };

  config = lib.mkIf config.extra-fonts.enable {
    fonts.packages = with pkgs; [ font-awesome maple-mono.NF open-dyslexic ];
  };
}
