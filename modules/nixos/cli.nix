{ pkgs, ... }:

{
  services.openssh.enable = true;
  environment.systemPackages = with pkgs; [
    alacritty
    btop
    dust
    ffmpeg
    fish
    hyfetch
    imagemagick
    musikcube
    neovim
    nvtopPackages.amd
    pamixer
    scanmem
    tlrc
    unzip
    wget
    yt-dlp
    zellij
    zip
  ];
}
