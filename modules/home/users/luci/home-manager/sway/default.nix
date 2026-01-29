{
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = "Mod4";
      left = "h";
      down = "j";
      up = "k";
      right = "l";
      terminal = "alacritty"; 
      screenshot = "grim -g $(slurp) - | wl-copy -o";
      menu = "rofi -show drun -show-icons";
      menu_power = "rofi -show menu -modi menu:rofi-power-menu";
      lock = "swaylock --color 000000";
      output."*" = {
        bg = "" + /home/luci/Pictures/result.png + " fill";
      };
      input."*" = {
        xkb_options = "caps:escape";
        xkb_numlock = "enabled";
        accel_profile = "flat";
        pointer_accel = "-0.5";
      };
      window.titlebar = false;
      keybindings = {
        mkOptionDefault = {
          "${modifier}+Enter" = "${terminal}";
          "${modifier}+q" = "kill";
          "${modifier}+d" = "${menu}";
          "${modifier}+p" = "${menu_power}";
          "${modifier}+Alt+l" = "${lock}";
          "${modifier}+Shift+s" = "grim -g $(slurp) - | wl-copy -o";
          "${modifier}+Alt+s" = "grim - | wl-copy -o";

          "${modifier}+Shift+c" = "reload";

          "${modifier}+${left}" = "focus left";
          "${modifier}+${up}" = "focus up";
          "${modifier}+${down}" = "focus down";
          "${modifier}+${right}" = "focus right";

          "${modifier}+Left" = "focus left";
          "${modifier}+Up" = "focus up";
          "${modifier}+Down" = "focus down";
          "${modifier}+Right" = "focus right";

          "${modifier}+Shift+${left}" = "move left";
          "${modifier}+Shift+${up}" = "move up";
          "${modifier}+Shift+${down}" = "move down";
          "${modifier}+Shift+${right}" = "move right";

          "${modifier}+Shift+Left" = "move left";
          "${modifier}+Shift+Up" = "move up";
          "${modifier}+Shift+Down" = "move down";
          "${modifier}+Shift+Right" = "move right";

          "${modifier}+KP_1" = "workspace number 1";
          "${modifier}+KP_2" = "workspace number 2";
          "${modifier}+KP_3" = "workspace number 3";
          "${modifier}+KP_4" = "workspace number 4";
          "${modifier}+KP_5" = "workspace number 5";
          "${modifier}+KP_6" = "workspace number 6";
          "${modifier}+KP_7" = "workspace number 7";
          "${modifier}+KP_8" = "workspace number 8";
          "${modifier}+KP_9" = "workspace number 9";
          "${modifier}+KP_0" = "workspace number 10";

          "${modifier}+Alt+KP_1" = "move container to workspace number 1";
          "${modifier}+Alt+KP_2" = "move container to workspace number 2";
          "${modifier}+Alt+KP_3" = "move container to workspace number 3";
          "${modifier}+Alt+KP_4" = "move container to workspace number 4";
          "${modifier}+Alt+KP_5" = "move container to workspace number 5";
          "${modifier}+Alt+KP_6" = "move container to workspace number 6";
          "${modifier}+Alt+KP_7" = "move container to workspace number 7";
          "${modifier}+Alt+KP_8" = "move container to workspace number 8";
          "${modifier}+Alt+KP_9" = "move container to workspace number 9";
          "${modifier}+Alt+KP_0" = "move container to workspace number 10";

          "${modifier}+b" = "splith";
          "${modifier}+v" = "splitv";
         
          "${modifier}+s" = "layout stacking";
          "${modifier}+w" = "layout tabbed";
          "${modifier}+e" = "layout toggle split";

          "${modifier}+f" = "fullscreen";
          "${modifier}+Shift+space" = "floating toggle";
          "${modifier}+space" = "focus mode_toggle";
          "${modifier}+a" = "focus parent";

          "${modifier}+Alt+minus" = "move scratchpad";
          "${modifier}+minus" = "scratchpad show";
          "${modifier}+r" = "mode resize";
          "${modifier}+Shift+b" = "bar mode toggle";

          "XF86MonBrightnessDown" = "exec light -U 10";
          "XF86MonBrightnessUp" = "exec light -A 10";
          "XF86AudioRaiseVolume" = "exec 'pactl set-sink-volume @DEFAULT_SINK@ +1%'";
          "XF86AudioLowerVolume" = "exec 'pactl set-sink-volume @DEFAULT_SINK@ -1%'";
          "XF86AudioMute" = "exec 'pactl set-sink-mute @DEFAULT_SINK@ toggle'";
        };
      };
      modes.resize = {

      };
    };
  };
}
