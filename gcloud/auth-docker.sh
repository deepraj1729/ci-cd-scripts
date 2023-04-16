#!/bin/bash

#? Docker Auth
gcloud auth print-access-token | docker login -u oauth2accesstoken --password-stdin https://$GCLOUD_DOCKER_REGISTRY_HOSTNAME