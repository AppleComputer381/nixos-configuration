{config, pkgs, ...}: 

{
    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.permittedInsecurePackages = [
      "openssl-1.1.1w"
    ];
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
      swww
      grim
      slurp
      wl-clipboard
      github-cli
      #commadlines
      kubectl
      kubernetes-helm
      docker
      docker-compose


      #Applications utilitaires
      firefox
      vlc
      nautilus
      
    ];
}
