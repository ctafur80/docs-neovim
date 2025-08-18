



{ pkgs ? import <nixpkgs> {} }:

let
    project_name = "Documentación sobre Neovim";
    message = "Entorno para ${project_name}.";
in
    pkgs.mkShell {
        buildInputs = with pkgs; [
            pandoc
            gnumake

            # haskellPackages.pandoc-crossref
            # haskellPackages.pandoc-csv2table


            # gemini-cli

            git

            gawk
            gnugrep
            fish
            starship
        ];


        shellHook = ''
            echo ${message}
            exec fish
            starship init fish | source
        '';
    }

