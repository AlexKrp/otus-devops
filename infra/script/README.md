## Scripts to complete deploy of node app

#### GCP image: ubuntu-1604-xenial-v20170815a

* deploy_node.sh 
    1. nodejs verison 10.x with npm (from source)
* deploy_mongodb.sh
    1. mongoDB latest (from ubuntu repo)
    2. creates file connect_db with connection details
* deploy_app.sh 
    1. clones node app from github repo
    2. install dependencies (`npm install`)
    3. run app (`npm start`)
* full_deploy.sh 
    1. clones repo with 3 deploy_*.sh scripts
    2. run scripts: node --> mongodb --> app
* inst_app_deploy.sh
    1. creates gcloud g1-small instance (*gloud auth needed*)
    2. adds full_deploy.sh as a startup script

### Prerequisites
1. Install [gcloud] (https://cloud.google.com/sdk/install)
2. Login and set a project
    `gcloud auth login`
    `gcloud config set project <my_project>`
