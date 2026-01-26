{ pkgs, ... }: 
{
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
}
