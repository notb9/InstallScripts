#!/bin/bash
echo 'Installing VirtualBox from Debian fasttrack'
apt install --assume-yes fasttrack-archive-keyring
echo 'deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-fasttrack main contrib' >> /etc/apt/sources.list

apt update
apt install --assume-yes virtualbox virtualbox-ext-pack