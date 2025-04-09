{
  networking = {
    networkmanager.enable = true;
    firewall.allowedTCPPortRanges = [{
      from = 1714;
      to = 1764;
    }];
    firewall.allowedUDPPorts = [ 51820 ];
  };
}
