{ pkgs, ... }:
{
  programs = {
    partition-manager.enable = true;
    kdeconnect.enable = true;
  };
  

  environment = {
    sessionVariables = {
      FLAKE = "/home/ryxes/.dotfiles";
    };  
    systemPackages = with pkgs; [
      home-manager # Generations manager
      nh
    ];
  };

}

