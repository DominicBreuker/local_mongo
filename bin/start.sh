#!/bin/bash

script="$0"
FOLDER="$(pwd)/$(dirname $script)"

source $FOLDER/utils.sh
PROJECT_ROOT="$(abspath $FOLDER/..)"
echo "project root folder $PROJECT_ROOT"

########### Provide folder for data ############

DATA_FOLDER=$PROJECT_ROOT/data/db

########### Run MongoDB ############

docker run -dit \
           --name local-mongo \
           -v $DATA_FOLDER:/data/db \
           mongo:3.5.9
