{ inputs, ... }: {
  programs.home-manager.enable = true;
  imports = [ ./nixvim inputs.nixvim.homeManagerModules.nixvim ];
}
