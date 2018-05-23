#!/bin/bash 
export MY_SANDBOX_IP=54.90.178.177
export KUBECONFIG=~/.kube/sandbox.conf
kubectl config use-context kubernetes-admin@kubernetes
##Create app

kubectl create -f ./     

##Add to our /ect/hots an entry to make to the url

echo "${MY_SANDBOX_IP}   wordpress-exercise-01.com" | sudo tee -a /etc/hosts

