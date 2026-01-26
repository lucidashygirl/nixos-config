{
  environment = {
    sessionVariables = {
      # EDITOR = "/run/current-system/sw/bin/nvim";
      WLR_RENDERER = "vulkan"; # Fixes element-desktop flickering
      GTK_USE_PORTAL = "0";
      QT_QPA_PLATFORMTHEME = "qt6ct";
    };
  };
}
