{ pkgs, ... }:

{
  # 1. Installation des pièces
  environment.systemPackages = with pkgs; [
    hyprlock
    hypridle
  ];

  # 2. Activation du service de sécurité (PAM)
  # Indispensable pour que hyprlock reconnaisse ton mot de passe !
  security.pam.services.hyprlock = {};

  # 3. Optionnel : Configuration par défaut ou fond d'écran
  # On peut aussi ajouter des services ici si besoin.
}
