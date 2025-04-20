{
  boot.loader = rec {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
}
