{ inputs, ... }: {
  programs.home-manager.enable = true;
  imports = [ ./users inputs.nixvim.homeModules.nixvim ];
  home.stateVersion = "24.11";
}
