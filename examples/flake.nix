{
  description = "Beispielcodes für die Vorstellung";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:numtide/flake-utils";
    };
  };

  outputs = { self, nixpkgs, flake-utils, ... }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
        rec {
          devShells.default = pkgs.mkShell {
            buildInputs = [ 
              (haskellPackages.ghcWithPackages (hpkgs: with hpkgs; [
                # No packages added yet
              ])) 
            ];
          };
        }
      );
}
