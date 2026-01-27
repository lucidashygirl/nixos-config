{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWowPackages.waylandFull
  ];
}
