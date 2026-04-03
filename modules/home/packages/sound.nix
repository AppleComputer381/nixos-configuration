{pkgs, ...}: 
{
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;      # compatibilité PulseAudio
    wireplumber.enable = true; # session manager
  };
    environment.systemPackages = with pkgs; [
       pavucontrol
    ];    
}
