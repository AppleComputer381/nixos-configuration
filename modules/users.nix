{config, pkgs, ...}: 

{
    users.users.emilienb = {
        isNormalUser = true;
        extraGroups = [ "wheel"
        "networkmanager"
        "audio"
        "video"
        "input"
        "docker"
      ];

      openssh.enable = true;
      
    
        
    };
}