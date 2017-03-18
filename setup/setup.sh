#!/bin/bash
cd "${0%/*}"
. ${HOCO_HOME}/data/config.sh
sudo apt-get install -y build-essential python-rpi.gpio
sudo npm i -g --unsafe-perm --no-progress node-red

cd ..
npm install
sudo cp setup/hoco-nodered.service /etc/systemd/system/
sudo systemctl enable hoco-nodered.service
