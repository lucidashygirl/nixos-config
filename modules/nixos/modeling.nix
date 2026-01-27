{ pkgs, lib, config, ... }: 
{
  options = {
    modeling.enable = lib.mkEnableOption "enable modeling";
  };
  config = lib.mkIf config.modeling.enable {
    environment.systemPackages = with pkgs; [
      pkgsRocm.blender
      blockbench
    ];
    # fix for fuckass rocm whatever
    systemd.tmpfiles.rules = 
    let
      rocmEnv = pkgs.symlinkJoin {
        name = "rocm-combined";
        paths = with pkgs.rocmPackages; [
          rocblas
          hipblas
          clr
        ];
      };
    in [
      "L+    /opt/rocm   -    -    -     -    ${rocmEnv}"
    ];
    hardware = {
      graphics.extraPackages = with pkgs; [
        rocmPackages.clr.icd
      ];
    };
  };
}
