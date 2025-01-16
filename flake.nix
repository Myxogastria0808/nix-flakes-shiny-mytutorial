{
  description = "r flake sample";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    inputs:
    inputs.flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = inputs.nixpkgs.legacyPackages.${system};
        rpkgs = with inputs.nixpkgs.legacyPackages.${system}.rPackages; [
          ggplot2
          ggsci
          shiny
        ];
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [ R ] ++ rpkgs;
          shellHook = ''
            Rscript ./src/run.R
          '';
        };
      }
    );
}
