{ pkgs, lib, config, ... }:

{
  options = {
    chat.enable = lib.mkEnableOption "enable chat apps";
  };
  
  config = lib.mkIf config.chat.enable {
    environment = {
      systemPackages = with pkgs; [
        signal-desktop-bin
        simplex-chat-desktop
        element-desktop
        vesktop
      ];
      sessionVariables = {
        WLR_RENDERER = "vulkan"; # Fixes element-desktop flickering
      };
    };
  };
}
