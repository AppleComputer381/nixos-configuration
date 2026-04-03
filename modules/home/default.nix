{pkgs, ...}: 

{
    imports = [
        ./packages/default.nix
        ./hyprland/desktop.nix
        ./shell/shell.nix
        ./locks/lock.nix
    ];    
}
