#!/bin/bash

echo 'Flatpak: Install DeSmuMe (flatpak run org.desmume.DeSmuME)'
flatpak install -y flathub org.desmume.DeSmuME

echo 'Flatpak: Install Yuzu (flatpak run org.yuzu_emu.yuzu --filesystem=/roms:ro)'
flatpak install -y flathub org.yuzu_emu.yuzu

echo 'Flatpak: Install Citra3DS'
flatpak install -y flathub org.citra_emu.citra

echo 'FlatPak: Install RetroArch'
flatpak install -y flathub org.libretro.RetroArch
