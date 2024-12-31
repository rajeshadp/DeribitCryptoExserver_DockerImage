steps to execute image
=========================

step 1) download websocker_server_DockerImage.tar 

step 2) to load this image to your docker environment
 
sudo docker load -i websocker_server_DockerImage.tar

step 3) verify if image properly loaded

sudo docker images

step 4) create a container from above image

sudo docker run -p 9002:9002 websocket_server      (Server should be up now, accepting connection on port 9002)

steps to build & execute Dockerfile
======================================

step 1) Download & copy Dockerfile to folder with my websocket code. (i.e. to folder where you unzip code shared by me earlier)

step 2) build the Docker image

sudo docker build -t websocket_server .

step 3) create a container from above image

sudo docker run -p 9002:9002 websocket_server     (Server should be up now, accepting connection on port 9002)
