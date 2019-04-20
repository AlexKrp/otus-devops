#!/usr/bin/env bash

#Deploy App

git clone https://github.com/AlexKrp/NodeLearnApp1.git

if [ -d NodeLearnApp1 ]; then
    cd NodeLearnApp1 && npm install
    npm start
    exit 0
    fi
else 
    echo
    echo "Repo Clone Failed"
    echo
    exit 1
fi

