{
  description = "Lua library for incrementing an arbitrary precision counter";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
  {

    devShell.${system} = pkgs.mkShell {
      buildInputs = with pkgs; [
        lua
      ];
    };
  };
}
