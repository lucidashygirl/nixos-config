{ pkgs, lib, config, ... }:

{
  options = {
    internet.enable = lib.mkEnableOption "enable web browser";
  };

  config = lib.mkIf config.internet.enable {
    environment.systemPackages = with pkgs; [
      librewolf
    ];
  };
}
