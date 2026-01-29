{ pkgs, lib, config, ...}:
{
  options = {
    gnupg-agent.enable = lib.mkEnableOption "enable gnupg";
  };
  config = lib.mkIf config.gnupg-agent.enable {
    programs.gnupg.agent = {
      enable = true;
      pinentryPackage = with pkgs; pinentry-qt;
      enableSSHSupport = true;
    };
  };
}
