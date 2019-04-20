#!/usr/bin/env bash

#Colors for Output
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`

printVer() {
    echo
    echo "${GREEN}###############${RESET}"
    echo "${GREEN}NodeJS Version:${RESET}"
    nodejs -v
    echo "${GREEN}NPM Version${RESET}"
    npm -v
    echo "${GREEN}###############${RESET}"
}

#Install NodeJS
apt update && apt install -y curl
if [ !$? ]; then
    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && apt install -y nodejs
    if [ !$? ]; then
        echo
        echo "${GREEN}Node & NPM Intalled${RESET}"
        printVer
        exit 0
    else
        echo
        echo "${RED}Node & NPM NOT Intalled${RESET}"
        echo
        exit 1
    fi
else 
    echo
    echo "${RED}Cant Update Repos${RESET}"
    echo
    exit 1
fi
exit 0
