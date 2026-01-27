{ pkgs, lib, ...}:
{
  imports = [
    ./hardware-configuration.nix
  ];

  audio.enable = true;
  bluetooth.enable = true;
  boot-util.enable = true;
  catppuccin.enable = true;
  chat.enable = true;
  cli.enable = true;
  desktop.enable = true;
  docker.enable = true;
  drawing.enable = true;
  editing.enable = true;
  file-management.enable = true;
  extra-fonts.enable = true;
  gamedev.enable = true;
  gaming.enable = true;
  internet.enable = true;
  modeling.enable = true;
  music.enable = true;
  networking-service.enable = true;
  power-profile.enable = true;
  programs.enable = true;
  security-services.enable = true;
  wine.enable = true;
  writing.enable = true;

  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      download-buffer-size = 524288000;
    };
    gc.automatic = true;
  };
  system.stateVersion = "24.11";
}
