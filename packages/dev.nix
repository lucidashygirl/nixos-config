{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    clinfo
    dotnetCorePackages.sdk_8_0_3xx
    gcc
    gnupg
    rustup
  ];
}
