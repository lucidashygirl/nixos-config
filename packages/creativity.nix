{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    inputs.nixpkgs-unstable.legacyPackages.${pkgs.system} [
      blender
      blender-hip
    ]
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
