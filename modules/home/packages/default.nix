{pkgs, ...}: 
{
    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.permittedInsecurePackages = [
      "openssl-1.1.1w"
    ];

    imports = [
        ./cli.nix
        ./dev.nix
        ./gui.nix
        ./sound.nix
    ];    
}