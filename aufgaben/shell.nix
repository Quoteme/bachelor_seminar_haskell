{ pkgs ? import <nixpkgs> {} }:
let
  myHaskell = (pkgs.haskellPackages.ghcWithPackages (ps: with ps; [ base ]));
in
pkgs.mkShell {
  # nativeBuildInputs is usually what you want -- tools you need to run
  nativeBuildInputs = [ myHaskell ];
}
