#!/bin/sh

export DOCKER_TAG=an_templates:gtlearning
export CONTAINER_NAME=GoogleTestLearning
export APP_NAME=GoogleTestExample

docker container stop $CONTAINER_NAME
docker container rm $CONTAINER_NAME

set -e
echo docker build -t $DOCKER_TAG -f $(pwd)/docker/Dockerfile --build-arg APP_NAME=$APP_NAME .
docker build -t $DOCKER_TAG -f $(pwd)/docker/Dockerfile --build-arg APP_NAME=$APP_NAME .
echo docker run -it --name $CONTAINER_NAME -v $(pwd)/src:/$APP_NAME/src $DOCKER_TAG /bin/bash 
docker run -it --name $CONTAINER_NAME -v $(pwd)/src:/$APP_NAME/src $DOCKER_TAG /bin/bash
