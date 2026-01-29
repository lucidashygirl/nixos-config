{ inputs, ... }: {
  programs.home-manager.enable = true;
  imports = [ ./users ./dotfiles inputs.nixvim.homeModules.nixvim ];
  home.stateVersion = "24.11";

  users.users.luci = {
    isNormalUser = true;
    description = "Luci";
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
