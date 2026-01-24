{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    #blender
    pkgsRocm.blender
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
    #muse
    obs-studio
    tiled
  ];
}
