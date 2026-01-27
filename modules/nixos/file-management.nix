{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    feh
    kdePackages.ark
    vlc
    thunar
    p7zip
    warp
    warpinator
  ];
}
