{ inputs, ... }: {
  programs.home-manager.enable = true;
  imports = [ ./nixvim inputs.nixvim.homeManagerModules.nixvim ];
  home.stateVersion = "24.11";
}
