# Development environment
# You can enter it through `nix develop` or (legacy) `nix-shell`
{pkgs ? (import ./nixpkgs.nix) {}}: {
  default = pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
      just

      mongodb
      mongosh
      mongodb-tools
    ];

    # export MONGODB_HOME="$PWD/mongodb"
    shellHook = ''
      export MONGODB_HOME="$PWD/mongodb"
      export MONGODB_PORT=27017
    '';
  };
}
