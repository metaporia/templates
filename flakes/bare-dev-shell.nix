{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShell. x86_64-linux = pkgs.mkShell {
        buildInputs = with pkgs; [
          # runtime inputs
          lua5_1
          unzip
        ];
      };
    };

}
