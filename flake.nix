{
  description = "Help :')";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    lazyvim-starter = {
      url = "github:LazyVim/starter";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, home-manager, lazyvim-starter, ... }@inputs: {
    nixosConfigurations.jazbit = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        home-manager.nixosModules.default
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.ericfrs = import ./jazbit/home.nix;
          home-manager.extraSpecialArgs = {
            inherit lazyvim-starter;
          };
        }
      ];
    };
  };
}
