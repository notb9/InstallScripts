#!/bin/bash
echo 'Installing Matcha-Sea-Dark theme, with papirus icons and the plank dock (reboot needed)'
apt --assume-yes install gtk2-engines-murrine gtk2-engines-pixbuf
apt --assume-yes install breeze-cursor-theme plank papirus-icon-theme

# Clone from my repo
directory=$(mktemp -d)

git clone https://github.com/vinceliuice/Matcha-gtk-theme.git $directory
cd $directory
bash ./install.sh -d /usr/share/themes/ -n Matcha -t sea -c dark
rm -rf $directory

gsettings set org.gnome.desktop.interface gtk-theme 'Matcha-dark-sea'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'