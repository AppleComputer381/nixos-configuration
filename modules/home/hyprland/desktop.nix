{config, pkgs, ...}: 

{
    imports = [
      ./packages.nix
    ];
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
    };

    environment.sessionVariables = {
     NIXOS_OZONE_WL = "1";
     XCURSOR_THEME = "Bibata-Modern-Ice";
	   XCURSOR_SIZE = "24";
    };
    programs.regreet = {
    enable = false;
    settings = {
      background = {
        path = "./config/wallpapers/wallpaper.jpg"; 
        fit = "Cover";
      };
      appearance = {
        greeting = "Prêt à piloter ?";
      };
    };
  };
    services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --remember-session --asterisks --cmd hyprland";
        user = "greeter";
      };
    };
  };

    i18n.consoleUseXkbConfig = true;

    xdg.portal = {
      enable = true;
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
      ];
    };
    programs.regreet.settings.appearance.cursor_theme_name = "Bibata-Modern-Ice";

    qt.enable = true;
    qt.platformTheme = "gtk2";
    qt.style = "gtk2";

    # Symlink automatique de hyprland.conf vers ~/.config/hypr/
    systemd.tmpfiles.rules = [
      "d /home/emilienb/.config/hypr 0755 emilienb users -"
      "L+ /home/emilienb/.config/hypr/hyprland.conf - - - - ${./config/hyprland.conf}"
    ];
}