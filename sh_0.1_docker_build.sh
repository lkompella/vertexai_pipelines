#!/bin/bash     
PROJECT_ID="mlopsvertexai-451116"
REGION="us-east1"
REPOSITORY="houseprice"
IMAGE='training'
IMAGE_TAG='training:latest'

docker build -t $IMAGE .
docker tag $IMAGE $REGION-docker.pkg.dev/$PROJECT_ID/$REPOSITORY/$IMAGE_TAG
