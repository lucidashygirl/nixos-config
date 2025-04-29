{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    feh
    kdePackages.ark
    kdePackages.kdeconnect-kde
    vlc
    xfce.thunar
    inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.wineWowPackages.waylandFull
  ];
}
