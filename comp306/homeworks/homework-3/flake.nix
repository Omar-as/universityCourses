{
  description = "COMP306 Homework 3";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    jupyenv.url = "github:tweag/jupyenv";
  };

  outputs = {
    self,
    nixpkgs,
    jupyenv,
  }: let
    inherit (self) outputs;
    forAllSystems = nixpkgs.lib.genAttrs [
      "aarch64-linux"
      "aarch64-darwin"
      "x86_64-darwin"
      "x86_64-linux"
    ];
    mkPkgs = system:
      import nixpkgs {
        inherit system;
        # config.allowUnfree = true;
        overlays = [
          # Add overlays our own flake exports (from overlays and pkgs dir):
          outputs.overlays.modifications
          outputs.overlays.additions
        ];
      };
  in {
    # Custom packages
    # Acessible through `nix build` and `nix shell`
    packages = forAllSystems (system:
      import ./pkgs {
        pkgs = mkPkgs system;
      });
    # Development environment
    # Acessible through `nix develop`
    devShells = forAllSystems (system:
      import ./shell.nix {
        pkgs = mkPkgs system;
      });

    apps = forAllSystems (system: let
      jupyterlab = jupyenv.lib.${system}.mkJupyterlabNew ({...}: {
        inherit nixpkgs;
        imports = [(import ./kernels.nix)];
      });
    in {
        default.program = "${jupyterlab}/bin/jupyter-lab";
        default.type = "app";
      }
    );

    # Custom packages and modifications, exported as overlays
    overlays = import ./overlays;

    # Nix files formatter (alejandra, nixfmt or nixpkgs-fmt)
    # Run with `nix fmt`
    formatter = forAllSystems (
      system: let
        pkgs = mkPkgs system;
      in
        pkgs.alejandra
    );
  };
}
