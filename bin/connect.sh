#!/bin/bash

script="$0"
FOLDER="$(pwd)/$(dirname $script)"

source $FOLDER/utils.sh
PROJECT_ROOT="$(abspath $FOLDER/..)"
echo "project root folder $PROJECT_ROOT"

########### Config ############

CONTAINER_NAME=thoth-mongo

##### Check if MongoDB is running #####

if [ ! "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
  echo "MongoDB must be running to connect. Please run 'bin/start.sh' first..."
  exit 1
fi

########### Run MongoDB ############

docker exec -it \
            $CONTAINER_NAME \
            mongo
