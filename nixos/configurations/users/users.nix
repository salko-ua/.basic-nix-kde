{pkgs, ...}: {
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
  networking.hostName = "ryxes";

  users.users = {
    ryxes = {
      initialPassword = "539410";
      isNormalUser = true;
      extraGroups = ["wheel" "docker"];
    };
  };
}
