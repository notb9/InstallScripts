#!/bin/bash
echo 'Installing cifs-utils for access smb shares.'
apt --assume-yes install cifs-utils smbclient samba
echo 'Installing gvfs-backends to allow FileManager to browse SMB shares.'
apt --assume-yes install gvfs gvfs-backends