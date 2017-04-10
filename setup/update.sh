#!/bin/bash
cd "${0%/*}"
. ${HOCO_HOME}/data/config.sh

sudo systemctl stop hoco-nodered.service

sudo npm i -g --unsafe-perm --no-progress node-red
sudo npm i -g node-red-contrib-influxdb

cd ..
npm install
sudo cp setup/hoco-nodered.service /etc/systemd/system/
sudo systemctl enable hoco-nodered.service
