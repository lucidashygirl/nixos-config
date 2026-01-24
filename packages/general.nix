{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    feh
    kdePackages.ark
    kdePackages.kdeconnect-kde
    vlc
    thunar
    wineWowPackages.waylandFull
    bluez
  ];
}
