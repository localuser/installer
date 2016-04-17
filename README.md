# Docker based setup

## Requirements

* Docker based host
* https://docs.docker.com/compose/install/
* https://aws.amazon.com/cli/

#### Recomended hardware
* 2CPU / 2GB of RAM / 20GB HDD


## Install 

* `git clone https://github.com/mystaff/installer`
* `aws ecr get-login --region us-east-1` (use docker-registry user credentials)
* `docker-compose up -d`


## DNS changes

* retrive IP for the docker host (`docker-machine ip`)
* add hosts into your `/etc/hosts` 

`X.X.X.X api.staff.local app.staff.local admin.staff.local desktop.staff.local`


## Extra
* `docker-compose ps` shows running containers.


