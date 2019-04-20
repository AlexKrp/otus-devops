#!/usr/bin/env bash

#Install MongoDB

#Colors for Output
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`

printVer() {
    echo
    echo "${GREEN}###############${RESET}"
    echo "${GREEN}MongoDB:${RESET}"
    mongo -version
    echo "${GREEN}###############${RESET}"
}

connectionCheck() {
    echo "${GREEN}Connection Status${RESET}"
    mongo --eval 'db.runCommand({ connectionStatus: 1 })'
}

#Check if Installed
if which mongodb; then
        echo
        echo "${GREEN}MongoDB Installed!${RESET}"
        printVer
        connectionCheck > db_connect
        exit 0
fi
apt update 
if [ !$? ]; then
    apt install -y mongodb
    if [ !$? ]; then
        echo
        echo "${GREEN}MongoDB Installed${RESET}"
        printVer
        connectionCheck > db_connect
    else 
        echo
        echo "${RED}MongoDB NOT Intalled${RESET}"
        echo
        exit 1
    fi
else
    echo
    echo "${RED}Cant Update Repos${RESET}"
    echo
    exit 1
fi
