{ pkgs, lib, config, ...}:
{
  options = {
    gnupg-agent.enable = lib.mkEnableOption "enable gnupg";
  };
  gnupg.agent = lib.mkIf config.gnupg-agent.enable {
    enable = true;
    pinentryPackage = with pkgs; pinentry-qt;
    enableSSHSupport = true;
  };
}
