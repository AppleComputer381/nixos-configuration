{config,pkgs, ...}: 

{
  imports = [
    ./hardware-configuration.nix
    ./modules/users.nix
    ./modules/desktop.nix
    ./modules/networking.nix
    ./modules/packages.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  system.stateVersion = "26.05";
}