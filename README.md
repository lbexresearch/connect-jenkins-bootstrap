# connect-jenkins-bootstrap

## Description
Bootstraps for Jenkins and the Kubernetes plugin into a Kubernetes cluster.  
Follow along with [Connect's](http://connect.cd) posts:
* [Jenkins bootstrap blog](http://blog.connect.cd/2017/09/bootstrapping-jenkins-in-a-kubernetes-cluster/)
* [Jenkins bootsrap documentation](https://clearpointnz.github.io/connect/#_bootstrapping_jenkins) 
* the instructions below.

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
[Connect](http://connect.cd) is a Continuous Delivery Platform that gathers best practice approaches for deploying working software into the cloud with confidence.

The main documentation for [Connect](http://connect.cd) can be found at [docs.connect.cd](http://docs.connect.cd)

Any queries on the [Connect](http://connect.cd) platform can be sent here: <connect@clearpoint.co.nz>
