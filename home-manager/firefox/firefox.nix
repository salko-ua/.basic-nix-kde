{
  pkgs,
  lib,
  ...
}:
{
  imports = [ ./ublock-origin.nix ];

  programs.firefox = {
    enable = true;
    profiles = {
      ryxes = {
        settings = {
          "browser.sessionstore.max_resumed_crashes" = -1;
        };
      };
    };
  };

}
