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

    } // official-templates.templates;

  };
}
