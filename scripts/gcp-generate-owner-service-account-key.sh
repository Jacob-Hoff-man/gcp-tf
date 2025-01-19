#!/bin/bash

# Check if exactly one parameter is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 google-cloud-project-id"
    exit 1
fi

PROJECT_ID = $1

# set the project in cloud shell. 
gcloud config set project $PROJECT_ID

# Creating service account
gcloud iam service-accounts create owner-service-account \
    --description="account with owner permissions" \
    --display-name="owner-service-account"

# Assigning project level owner role to service account
gcloud projects add-iam-policy-binding \ 
someproject --member="serviceAccount:owner-service-account@${PROJECT_ID}.iam.gserviceaccount.com" \
 --role="roles/owner"

# Creating key
gcloud iam service-accounts keys create somesvc.json --iam-account  \
owner-service-account@${PROJECT_ID}.iam.gserviceaccount.com