{
  environment = {

    sessionVariables = rec {
      EDITOR = "/run/current-system/sw/bin/nvim";
      WLR_RENDERER = "vulkan"; # Fixes element-desktop flickering
    };
  };
}
