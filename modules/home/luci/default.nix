{
  users.users.luci = {
    isNormalUser = true;
    name = "Luci";
    home = "/home/luci";
    extraGroups = [ "wheel" "docker" "audio" ];
  };
}
