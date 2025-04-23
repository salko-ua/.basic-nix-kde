{
  config,
  pkgs,
  ...
}: {
  hardware = {
    graphics.enable = true;
    nvidia = {
      open = false; # GPU too old
      nvidiaPersistenced = true;
    };
  };
  environment.systemPackages = with pkgs; [
    nvtopPackages.nvidia
  ];
  services.xserver.videoDrivers = ["nvidia"];
}
