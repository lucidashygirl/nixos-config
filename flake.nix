{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.follows = "nixpkgs";
    # nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      system = "x86_64-linux";
      modules = [
        ./config/config.nix
        ./packages/packages.nix
        ./hardware-configuration.nix
        ./nixvim/nixvim.nix
      ];
    };
  };
}
