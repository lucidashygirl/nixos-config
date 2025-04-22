{ inputs, ... }: {
  imports = [
    ./cli.nix
    ./creativity.nix
    ./desktop.nix
    ./dev.nix
    ./fonts.nix
    ./gaming.nix
    ./general.nix
    ./internet.nix
    ./non-free.nix
    inputs.nixvim.nixosModules.nixvim
  ];
}
