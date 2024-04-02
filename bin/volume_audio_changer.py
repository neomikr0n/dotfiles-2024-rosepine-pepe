#!/usr/bin/env python 

# Sebastiaan76
# https://github.com/Sebastiaan76/waybar_wireplumber_audio_changer
# https://www.reddit.com/r/hyprland/comments/10rmv6r/i_made_a_script_to_change_audio_sinks_using_wpctl/

import subprocess

# function to parse output of command "wpctl status" and return a dictionary of sinks with their id and name.
def parse_wpctl_status():
    # Execute the wpctl status command and store the output in a variable.
    output = str(subprocess.check_output("wpctl status", shell=True, encoding='utf-8'))

    # remove the ascii tree characters and return a list of lines
    lines = output.replace("├", "").replace("─", "").replace("│", "").replace("└", "").replace("Easy Effects Sink ", "Select one: 👇").replace("Analog Stereo", "").replace("D30", "🎧 Beyerdynamic").replace("PCM2704 16-bit stereo audio DAC", "🔊 Bocinas").replace("Built-in Audio", "🎧 Sony1000XM2").splitlines()

    # get the index of the Sinks line as a starting point
    sinks_index = None
    for index, line in enumerate(lines):
        if "Sinks:" in line:
            sinks_index = index
            break

    # start by getting the lines after "Sinks:" and before the next blank line and store them in a list
    sinks = []
    for line in lines[sinks_index +1:]:
        if not line.strip():
            break
        sinks.append(line.strip())

    # remove the "[vol:" from the end of the sink name
    for index, sink in enumerate(sinks):
        sinks[index] = sink.split("[vol:")[0].strip()
    
    # strip the * from the default sink and instead append "- Default" to the end. Looks neater in the wofi list this way.
    for index, sink in enumerate(sinks):
        if sink.startswith("*"):
            sinks[index] = sink.strip().replace("*", "").strip() + " ️           ⬅️👂👂" 

    # make the dictionary in this format {'sink_id': <int>, 'sink_name': <str>}
    sinks_dict = [{"sink_id": int(sink.split(".")[0]), "sink_name": sink.split(".")[1].strip()} for sink in sinks]

    return sinks_dict

# get the list of sinks ready to put into wofi - highlight the current default sink
output = ''
sinks = parse_wpctl_status()
for items in sinks:
    if items['sink_name'].endswith(" - Default"):
        output += f"<b>-> {items['sink_name']}</b>\n"
    else:
        output += f"{items['sink_name']}\n"

# Call wofi and show the list. take the selected sink name and set it as the default sink
selected_sink_name = subprocess.check_output(f"echo '{output}' | wofi --show=dmenu --hide-scroll --allow-markup --define=hide_search=false --location=top_right --width=311 --height=240 --xoffset=-660 --yoffset=11", shell=True, encoding='utf-8').strip()
sinks = parse_wpctl_status()
selected_sink = next(sink for sink in sinks if sink['sink_name'] == selected_sink_name)
subprocess.run(f"wpctl set-default {selected_sink['sink_id']}", shell=True)