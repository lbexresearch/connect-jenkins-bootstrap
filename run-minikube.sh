#!/bin/bash

minikube start --kubernetes-version v1.7.0
if [[ -z $(kubectl get namespaces | grep jenkins) ]]
then
	kubectl create ns jenkins
fi
kubectl config set-context $(kubectl config current-context) --namespace=jenkins
if [[ -z $(kubectl get secrets | grep ssh-key-secret) ]]
then
	kubectl create secret generic ssh-key-secret --from-file=ssh-privatekey=./id_rsa --from-file=ssh-publickey=./id_rsa.pub
fi
kubectl apply -f jenkins.yml
