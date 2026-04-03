{config, pkgs, ...}: 

{
   

environment.systemPackages = with pkgs;
    [
     kitty
     waybar
     dunst
     libnotify
     rofi
     swww
     networkmanagerapplet 

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