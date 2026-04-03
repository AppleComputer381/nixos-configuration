{config, pkgs, ...}: 

{
    import = [
      ./packages.nix
    ];
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
    };

    environment.sessionVariables = {
     NIXOS_OZONE_WL = "1";
    };
    programs.regreet = {
    enable = false;
    settings = {
      background = {
        path = "/home/monuser/Images/wallpapers/wallpaper.jpg"; 
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
    programs.regreet.settings.appearance.cursor_theme_name = "Bibata-modern-Ice";
    environment.sessionVariables = {
	  XCURSOR_THEME = "Bibata-Modern-Ice";
	  XCURSOR_SIWE = "24";
    };
    qt.enable = true;
    qt.platformTheme = "gtk2";
    qt.style = "gtk2";

    
    home.file.".config/hypr/hyprland.conf".source = ./config/hyprland.conf;