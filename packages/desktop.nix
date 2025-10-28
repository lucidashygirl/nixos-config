{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    dunst
    grim
    pavucontrol
    qt6Packages.qt6ct
    rofi-power-menu
    rofi
    signal-desktop-bin
    slurp
    wayland
    wl-clipboard
    xwayland
  ];
}
