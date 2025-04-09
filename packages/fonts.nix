{ pkgs, ... }: {
  fonts = { packages = with pkgs; [ font-awesome maple-mono.NF ]; };
}
