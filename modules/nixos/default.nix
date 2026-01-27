{lib, ...}:
{
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./catppuccin.nix
    ./chat.nix
    ./cli.nix
    ./default.nix
    ./drawing.nix
    ./editing.nix
    ./file-management.nix
    ./fonts.nix
    ./gamedev.nix
    ./gaming.nix
    ./internet.nix
    ./modeling.nix
    ./music.nix
    ./networking.nix
    ./nix.nix
    ./power.nix
    ./programs.nix
    ./security.nix
    ./virtualization.nix
    ./wine.nix
    ./writing.nix
  ];
  gaming.enable = lib.mkDefault true;
}
