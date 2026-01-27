{ pkgs, ... }:

{
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
}
