{pkgs, ...}: 

{
    environment.systemPackages = with pkgs; [
        nixd

        #python
        python3
        python312Packages.ipython
        python312Packages.pip
        python312Packages.venv
    ];    
}