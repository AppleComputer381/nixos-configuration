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
        path = toString ./config/wallpapers/wallpaper.jpg; 
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
    system.activationScripts.hyprlandConfig=''
	mkdir -p /home/emilienb/.config/hypr
	cp ${./config/hyprland.conf} /home/emilienb/.config/hypr/hyprland.conf
	chown emilienb:users /home/emilienb/.config/hypr/hyprland.conf
	
	mkdir -p /home/monuser/.config/rofi
      	ln -sfn /etc/nixos/modules/rofi/config.rasi /home/monuser/.config/rofi/config.rasi
      	chown -R monuser:users /home/monuser/.config/rofi
	'';
}
