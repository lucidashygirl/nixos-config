{lib, config, ...}:
{
  options = {
    audio.enable = lib.mkEnableOption "enable pipewire audio";
  };
  
  config = lib.mkIf config.audio.enable {
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}
