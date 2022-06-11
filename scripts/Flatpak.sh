#!/bin/bash

echo 'Installing Flatpak and Configuring it (Requires Reboot)'
apt --assume-yes install flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
