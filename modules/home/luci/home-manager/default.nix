{ inputs, ...}:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./nixvim
    #./sway
    ./alacritty.nix
    ./git.nix
  ];
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
