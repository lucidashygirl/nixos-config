{ pkgs, lib, config, ... }: 
{
  options = {
    music.enable = lib.mkEnableOption "enable music";
  };
  config = lib.mkIf config.gamedev.enable {
    environment.systemPackages = with pkgs; [
      lmms
      audacity
    ];
  };
}
