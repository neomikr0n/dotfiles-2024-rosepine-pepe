#!/bin/sh

# ░█▀▀▄░█▀▀░▄▀▀▄░█▀▄▀█░░▀░░█░▄░█▀▀▄░█▀▀█░█▀▀▄░░   v1.0 2023-05-01
# ░█░▒█░█▀▀░█░░█░█░▀░█░░█▀░█▀▄░█▄▄▀░█▄▀█░█░▒█░░   wrapper for the color selector `hyprpicker`
# ░▀░░▀░▀▀▀░░▀▀░░▀░░▒▀░▀▀▀░▀░▀░▀░▀▀░█▄▄█░▀░░▀░░   https://github.com/neomikr0n/dotfiles
# 
# original deprecated= https://github.com/Kara-Zor-El/config-files/blob/d901ec388cfb9296dcc410705f5614ddc8ca8488/hypr/scripts/hyprpicker.sh

# -f | --format=[fmt] specifies the output format (cmyk, hex, rgb, hsl, hsv)
# -n | --no-fancy disables the "fancy" (aka. colored) outputting
# -h | --help prints a help message
# -a | --autocopy copies the output to the clipboard (requires wl-clipboard)
# -r | --render-inactive render (freeze) inactive displays too
# -z | --no-zoom disable the zoom lens

color=$(hyprpicker -a)
echo "$color" | head -c -1 | wl-copy
tempFile=~/Pictures/color.png

# RGB value
rgb=$(printf "rgb(%d, %d, %d)" 0x"${color:1:2}" 0x"${color:3:2}" 0x"${color:5:2}")

# this is just a temp file
convert -size 100x100 xc:"$color" $tempFile

# Send a notification with the color, rgb value and a image of the color
notify-send -i $tempFile "$color copied to 📋" "RGB: $rgb"

# rm $tempColor
