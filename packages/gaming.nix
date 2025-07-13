{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    blastem
    dolphin-emu
    dsda-doom
    dsda-launcher
    duckstation
    everest-mons
    gamemode
    gamescope
    lumafly
    lutris
    mangohud
    minetest
    owmods-cli
    prismlauncher
    protontricks
    r2modman
    ringracers
    #rpcs3
    vkd3d
    vkd3d-proton
  ];
}
