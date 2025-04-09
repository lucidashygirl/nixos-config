{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    element-desktop
    librewolf-bin
    vesktop
  ];
}
