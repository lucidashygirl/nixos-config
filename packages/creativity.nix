{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    blender
    blender-hip
    audacity
    blockbench
    eureka-editor
    gimp
    kdePackages.kdenlive
    krita
    ldtk
    libreoffice-qt
    lmms
    muse
    obs-studio
  ];
}
