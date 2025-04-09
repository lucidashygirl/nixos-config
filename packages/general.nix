{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    feh
    kdePackages.ark
    kdePackages.kdeconnect-kde
    vlc
    wineWowPackages.waylandFull
    xfce.thunar
  ];
}
