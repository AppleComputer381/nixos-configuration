{config, pkgs, ...}: 

{
    users.users.emilienb = {
        isNormalUser = true;
        extraGroups = [ 
        "wheel"
        "networkmanager"
        "audio"
        "video"
        "input"
        "docker"
      ];

      shell = pkgs.zsh;  
    };
    nix.settings.trusted-users = ["root" "emilienb" ];
}
