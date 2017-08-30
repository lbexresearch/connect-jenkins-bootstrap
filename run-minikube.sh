#!/bin/bash

minikube start --kubernetes-version v1.7.0
if [[ -z $(kubectl get namespaces | grep jenkins) ]]
then
	kubectl create ns jenkins
fi
kubectl config set-context $(kubectl config current-context) --namespace=jenkins
kubectl apply -f jenkins.yml
