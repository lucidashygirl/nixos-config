{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
    alsa-utils
    appimage-run
    btop
    ffmpeg
    fish
    git
    hyfetch
    imagemagick
    musikcube
    neovim
    nvtopPackages.amd
    p7zip
    pamixer
    scanmem
    tlrc
    unzip
    wget
    wiki-tui
    yt-dlp
    zellij
    zip
  ];
}
