{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    audacity
    blender
    blender-hip
    blockbench
    eureka-editor
    gimp
    inputs.nixpkgs-unstable.legacyPackages.${pkgs.system}.godot
    kdePackages.kdenlive
    krita
    ldtk
    libreoffice-qt
    lmms
    muse
    obs-studio
  ];
}
