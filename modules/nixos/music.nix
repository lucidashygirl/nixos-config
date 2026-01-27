{ pkgs, lib, config, ... }: 
{
  options = {
    music.enable = lib.mkEnableOption "enable music";
  };
  config = lib.mkIf config.music.enable {
    environment.systemPackages = with pkgs; [
      lmms
      audacity
    ];
  };
}
