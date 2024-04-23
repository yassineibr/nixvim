{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixneovimplugins.url = "github:NixNeovim/NixNeovimPlugins";
  };

  outputs = {
    self,
    nixvim,
    flake-parts,
    nixpkgs,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
      ];

      # Hydra Jobs
      flake = {
        hydraJobs = {
          inherit (self) packages;
        };
      };

      perSystem = {
        pkgs,
        system,
        ...
      }: let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [inputs.nixneovimplugins.overlays.default];
        };

        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit pkgs;
          module = import ./config; # import the module directly
          # You can use `extraSpecialArgs` to pass additional arguments to your module files
          extraSpecialArgs = {
            # inherit (inputs) foo;
          };
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
      in {
        checks = {
          # Run `nix flake check .` to verify that your config is not broken
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };

        packages = {
          # Lets you run `nix run .` to start nixvim
          default = nvim;
        };
      };
    };
}
