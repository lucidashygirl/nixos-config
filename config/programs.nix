{ pkgs, ... }: {
  programs = {
    nix-ld.enable = true;
    sway.enable = true;
    steam.enable = true;
    gnupg.agent = {
      enable = true;
      pinentryPackage = with pkgs; pinentry-qt;
      enableSSHSupport = true;
    };
  };
}
