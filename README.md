# fact-database [![Build Status](https://travis-ci.org/CyborTronik/fact-database.svg?branch=master)](https://travis-ci.org/CyborTronik/fact-database)
Training for CI/CD


* GCloud create  account
* Enable Kubernates
* install or use container with google/cloud-sdk
>>> login `gcloud auth login`
>>> Setup project id
>>>	Setup zone
>>>	create cluster with one node
>>> Deploy service 
`kubectl run  fact-db --image=trifanstanislav/fact-database --port 8080 --expose`

* Redeploy:
kubectl delete deployment fact-db
kubectl run  fact-db --image=trifanstanislav/fact-database --port 8080 --expose
