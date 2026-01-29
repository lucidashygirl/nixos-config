{ pkgs, lib, config, ... }: {
  options = {
    programs.enable = lib.mkEnableOption "enables support for running other packages";
  };

  config = lib.mkIf config.programs.enable {
    services.flatpak.enable = true;
    programs = {
      appimage = {
        enable = true;
        binfmt = true;
      };
      nix-ld.enable = true;
    };
  };
}
