# Commands
## Containers
kubectl --namespace=data-repo exec -it oidc-proxy-deployment-5f94cb4c56-fzw7t -- /bin/bash

## Contexts
kubectl config get-contexts
kubectl config use-context << context >>

## Deployments
kubectl -n data-repo expose deployment grafana --type=LoadBalancer --namespace=data-repo


## Deploy Changes
kubectl apply <<file name>>
kubectl apply -f ./<<file path and name>>


# GCloud Specific
gcloud container clusters get-credentials << cluster name >> --zone << zone >> --project << project >>

## General
kubectl api-resources
kubectl api-versions
kubectl usage
kubectl util

## Ingress
kubectl delete ingress <<ingress name>>

## Logs
kubectl logs <<pod name>>
kubectl --namespace=<<namespace name>> logs <<pod name>>
kubectl --namespace=data-repo logs oidc-proxy-deployment-54c4c548b7-qrph5

## Nodes
kubectl top nodes

## Pods
kubectl get pods --all-namespaces  
kubectl --namespace=<<namespace name>> get pods --all-namespaces  
kubectl --namespace=dev  get pods -l="app=kafka"
 
kubectl describe pod <<pod name>>
kubectl --namespace=<<namespace name>> describe pod <<pod name>>
kubectl --namespace=data-repo describe pod oidc-proxy-deployment-6dbbb5d788-bkspx

kubectl --namespace=dev delete pods -l="app=kafka"
kubectl delete --namespace=dev pod shell-demo

kubectl --namespace=dev get pvc

## Secrets
kubectl get secrets 
kubectl get secret << secret name >> -o json | jq .data.config -r | base64 --decode

kubectl edit secret -f <<file name>>

### Create TLS Cert in K8s:
kubectl create secret tls << secret name >> --cert=<< cert full chain dir >> --key=<< private key dir >> --namespace=<< namespace >>

### Create Generic Secret in K8s:
kubectl create secret generic $config_secret_name --from-file=config=config.json --from-file=caas_key=caas-dev-key.json

## Services
kubectl get services

## Stateful Sets
kubectl --namespace=dev get statefulset kafka

# bash alias (add to bashrc/ bash_profile?)
alias k=kubectl
