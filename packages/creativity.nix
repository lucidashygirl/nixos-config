{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    #blender
    blender-hip
    audacity
    blockbench
    eureka-editor
    gimp
    godot
    kdePackages.kdenlive
    krita
    ldtk
    libreoffice-qt
    #lmms
    muse
    obs-studio
    tiled
  ];
}
