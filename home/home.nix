{ inputs, ... }: {
  programs.home-manager.enable = true;
  imports = [ ./dotfiles inputs.nixvim.homeManagerModules.nixvim ];
  home.stateVersion = "24.11";
}
