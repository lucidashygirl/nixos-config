{
  boot.loader = rec {
    systemd-boot.enable = true;
    canTouchEfiVariables = true;
  };
}
