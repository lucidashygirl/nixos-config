{ pkgs, ... }:
{
  hardware.opengl.extraPackages = with pkgs; [
    rocmPackages.clr.icd
  ]; 
}
