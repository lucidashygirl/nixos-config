{
  users.users = {
    luci = {
      isNormalUser = true;
      description = "Luci";
      home = "/home/luci";
      extraGroups = [ "wheel" "docker" "audio" ];
    };
    guest = {
      isNormalUser = true;
      description = "Guest";
      home = "/home/guest";
    };
  };
}
