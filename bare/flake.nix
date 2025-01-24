{
  inputs = {
    # We use nixos-unstable as it pulls our (nixOS) nixpkgs version.
    # That way we don't download another copy of nixpkgs.
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShell. x86_64-linux = pkgs.mkShell {
        # build time deps or shell hooks; run on buildPlatform's architecture
        nativeBuildInputs =  with pkgs; [];

        # stuff to link against, of hostPlatform's architecture
        buildInputs = with pkgs; [
          # runtime inputs
          # lua5_1
          unzip
        ];
      };
    };

}
