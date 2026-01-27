{
  imports = [
    ./dotfiles
  ];

  home = {
    username = "Luci";
    homeDirectory = "/home/luci";
    extraGroups = [ "wheel" "docker" "audio" ];
  };

  services.xserver.xkb = {
    layout = "de";
    variant = "us";
    options = "grp:rctrl_ralt_toggle";
  };

  time.timeZone = "America/New_York";
}
