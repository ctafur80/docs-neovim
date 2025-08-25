


{ pkgs ? import <nixpkgs> {} }:

let
    message = "Apuntes de Neovim.";
in
    pkgs.mkShell {
        buildInputs = with pkgs; [
            pandoc
            # pandoc-crossref

            gnumake
            git

            bash-completion
            gnused
            gawk
            gnugrep
            starship
        ];
        shellHook = ''
            echo ${message}
            alias ls="ls --color"
            eval $(starship init bash)
        '';
    }



