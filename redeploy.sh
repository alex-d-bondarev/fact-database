#!/usr/bin/env bash
echo $GCLOUD_KEY | cat > key.json

gcloud auth activate-service-account cdkata@cdkata-206512.iam.gserviceaccount.com --key-file=key.json
gcloud config set project cdkata-206512
gcloud config set compute/zone asia-east1-b
gcloud container clusters get-credentials cdkata

kubectl delete deployment fact-db  || true
kubectl run fact-db --image=trifanstanislav/fact-database --port 8080
