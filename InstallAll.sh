#!/bin/bash
echo 'Updating apt and all existing packages on the system'
apt update && apt upgrade --assume-yes

echo 'Running all installation scripts!' 
find ./scripts -type f -name '*.sh' -exec bash {} \;

echo 'Perform apt cleaning and autoremoval for unneeded packages'
apt --assume-yes clean
apt --assume-yes autoremove