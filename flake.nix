{
  description = "Short minification formatter!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      overlays = [ ];
      pkgs = import nixpkgs {
        inherit overlays;
        system = "x86_64-linux";
      };

      mini-format = pkgs.buildNpmPackage {
        pname = "mini-format";
        version = "0.1.0";

        src = ./.;

        npmDepsHash = "sha256-yB76GN5QXnjQ4k0HjY7sKpOzMMUZnGEbob3McoD13D0=";

        # Disable the build phase since we don't have a build script
        dontNpmBuild = true;

        meta = with pkgs.lib; {
          description = "A TypeScript/JavaScript minification formatter using esbuild";
          license = licenses.mit;
          platforms = platforms.linux;
        };
      };
    in
    {
      packages.x86_64-linux = {
        default = mini-format;
        mini-format = mini-format;
      };

      devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = [
          pkgs.nodejs
          pkgs.npm
        ];
        nativeBuildInputs = [ pkgs.typescript-language-server ];
      };

      formatter.x86_64-linux = pkgs.nixfmt-rfc-style;
    };
}
