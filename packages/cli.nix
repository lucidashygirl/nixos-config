{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
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
    tlrc
    unzip
    wget
    wiki-tui
    yt-dlp
    zellij
    zip
  ];
}
