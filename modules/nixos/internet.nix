{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    librewolf
    wiki-tui
  ];
}
