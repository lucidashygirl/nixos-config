{ pkgs, ... }: 
{
  nixpkgs.config.qt6 {
    enable = true;
    platformTheme = "qt5ct"; 
    style = {
      package = pkgs.utterly-nord-plasma;
      name = "Utterly Nord Plasma";
    };
  };
}
