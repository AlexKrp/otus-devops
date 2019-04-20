#!/usr/bin/env bash

#Colors for Output
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`


gcloud compute instances create --boot-disk-size=10GB --image=ubuntu-1604-xenial-v20170815a --image-project=ubuntu-os-cloud --machine-type=g1-small --tags node-server --restart-on-failure --metadata-from-file startup-script=full_deploy.sh --zone=europe-west1-b node-app

if [ !$? ]; then
    echo "Deployed"
    exit 0
else 
    echo "Error!"
    exit 1
fi
