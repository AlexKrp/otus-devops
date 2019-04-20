#!/bin/bash
set -e

source ~/.profile
git clone https://github.com/AlexKrp/NodeLearnApp1.git
cd NodeLearnApp1
npm install

sudo mv /tmp/node.service /etc/systemd/system/node.service
sudo systemctl start node
sudo systemctl enable node