# Docker based setup

## Requirements

* https://docs.docker.com/compose/
* https://aws.amazon.com/cli/


## Install 

* `git clone https://github.com/mystaff/installer`
* `aws ecr get-login --region us-east-1` (use docker-registry user credentials)
* `docker-compose up -d`


## DNS changes

* retrive IP for the docker host (`docker-machine ip`)
* add api.staff.local $DOCKER_IP into `/etc/hosts` 


## Extra
* `docker-compose ps` shows running containers.
