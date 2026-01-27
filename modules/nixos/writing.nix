{ pkgs, lib, config, ... }: 
{
  options = {
    writing.enable = lib.mkEnableOption "enable writing";
  };
  config = lib.mkIf config.writing.enable {
    environment.systemPackages = with pkgs; [
      libreoffice-qt
    ];
  };
}
