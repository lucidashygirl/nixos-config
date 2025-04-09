{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    audacity
    blender
    blender-hip
    blockbench
    eureka-editor
    gimp
    godot_4
    inkscape
    kdePackages.kdenlive
    krita
    ldtk
    libreoffice-qt
    lmms
    muse
    obs-studio
  ];

}
