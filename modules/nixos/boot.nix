{ pkgs, lib, config, ... }:
{
  options = {
    boot.enable = lib.mkEnableOption "enable boot config";
  };

  config = lib.mkIf config.boot.enable {
    boot = {
      loader = {
        systemd-boot.enable = true;
        efi.canTouchEfiVariables = true;
      };
      kernelPackages = pkgs.linuxPackages_latest;
      initrd.kernelModules = [ "amdgpu" ];
    };
  };
}
