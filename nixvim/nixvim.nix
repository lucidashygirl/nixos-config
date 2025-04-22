{ inputs, ... }: {
  imports = [
    inputs.nixvim.nixosModules.nixos
    ./config/default.nix
    ./config/bufferline.nix
  ];
  programs.nixvim.enable = true;
}
