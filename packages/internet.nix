{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    signal-desktop-bin
    simplex-chat-desktop
    element-desktop
    librewolf
    vesktop
  ];
}
