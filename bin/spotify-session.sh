#!/usr/bin/bash

scriptsDir="$HOME"/.dotfiles/bin

"$scriptsDir"/videowallpaper-change music &
kitty --title spotify-cava --hold cava &
kitty --title spotify-timer &
glava &
eog /home/n30/Pictures/Screenshots/screenshot_garuda_2023-02-08-18-58-26_11824.png &
spotify
pkill 'kitty|eog|spotify-timer|Glava|spotify-cava' &
"$scriptsDir"/videowallpaper-change test &

# settings for spotify-session.sh  on hyprland.conf:
# bind= $triMod,S,exec,sh $scriptsDir/spotify-session.sh
# windowrulev2 = float, title:^(spotify-cava)$
# windowrule=move 17 1154,title:^(spotify-cava)$
# windowrule=size 2606 298,title:^(spotify-cava)$
# windowrulev2 = float, title:^(spotify-glava)$
# windowrule=size 99 99,title:^(spotify-glava)$
# windowrulev2 = float, class:^(GLava)$
# windowrule=move 18 69,class:^(GLava)$
# windowrule=size 743 124,title:^(GLava)$
# windowrulev2 = float, title:^(spotify-timer)$
# windowrule=move 14 694,title:^(spotify-timer)$
# windowrule=size 752 443,title:^(spotify-timer)$
# windowrulev2 = float, title:^(Spotify)$
# windowrule=move 2643 68,title:^(Spotify)$
# windowrule=size 784 1367,title:^(Spotify)$
# windowrule=move 11 210,title:^(screenshot_garuda_2023-02-08-18-58-26_11824.png)$
# windowrule=size 22% 33%,title:^(screenshot_garuda_2023-02-08-18-58-26_11824.png)$