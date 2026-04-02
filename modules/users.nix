{config, pkgs, ...}: 

{
    users.users.monuser = {
        isNormalUser = true;
        extraGroups = [ "wheel"
        "networkmanager"
        "audio"
        "video"
        "input"
        "docker"
      ];

         
    
        
    };
}
