# connect-jenkins-bootstrap

## Description
Bootstraps Jenkins and the Kubernetes plugin into a Kubernetes cluster.  
You can follow along using our [Jenkins Bootstrap blog post](http://blog.connect.cd/2017/09/bootstrapping-jenkins-in-a-kubernetes-cluster/), the official [Connect documentation](https://clearpointnz.github.io/connect/#_bootstrapping_jenkins) or the instructions below.

## Installation Instructions
If you just want to try this repo out locally, you can follow the ‘Local Cluster’ instructions below. To install on a remote cluster, follow the ‘Remote cluster’ instructions. There are some subtle but important differences.

### Local cluster
Make sure you have [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) installed
1. Checkout the repository
1. Generate SSH keys in the repository folder `ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -N ""`
1. Add the generated key to your [GitHub account](https://github.com/settings/keys) for Jenkins CI to use
1. Execute `run-minikube.sh`  
1. Port-forward to your new Jenkins pod

### Remote cluster
1. Make sure you have a remote cluster available to deploy into.
1. Checkout the repository
1. Generate SSH keys in the repository folder `ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -N ""`
1. Add the generated key to your [GitHub account](https://github.com/settings/keys) for Jenkins CI to use
1. Execute `run-remote.sh`

----------------------
# Connect
Connect is a Continuous Delivery Platform from [ClearPoint](http://clearpoint.co.nz)  

Connect gathers our best practice approaches to deploying working software into the cloud with confidence.

The main Connect repository is [here](https://github.com/ClearPointNZ/connect)

## Documentation
The main documentation for Connect can be found here: [docs.connect.cd](http://docs.connect.cd)

## Help
Any queries on the Connect platform can be sent here: <connect@clearpoint.co.nz>
