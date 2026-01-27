{ pkgs, lib, config, ... }:

{
  options = {
    cli.enable = lib.mkEnableOption "enable cli apps";
  };

  config = lib.mkIf config.cli.enable {
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
  };
}
