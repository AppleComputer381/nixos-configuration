{pkgs, ...}: 

{
  environment.systemPackages = with pkgs; [
    #editeur cli
    vim
    nano

    #outils systeme
    git
    wget
    curl
    pciutils
    usbutils
    github-cli
    tldr
    broot
    bat
    eza
    ripgrep
    fd
    jq
    xdg-utils
    polkit_gnome

    #visualisation
    htop
    btop
    tree
    lazygit
    yazi
    fastfetch

    #archives
    unzip
    unrar
    p7zip
    
    #ai
    gemini-cli

    #cloud
    google-cloud-sdk
    
    #commadlines
    kubectl
    kubernetes-helm
    docker
    docker-compose
    terraform
    terraform-docs
    
  ];    
}
