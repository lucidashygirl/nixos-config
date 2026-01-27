{ pkgs, lib, config, ... }: 
{
  options = {
    editing.enable = lib.mkEnableOption "enable editing";
  };
  config = lib.mkIf config.editing.enable {
    environment.systemPackages = with pkgs; [
      audacity
      kdePackages.kdenlive
      obs-studio
    ];
  };
}
