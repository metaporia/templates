{
  description = "Personal templates";

  inputs = {
    official-templates.url = "github:NixOS/templates";
  };

  outputs = { self, official-templates, ... }: {

    templates = {
      rust-dev = {
        path = ./rust-dev;
        description = "Rust dev shell with rust-overlay & flake-utils";
      };

      bare = {
        path = ./bare;
        description = "Bare dev shell";
      };

    }; 
    # // official-templates.templates;

    # run after initialization 
    # nix flake update --override-input nixpkgs "github:nixos/nixpkgs/$(nixos-version --revision)"

  };
}
