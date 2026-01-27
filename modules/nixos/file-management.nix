{ pkgs, lib, config, ... }:

{
  options = {
    file-management.enable = lib.mkEnableOption "enable file management apps";
  };

  config = lib.mkIf config.file-management.enable {
    environment.systemPackages = with pkgs; [
      feh
      kdePackages.ark
      vlc
      thunar
      p7zip
      warp
      warpinator
    ];
  };
}
