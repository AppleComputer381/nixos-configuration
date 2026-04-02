{config, pkgs, ...}: 

{
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
    };

    environment.sessionVariables = {
     NIXOS_OZONE_WL = "1";
    };

    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };

    xdg.portal = {
      enable = true;
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
      ];
    };

    environment.systemPackages = with pkgs;
    [
     kitty
     waybar
     dunst
     libnotify
     rofi-wayland
     swww
     networkmanagerapplet 

     #dependances Hyprland
     grim
     slurp
     wl-clipboard
     brightnessctl

     
    ];

    fonts.packages = with pkgs;
    [
      nerdfonts
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
    ];
}