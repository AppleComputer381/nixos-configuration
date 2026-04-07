{pkgs, ...}: 

{
    environment.systemPackages = with pkgs; [
        #multimedia
        vlc
        
        
        #bureautique
        libreoffice
        gnome-calculator

        #communication
        discord
        signal-desktop
        
        #navigateur
        firefox
        
        #utilitaire
        nautilus
        

        #editeur de texte
        sublime4
	antigravity
    ];    
}
