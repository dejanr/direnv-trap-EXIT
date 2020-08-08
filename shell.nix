let
  sources = import ./nix/sources.nix;
  nixpkgs = sources.nixpkgs;
  pkgs = import nixpkgs { };
in pkgs.mkShell {
  name = "direnv-shell";

  shellHook = ''
    trap "echo trap called?" EXIT
  '';
}
