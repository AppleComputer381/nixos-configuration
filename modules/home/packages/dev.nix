{pkgs, ...}: 

{
    environment.systemPackages = with pkgs; [
        nixd
	polkit
	
        #python
        python3
        python312Packages.ipython
        python312Packages.pip
        python312Packages.envs
    ];    
}
