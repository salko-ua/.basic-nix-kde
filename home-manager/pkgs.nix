{pkgs, ...}: {
  programs = {
    home-manager.enable = true;
    alacritty.enable = true;
    bash.enable = false;
    fish.enable = true;
    java.enable = true;
    spotify-player.enable = true;
    gh.enable = true;
    nix-index-database.comma.enable = true;
    btop.enable = true;
    direnv.nix-direnv.enable = true;
    direnv.enable = true;
  };
    
  home.sessionPath = ["$HOME/.local/bin"];

  home.packages = with pkgs; [
    # KDE THEME
    bibata-cursors
    papirus-icon-theme
    utterly-round-plasma-style

    qbittorrent # qbittorent
    vesktop # Discord
    telegram-desktop # Telegram
    bitwarden # bitwarden
    anydesk
    flatpak
    gnufdisk
    nvtopPackages.full

    # Dev
    poetry
    python312Packages.ipython
    python3

    # Tools
    lshw
    yt-dlp

    # IDE
    neovim

    #kde
    filelight
    kcalc

    # Office
    libreoffice-qt
    hunspell
    hunspellDicts.uk_UA
    hunspellDicts.en_US

    # widgets
    kdePackages.qtwebengine
    kdePackages.isoimagewriter
    dragon
    mangohud

    pavucontrol # Sound manager
    gnumake
    gcc
    git
    unzip
    fzf
    ripgrep

    # Minecraft
    prismlauncher
  ];
}
