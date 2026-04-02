{config, pkgs, ...}: 

{
    networking.hostName = "Thinkpad";

    networking.networkmanager.enable = true;
    services.openssh = {
      enable = true;
      settings.PasswordAuthentication = true;
      PermitRootLogin = "no";
    }
}