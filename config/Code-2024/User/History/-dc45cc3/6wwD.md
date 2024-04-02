# rosepine 🌹🌹🌹
My **[Hyprland](https://github.com/topics/hyprland) dotfiles** on Linux's [EndeavourOS](https://endeavouros.com/) (arch btw), .

<!-- ***waybar and animated wallpaper***
![lol](https://0x0.st/HwJv.png)

***cava, qbittorrent, btop***
![lol](https://0x0.st/HwJD.png) -->

<!-- ***brave, vscode***
![lol](https://0x0.st/HwJt.png)

***dolphin, foot***
![lol](https://0x0.st/HwJy.png) -->
<!-- 
***spotify, glava, timer (w/ lolcat)***
![lol](https://0x0.st/HwJO.png) --> -->

---
## *Keywords*:
- **$mainMod = SUPER*

- *$triMod = SUPER CTRL ALT*
  
## **Keybinds**:
| Keybind | Dispatcher | Command |
|---------|------------|---------|
| <kbd>xf86audioraisevolume</kbd> | exec | $volume --inc |
| <kbd>xf86audiolowervolume</kbd> | exec | $volume --dec |
| <kbd>xf86audiomute</kbd> | exec | $volume --toggle |
| <kbd>CTRL xf86audiomute</kbd> | exec | $volume --toggle-mic |
| <kbd>xf86audioplay</kbd> | exec | playerctl play-pause |
| <kbd>xf86audionext</kbd> | exec | playerctl next |
| <kbd>xf86audioprev</kbd> | exec | playerctl previous |
| <kbd>XF86Calculator</kbd> | exec | qalculate-gtk |
| <kbd>xf86monbrightnessup</kbd> | exec | $brightness --inc |
| <kbd>xf86monbrightnessdown</kbd> | exec | $brightness --dec |
| <kbd>Print</kbd> | exec | $screenshot copysave area |
| <kbd>CTRL Print</kbd> | exec | $screenshot copysave output |
| <kbd>$triMod Print</kbd> | exec | $screenshot copysave area; ksnip |
| <kbd>$mainMod G</kbd> | togglegroup |  |
| <kbd>$mainMod tab</kbd> | changegroupactive |  |
| <kbd>KEY_CAPSLOCK A</kbd> | exec | $test         |
| <kbd>$mainMod x</kbd> | exec | $colorpicker |
| <kbd>WIN F1</kbd> | exec | $scriptsDir/gamemode.sh |
| <kbd>XF86Calculator</kbd> | exec | qalculate-gtk |
| <kbd>$mainMod SHIFT Y</kbd> | exec | pkill wofi; $wofi_beats |
| <kbd>$mainMod E</kbd> | exec | PATH=$HOME/.local/bin:$PATH EDITOR=lvim kitty -1 --class lf lf |
| <kbd>SUPER Return</kbd> | exec | $term |
| <kbd>$triMod D</kbd> | exec | dolphin |
| <kbd>$triMod F</kbd> | exec | $browser |
| <kbd>$triMod H</kbd> | exec | $scriptsDir/misc --heroic |
| <kbd>$triMod n</kbd> | exec | swaync-client -t |
| <kbd>$triMod 1</kbd> | exec | bash $scriptsDir/videowallpaper-change code |
| <kbd>$triMod 2</kbd> | exec | bash $scriptsDir/videowallpaper-change music |
| <kbd>$triMod 3</kbd> | exec | bash $scriptsDir/videowallpaper-change test |
| <kbd>CTRL ALT right</kbd> | exec | hyprctl dispatch workspace e+1 ; play -v 0.1 "$soundsDir/change_workspace.wav" |
| <kbd>CTRL ALT left</kbd> | exec | hyprctl dispatch workspace e-1 ; play -v 0.1 "$soundsDir/change_workspace.wav" |
| <kbd>$mainMod Q</kbd> | killactive |  |
| <kbd>$mainMod SHIFT Q</kbd> | exit |  |
| <kbd>$mainMod F</kbd> | fullscreen |  |
| <kbd>$mainMod P</kbd> | pseudo |  |
| <kbd>$mainMod S</kbd> | togglesplit |  |
| <kbd>SUPER mouse:272</kbd> | movewindow |  |
| <kbd>SUPER mouse:273</kbd> | resizewindow |  |
| <kbd>SUPER S</kbd> | togglefloating |  |
| <kbd>SUPER P</kbd> | pseudo |  |
| <kbd>$triMod Kp_End</kbd> | exec | pactl set-default-sink alsa_output.usb-Topping_D30-00.analog-stereo; notify-send -e '         🎧 BEYERDYNAMIC 🎧' |
| <kbd>$triMod Kp_Down</kbd> | exec | pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo; notify-send -e '               🎧 SONY 1000 🎧' |
| <kbd>$triMod Kp_Next</kbd> | exec | pactl set-default-sink alsa_output.usb-Burr-Brown_from_TI_USB_Audio_DAC-00.analog-stereo; notify-send -e "                🔊 BOCINAS 🔊" |
| <kbd>CTRL space</kbd> | exec | pkill wofi; $scriptsDir/volume_audio_changer.py |
| <kbd>$triMod P</kbd> | exec | systemctl --user restart pipewire-pulse.service \| systemctl --user restart pipewire.socket \| systemctl --user restart wireplumber pipewire pipewire-pulse      |
| <kbd>$triMod Kp_Left</kbd> | exec | busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 6500 |
| <kbd>$triMod Kp_Begin</kbd> | exec | busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 4500 |
| <kbd>$triMod Kp_Right</kbd> | exec | busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 2500 |
| <kbd>$triMod D</kbd> | exec | killall dunst & dunst |
| <kbd>$triMod W</kbd> | exec | killall -q waybar & sleep 0.5 && waybar -c $HOME/.config/hypr/component/waybar/config -s $HOME/.config/hypr/component/waybar/style.css & notify-send -h int:value:10 WAYBAR restarting!... ⏳  |
| <kbd>$triMod space</kbd> | exec | albert toggle |
| <kbd>$triMod G</kbd> | exec | $scriptsDir/misc --gamescope2560 |
| <kbd>SUPER Tab</kbd> | exec | pkill nwg-drawer && nwg-drawer -c 7 -is 70 -spacing 23  |
| <kbd>$triMod Delete</kbd> | exec | $exit --shutdown |
| <kbd>CTRL ALT Delete</kbd> | exec | $exit --restart |
| <kbd>CTRL Delete</kbd> | exec | $exit --logout |
| <kbd>$mainMod l</kbd> | exec | sleep .5 && hyprctl dispatch dpms off |
| <kbd>$mainMod CTRL l</kbd> | exec | $exit --lock |
| <kbd>$triMod l</kbd> | exec | $exit --suspend |
| <kbd>$triMod escape</kbd> | exec | wlogout --protocol layer-shell -b 5 -T 400 -B 400 |
| <kbd>CTRL 1</kbd> | exec | kitty --title float_is_kitty --hold cava |
| <kbd>CTRL 4</kbd> | exec | kitty --title clock_is_kitty --hold tty-clock -C5B |
| <kbd>SUPER t</kbd> | exec | kitty --start-as=fullscreen -o 'font_size=25' --title all_is_kitty |
| <kbd>$triMod Return</kbd> | exec | kitty --title lol |
| <kbd>$triMod S</kbd> | exec | sh $scriptsDir/spotify-session.sh |
| <kbd>ALT space</kbd> | exec | pkill wofi; wofi --show drun --width 500 --heigh 880 |
| <kbd>SUPER space</kbd> | exec | pkill wofi; wofi-emoji --show drun --width 66 --height 99 \| clipman |
| <kbd>$triMod V</kbd> | exec | pkill wofi;cliphist list \| wofi --dmenu -p clippick -l top_right -x -15 -y 10 -n \| cliphist decode \| clipman  |
| <kbd>SUPERALT space</kbd> | exec | pkill wofi; wofi-calc --width 100 --heigh 500       |
| <kbd>SUPERCTRL space</kbd> | exec | pkill wofi; wofi-symbol --show drun -o DP-3 --width 500 --heigh 1000 |
| <kbd>$mainMod $mainMod_L</kbd> | togglespecialworkspace |  |
| <kbd>ALT bar</kbd> | movetoworkspacesilent | special |
| <kbd>SUPER 1</kbd> | workspace | 1 |
| <kbd>SUPER 2</kbd> | workspace | 2 |
| <kbd>SUPER 3</kbd> | workspace | 3 |
| <kbd>SUPER 4</kbd> | workspace | 4 |
| <kbd>SUPER 5</kbd> | workspace | 5 |
| <kbd>SUPER 6</kbd> | workspace | 6 |
| <kbd>SUPER 7</kbd> | workspace | 7 |
| <kbd>SUPER 8</kbd> | workspace | 8 |
| <kbd>SUPER 9</kbd> | workspace | 9 |
| <kbd>SUPER 0</kbd> | workspace | 10 |
| <kbd>SUPER left</kbd> | movefocus | l |
| <kbd>SUPER right</kbd> | movefocus | r |
| <kbd>SUPER up</kbd> | movefocus | u |
| <kbd>SUPER down</kbd> | movefocus | d |
| <kbd>ALT 1</kbd> | movetoworkspacesilent | 1 |
| <kbd>ALT 2</kbd> | movetoworkspacesilent | 2 |
| <kbd>ALT 3</kbd> | movetoworkspacesilent | 3 |
| <kbd>ALT 4</kbd> | movetoworkspacesilent | 4 |
| <kbd>ALT 5</kbd> | movetoworkspacesilent | 5 |
| <kbd>ALT 6</kbd> | movetoworkspacesilent | 6 |
| <kbd>ALT 7</kbd> | movetoworkspacesilent | 7 |
| <kbd>ALT 8</kbd> | movetoworkspacesilent | 8 |
| <kbd>ALT 9</kbd> | movetoworkspacesilent | 9 |
| <kbd>ALT 0</kbd> | movetoworkspacesilent | 10 |
| <kbd>SHIFTALT 1</kbd> | movetoworkspace | 1 |
| <kbd>SHIFTALT 2</kbd> | movetoworkspace | 2 |
| <kbd>SHIFTALT 3</kbd> | movetoworkspace | 3 |
| <kbd>SHIFTALT 4</kbd> | movetoworkspace | 4 |
| <kbd>SHIFTALT 5</kbd> | movetoworkspace | 5 |
| <kbd>SHIFTALT 6</kbd> | movetoworkspace | 6 |
| <kbd>SHIFTALT 7</kbd> | movetoworkspace | 7 |
| <kbd>SHIFTALT 8</kbd> | movetoworkspace | 8 |
| <kbd>SHIFTALT 9</kbd> | movetoworkspace | 9 |
| <kbd>SHIFTALT 0</kbd> | movetoworkspace | 10 |
| <kbd>SHIFTALT bracketleft</kbd> | movetoworkspace | -1 |
| <kbd>SHIFTALT bracketright</kbd> | movetoworkspace | +1 |
| <kbd>SUPER mouse_down</kbd> | workspace | e+1 |
| <kbd>SUPER mouse_up</kbd> | workspace | e-1 |
| <kbd>SUPER g</kbd> | togglegroup |  |
| <kbd>SUPER tab</kbd> | focusUrgentOrLast     |  |

## Complementary Keywords :
- $scriptsDir = ~/.dotfiles/bin
- $soundsDir = ~/.config/hypr/sounds
- $picsDir = ~/Pictures/
- $configDir = ~/.config/hypr/configs/
- $files = dolphin
- $browser = brave
- $music = spotify
- $term = foot
- $menu = $scriptsDir/menu
- $volume = $scriptsDir/volume
- $exit = $scriptsDir/exit
- $screenshot = $scriptsDir/grimblast
- $colorpicker = $scriptsDir/hyprpicker.sh
- $wofi_beats = $scriptsDir/wofi-beats
- $test = notify-send --urgency=normal --icon=firedragon -t 555 -e "test..." "⌛0% [ █ █ █ █ █ █ █ ] 100%"