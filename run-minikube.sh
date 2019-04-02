#!/bin/bash
if [[ -z $(kubectl get namespaces | grep jenkins) ]]
then
	kubectl create ns jenkins
fi
kubectl config set-context $(kubectl config current-context) --namespace=jenkins
if [[ -z $(kubectl get secrets | grep ssh-key-secret) ]]
then
	kubectl create secret generic ssh-key-secret --from-file=ssh-privatekey=./id_rsa --from-file=ssh-publickey=./id_rsa.pub
fi
if [[ $(kubectl get configmaps --ignore-not-found) ]]
then
	kubectl delete configmaps kube-master
fi
kubectl create configmap kube-master --from-literal=master.url=$(kubectl cluster-info | grep master | grep -o 'https:\/\/[[:alnum:][:punct:]]*')
kubectl apply -f jenkins.yml --validate=false
