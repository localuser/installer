#!/bin/bash

rm -r build; mkdir build; cd build

# building API SERVER
git clone https://github.com/mystaff/api-server; cd api-server
docker build -t staff-api-server .
docker tag staff-api-server:latest 847166803921.dkr.ecr.us-east-1.amazonaws.com/staff-api-server:latest
docker push 847166803921.dkr.ecr.us-east-1.amazonaws.com/staff-api-server:latest
echo "API - DONE"; cd ..

# building ADMIN APP
git clone https://github.com/mystaff/app-admin; cd app-admin
docker build -t staff-app-admin .
docker tag staff-app-admin:latest 847166803921.dkr.ecr.us-east-1.amazonaws.com/staff-app-admin:latest
docker push 847166803921.dkr.ecr.us-east-1.amazonaws.com/staff-app-admin:latest
echo "ADMIN APP - DONE"; cd ..

# building WEB APP
git clone https://github.com/mystaff/app-web; cd app-web
docker build -t staff-app-web .
docker tag staff-app-web:latest 847166803921.dkr.ecr.us-east-1.amazonaws.com/staff-app-web:latest
docker push 847166803921.dkr.ecr.us-east-1.amazonaws.com/staff-app-web:latest
echo "WEB APP - DONE"; cd ..

# building DESKTOP APP
git clone https://github.com/mystaff/app-desktop
docker build -t staff-app-desktop .
docker tag staff-app-desktop:latest 847166803921.dkr.ecr.us-east-1.amazonaws.com/staff-app-desktop:latest
docker push 847166803921.dkr.ecr.us-east-1.amazonaws.com/staff-app-desktop:latest
echo "DESKTOP APP - DONE"; cd ..
