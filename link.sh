# Script for linking together a bunch of files for my standard PC ubuntu environment

# Build an i3 config file for use with a standard keyboard
rm -r ~/.i3
mkdir -p ~/.i3

cd ~/conf/modules
cat i3config_header i3config_wallpaper i3config_gaps i3config_keys_standard i3config_fonts i3config_shortcuts i3config_workspaces i3config_resize i3config_bar i3config_graphics_fix > ~/.i3/config

# Build i3 status file for pc
cat i3status_header i3status_general_colour i3status_order_standard i3status_components > ~/.i3/.i3status.conf

# Build a bashrc file for pc
rm ~/.bashrc
cat bashrc_general bashrc_keys_standard > ~/.bashrc