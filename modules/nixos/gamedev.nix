{ pkgs, lib, config, ... }: 
{
  options = {
    gamedev.enable = lib.mkEnableOption "enable gamedev";
  };

  config = lib.mkIf config.gamedev.enable {
    environment.systemPackages = with pkgs; [
      godot
      ldtk
      tiled
    ];
  };
}
