{ pkgs, ... }:
{
  programs = {
    partition-manager.enable = true;
    kdeconnect.enable = true;
  };
  

  environment = {
    sessionVariables = {
      FLAKE = "/home/ryxes/.basic-nix-kde";
    };  
    systemPackages = with pkgs; [
      home-manager # Generations manager
      nh
    ];
  };

}

