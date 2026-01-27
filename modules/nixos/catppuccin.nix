
{ pkgs, lib, config, ...}:
{
  options = {
    catppuccin.enable = lib.mkEnableOption "enables catppuccin theme";
  };

  environment = {
    sessionVariables = {
      GTK_USE_PORTAL = "0";
      QT_QPA_PLATFORMTHEME = "qt6ct";
    };
  };

  config = lib.mkIf config.catppuccin.enable {
    environment.systemPackages = with pkgs; [
      qt6Packages.qt6ct
      catppuccin-qt5ct
    ];

    nixpkgs.config = {
      qt6 = {
        enable = true;
        platformTheme = "qt6ct"; 
        style = {
          package = pkgs.catppuccin-qt5ct {
            flavor = "macchiato";
            accent = "pink";
          };
          name = "Catppuccin Macchiato";
        };
      };
      gtk = {
        enable = true;
        theme = {
          package = pkgs.catppuccin-gtk {
            flavor = "macchiato";
            accent = "pink";
          };
          name = "Catppuccin Macchiato";
        };
      };
    };
  };
}
