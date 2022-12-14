# [Nix](https://nixos.org) based development environment using php -S (serve mode) for Linux and macOS
# For more installation options visit: https://nixos.org/manual/nix/stable/
#
# 1. Install Nix: `sh <(curl -L https://nixos.org/nix/install)`
# 2. Run command: `nix-shell`
# 3. Run composer commands ie. composer test:all

{ pkgs ? import <nixpkgs> {}}:

let
    myPhp = pkgs.php81.buildEnv {
        extensions = ({ enabled, all }: enabled ++ [ all.xdebug ] ++ [ all.apcu ]);
        extraConfig = ''
            memory_limit=256M
        '';
    };
in
pkgs.mkShell {
    packages = [
        myPhp
        myPhp.packages.composer
    ];

    shellHook = ''
        composer install
    '';
}