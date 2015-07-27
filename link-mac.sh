# Script for linking together a bunch of files for my mac ubuntu environment

# Build an i3 config file for use with a mac keyboard
rm -rf ~/.i3
mkdir -p ~/.i3

cd ~/conf/modules
cat i3config_header i3config_wallpaper i3config_gaps i3config_keys_mac i3config_fonts i3config_shortcuts i3config_workspaces i3config_resize i3config_bar i3config_graphics_fix i3config_compton > ~/.i3/config

# Build i3 status file for mac
cat i3status_header i3status_general_colour i3status_order_mac i3status_components > ~/.i3/.i3status.conf

# Build a bashrc file for mac
rm ~/.bashrc -rf
cat bashrc_general bashrc_keys_mac > ~/.bashrc

# Link to .gconf (gnome configurations)
sudo rm ~/.gconf -rf
sudo ln -s ~/conf/dotfiles/.gconf ~/.gconf

# Link to .gitconfig
sudo rm ~/.gitconfig -rf
sudo ln -s ~/conf/dotfiles/.gitconfig ~/.gitconfig

# Link to .shutter
sudo rm ~/.shutter -rf
sudo ln -s ~/conf/dotfiles/.shutter ~/.shutter

# Link to Sublime Text preferences TODO make these directories at the very top of this file
sudo rm ~/.config/sublime-text-2/Packages/User -rf
mkdir ~/.config/sublime-text-2/Packages -p
ln -s ~/conf/dotfiles/.config/sublime-text-2/Packages/User ~/.config/sublime-text-2/Packages/User

# Link to themes
sudo rm ~/.themes -rf
ln -s ~/conf/dotfiles/.themes ~/.themes

# Link to compton config
sudo rm ~/.config/compton.conf
ln -s ~/conf/dotfiles/.config/compton.conf ~/.config/compton.conf 