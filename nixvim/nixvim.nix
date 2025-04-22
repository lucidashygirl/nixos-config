{ inputs, ... }: {
  imports = [
    inputs.nixvim.nixosModules.nixvim
    ./config/default.nix
    ./config/bufferline.nix
  ];
  programs.nixvim.enable = true;
}
