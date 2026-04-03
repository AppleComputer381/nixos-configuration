{config,pkgs, ...}: 

{
  imports = [
    ./hosts/laptop/hardware-configuration.nix
    ./modules/home/default.nix
    ./modules/core/default.nix
  ];


}