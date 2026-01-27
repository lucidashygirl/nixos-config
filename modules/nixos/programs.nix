{ pkgs, lib, config, ... }: {
  options = {
    programs.enable = lib.mkEnableOption "enables appimage and nix-ld";
  };

  config = lib.mkIf config.programs.enable {
    services.flatpak.enable = true;
    programs = {
      appimage = {
        enable = true;
        binfmt = true;
      };
      nix-ld.enable = true;
      gnupg.agent = {
        enable = true;
        pinentryPackage = with pkgs; pinentry-qt;
        enableSSHSupport = true;
      };
    };
  };
}
