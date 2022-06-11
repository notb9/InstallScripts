#!/bin/bash
echo 'Installing Obsidian as AppImage: Scraping url from website'

url=$(wget -O - https://obsidian.md/ | grep -i 'releases/download.*.AppImage' | cut -d '"' -f 2 | head -n 1)

if [[ "$url" =~ ^.*Obsidian.*.AppImage$ ]];
then	
	wget $url
	cp Obsidian*.AppImage /opt/Obsidian.AppImage
	chown root:root /opt/Obsidian.AppImage
	chmod 755 /opt/Obsidian.AppImage
    rm Obsidian*.AppImage 
else
	echo 'Failed to get the download url for obsidian!'
fi