#!/bin/bash     
PROJECT_ID="mlopsvertexai-451116"
REGION="us-east1"
REPOSITORY="houseprice"
IMAGE_TAG='training:latest'

# Create repository in the artifact registry
gcloud beta artifacts repositories create $REPOSITORY \
  --repository-format=docker \
  --location=$REGION
 
# Configure Docker
gcloud auth configure-docker $REGION-docker.pkg.dev
 
 # Push
docker push $REGION-docker.pkg.dev/$PROJECT_ID/$REPOSITORY/$IMAGE_TAG
