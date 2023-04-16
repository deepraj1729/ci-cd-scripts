#!/bin/bash

#? Set the image name and tag
gcloud_set_image_tag() {
    export GCR_IMAGE_NAME=$GCLOUD_DOCKER_REGISTRY_HOSTNAME/$GCLOUD_INFRA_CICD_PROJECT_ID/$GCLOUD_DOCKER_REPO_NAME/$SERVICE_IMAGE_NAME
}

#? Build the docker image and set tag
gcloud_docker_build(){
    docker build --no-cache -t $SERVICE_IMAGE_NAME .
    docker tag $SERVICE_IMAGE_NAME $GCR_IMAGE_NAME:$TAG_NAME
}

#? Push to Docker Artifact Registry
gcloud_push_docker_artifact(){
    docker push $GCR_IMAGE_NAME:$TAG_NAME
}


gcloud_set_image_tag
gcloud_docker_build
gcloud_push_docker_artifact