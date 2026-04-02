{config, pkgs, ...}: 

{
    nixpkgs.config.allowUnfree = true;
    environment.systemPackages = with pkgs;
    [
      #Outils systeme
      vim
      nano
      git
      wget
      curl
      htop
      btop
      pciutils
      usbutils
      sublime4

      #Applications utilitaires
      firefox
      vlc
      nautilus
      
    ]
}