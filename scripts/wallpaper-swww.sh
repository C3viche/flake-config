#!/bin/bash
# __        __    _ _                              
# \ \      / /_ _| | |_ __   __ _ _ __   ___ _ __  
#  \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__| 
#   \ V  V / (_| | | | |_) | (_| | |_) |  __/ |    
#    \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|    
#                    |_|         |_|               
#  
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# Select wallpaper
# ----------------------------------------------------- 
selected=$(ls -1 ~/Pictures/Wallpapers | grep "jpg" | rofi -dmenu -config ~/flake-config/home-manager/rofi/config-wallpaper.rasi)

if [ "$selected" ]; then

    echo "Changing theme..."
    # ----------------------------------------------------- 
    # Update wallpaper with pywal
    # ----------------------------------------------------- 
    wal -q -i ~/Pictures/Wallpapers/$selected

    # ----------------------------------------------------- 
    # Get new theme
    # ----------------------------------------------------- 
    source "$HOME/.cache/wal/colors.sh"

    # ----------------------------------------------------- 
    # Copy selected wallpaper into .cache folder
    # ----------------------------------------------------- 
    cp $wallpaper ~/.cache/current_wallpaper.jpg   

    newwall=$(echo $wallpaper | sed "s|$HOME/Pictures/Wallpapers/||g")

    # ----------------------------------------------------- 
    # Set the new wallpaper
    # ----------------------------------------------------- 
    swww img $wallpaper \
        --transition-bezier .43,1.19,1,.4 \
        --transition-fps=60 \
        --transition-type="random" \
        --transition-duration=0.7 \
        --transition-pos "$( hyprctl cursorpos )"

    waybar -s ~/flake-config/home-manager/wayland/waybar/style.css &
    sleep 1

    # ----------------------------------------------------- 
    # Send notification
    # ----------------------------------------------------- 
    notify-send "Colors and Wallpaper updated" "with image $newwall"

    echo "Done."
fi

