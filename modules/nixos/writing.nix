{ pkgs, lib, config, ... }: 
{
  options = {
    writing.enable = lib.mkEnableOption "enable writing";
  };
  config = lib.mkIf config.gamedev.enable {
    environment.systemPackages = with pkgs; [
      libreoffice-qt
    ];
  };
}
