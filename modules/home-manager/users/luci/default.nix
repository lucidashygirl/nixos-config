{
  imports = [
    ./dotfiles
  ];

  users.users.luci = {
    name = "Luci";
    home = "/home/luci";
    extraGroups = [ "wheel" "docker" "audio" ];
  };

  services.xserver.xkb = {
    layout = "de";
    variant = "us";
    options = "grp:rctrl_ralt_toggle";
  };

  time.timeZone = "America/New_York";
}
