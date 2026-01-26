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
    warp
    warpinator
    wl-clipboard
    xwayland

    qt6Packages.qt6ct
    catppuccin-qt5ct
  ];
}
