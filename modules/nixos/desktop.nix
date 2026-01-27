{ pkgs, lib, config, ...}:
{
  options = {
    desktop.enable = lib.mkEnableOption "enables desktop";
  };

  config = lib.mkIf config.desktop.enable {
    sway.enable = true;
    printing.enable = true;
    environment.systemPackages = with pkgs; [
      dunst
      grim
      pavucontrol
      rofi-power-menu
      rofi
      slurp
      wayland
      # find a better place for these
      #warp
      #warpinator
      wl-clipboard
      xwayland
    ];

    environment = {
      sessionVariables = {
        WLR_RENDERER = "vulkan"; # Fixes element-desktop flickering
      };
    };
  };
}
