{
  users.users.luci = {
    isNormalUser = true;
    description = "Luci";
    home = "/home/luci";
    extraGroups = [ "wheel" "docker" ];
  };
}
