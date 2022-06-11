#!/bin/bash

curl -1sLf \
   'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' \
   | bash

sudo apt update
sudo apt install --assume-yes balena-etcher-electron
