{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    archipelago
    blastem
    dolphin-emu
    dsda-doom
    dsda-launcher
    everest-mons
    gamemode
    gamescope
    lumafly
    #lutris
    mangohud
    mgba
    luanti
    owmods-cli
    prismlauncher
    protontricks
    r2modman
    ringracers
    rpcs3
    vkd3d
    vkd3d-proton
    zsnes
  ];

  nixpkgs.config.packageOverrides = pkgs: {
    rpcs3 = pkgs.callPackage ./overrides/rpcs3/default.nix { };
  };
}
