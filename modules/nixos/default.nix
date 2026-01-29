{lib, ...}:
{
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./catppuccin.nix
    ./chat.nix
    ./cli.nix
    ./desktop.nix
    ./docker.nix
    ./drawing.nix
    ./editing.nix
    ./file-management.nix
    ./fonts.nix
    ./gamedev.nix
    ./gaming.nix
    ./gnupg.nix
    ./internet.nix
    ./keyboard
    ./modeling.nix
    ./music.nix
    ./networking.nix
    ./power.nix
    ./programs.nix
    ./security.nix
    ./wine.nix
    ./writing.nix
  ];

  audio.enable = lib.mkDefault true;
  bluetooth.enable = lib.mkDefault true;
  boot-util.enable = lib.mkDefault true;
  catppuccin.enable = lib.mkDefault true;
  chat.enable = lib.mkDefault true;
  cli.enable = lib.mkDefault true;
  desktop.enable = lib.mkDefault true;
  docker.enable = lib.mkDefault true;
  drawing.enable = lib.mkDefault true;
  editing.enable = lib.mkDefault true;
  file-management.enable = lib.mkDefault true;
  extra-fonts.enable = lib.mkDefault true;
  gamedev.enable = lib.mkDefault true;
  gaming.enable = lib.mkDefault true;
  gnupg-agent.enable = lib.mkDefault true;
  internet.enable = lib.mkDefault true;
  modeling.enable = lib.mkDefault true;
  music.enable = lib.mkDefault true;
  networking-service.enable = lib.mkDefault true;
  power-profile.enable = lib.mkDefault true;
  programs.enable = lib.mkDefault true;
  security-services.enable = lib.mkDefault true;
  wine.enable = lib.mkDefault true;
  writing.enable = lib.mkDefault true;
}
