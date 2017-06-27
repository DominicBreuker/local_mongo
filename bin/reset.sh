#!/bin/bash

script="$0"
FOLDER="$(pwd)/$(dirname $script)"

source $FOLDER/utils.sh
PROJECT_ROOT="$(abspath $FOLDER/..)"
echo "project root folder $PROJECT_ROOT"

########### Config ############

CONTAINER_NAME=local-mongo
DATA_FOLDER=$PROJECT_ROOT/data/db

##### Check if MongoDB is running #####

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
  echo "MongoDB is running. Please run 'bin/stop.sh' first and then reset data..."
  exit 1
fi

########### Run MongoDB ############

echo "Do you want to delete all files and folders in '$DATA_FOLDER' - type YES to confirm:"
read CONFIRMATION

if [ $CONFIRMATION = "YES" ]; then
  echo "doing it!";
  rm -rf $DATA_FOLDER
else
  echo "aborting...";
fi
