{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    dotnetCorePackages.sdk_8_0_3xx
    gcc
    gnupg
    rustup
  ];
}
