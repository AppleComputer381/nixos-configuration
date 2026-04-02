{config, pkgs, ...}: 

{
  programs.zsh = {
    enable = true;

    ohMyZsh = {
      enable = true;
      plugins = [ 
        "git" 
        "sudo"
        "kubectl"
        "helm"
        "docker"
        "sublime"
        "extract"
      ];
      theme = "";
    };

    promptInit = builtins.readFile ./neo.zsh-theme/neo.zsh-theme;
    shellAliases = {
    ll = "ls -l";
    update = "sudo nixos-rebuild switch"; 
    }; 
  };
  users.defaultUserShell = pkgs.zsh;     
}
