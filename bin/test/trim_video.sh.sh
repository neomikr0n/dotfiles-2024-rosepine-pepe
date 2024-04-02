#!/bin/bash

input_file="/home/n30/Videos/Hidamari/fi.mp4"
output_file="/home/n30/Videos/Hidamari/fifi.mp4"
duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$input_file")
duration_minus_half=$(echo "$duration - 0.5" | bc)

ffmpeg -i "$input_file" -ss 0 -t "$duration_minus_half" -an -c:v copy "$output_file"
