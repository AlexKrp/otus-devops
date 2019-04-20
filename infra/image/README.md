## Configs for node app image for packer

* ubuntu18.json
    Image template contains nodejs 10.x and mongodb latest
* immutable.json 
    Image template contains nodejs 10.x, mongodb and startup script for node app deployment
* scripts
    Folder contains scripts for in image deploy
* vars
    Folder contains variables for main configs

* app.json & db.json
    Image templates to separate db and app images

##### TODO
1. Understand how packer startup script works   

### Packer cmd
1. Validate an image
    `packer validate -var-file=variables.json template.json`
2. Build an image 
    `packer build -var-file=variables.json template.json`

### Prerequisites
1. Go
2. Packer
