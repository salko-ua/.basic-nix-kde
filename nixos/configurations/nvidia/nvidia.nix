{
  config,
  pkgs,
  ...
}: {
  # Environment variables 
  
  # Force wayland when possible 
  environment.sessionVariables.NIXOS_OZONE_WL = "1"; 

  # Fix disappearing cursor on Hyprland 
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";
  
  # Enable NVIDIA 
  services.xserver.videoDrivers = ["nvidia"];
  hardware.graphics = { 
     enable = true;  
   }; 

  hardware.nvidia = {
    open = true;
    nvidiaSettings = true;
    nvidiaPersistenced = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}
