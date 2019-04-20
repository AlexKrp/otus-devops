#!/usr/bin/env bash

#Clone Scripts Repo
git clone https://github.com/AlexKrp/otus-devops.git
if [ -d otus-devops ]; then
    echo "Repo Cloned"
else
    echo "Cant Clone Repo"
    exit 1
fi

echo
echo "Node deploy started"
echo
cp otus-devops/script/deploy_node.sh .
sh ./deploy_node.sh

echo
echo "Mongo deploy started"
echo
cp otus-devops/script/deploy_mongodb.sh .
sh ./deploy_mongodb.sh

echo
echo "App deploy started"
echo
cp otus-devops/script/deploy_app.sh .
sh ./deploy_app.sh


exit 0