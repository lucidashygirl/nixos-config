{ inputs, ... }: {
  programs.home-manager.enable = true;
  imports = [ ./dotfiles inputs.nixvim.homeModules.nixvim ];
  home.stateVersion = "24.11";
}
