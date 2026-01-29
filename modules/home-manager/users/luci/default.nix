{ inputs, ... }: {
  programs.home-manager.enable = true;
  imports = [ ./dotfiles inputs.nixvim.homeModules.nixvim ];
  home.stateVersion = "24.11";

  users.users.luci = {
    isNormalUser = true;
    description = "Luci";
    home = "/home/luci";
    extraGroups = [ "wheel" "docker" "audio" ];
  };
}
