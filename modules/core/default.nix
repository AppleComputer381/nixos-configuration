{config,pkgs, ...}: 

{
  imports = [
    ./users.nix
    ./network.nix
    ./boot.nix
    ./locale.nix
  ];
  system.stateVersion = "26.05";
}