{
  users.users.luci = {
    isNormalUser = true;
    group = "Luci";
    home = "/home/luci";
    extraGroups = [ "wheel" "docker" "audio" ];
  };
}
