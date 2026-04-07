{config, pkgs, ...}: 


let
	web-search = pkgs.writeShellScriptBin "web-search" (builtins.readFile ../scripts/web-search.sh);
	mytranslate  = pkgs.writeShellScriptBin "mytranslate" (builtins.readFile ../scripts/translate.sh);

in   
{
environment.systemPackages = with pkgs;
    [
     hyprpaper
     kitty
     waybar
     dunst
     libnotify
     rofi
     web-search
     mytranslate
     swww
     networkmanagerapplet 
     brightnessctl
     #dependances Hyprland
     grim
     slurp
     wl-clipboard
     brightnessctl
     greetd.tuigreet

     
    ];

    fonts.packages = with pkgs;[
      nerd-fonts.fira-code
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
    ];
}
