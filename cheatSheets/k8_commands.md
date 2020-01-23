#### Commands
kubectl get pods --all-namespaces   
kubectl describe pod
kubectl top nodes
kubectl usage
kubectl util
kubectl delete --namespace=dev pod shell-demo
kubectl --namespace=data-repo logs oidc-proxy-deployment-54c4c548b7-qrph5
kubectl --namespace=data-repo describe pod oidc-proxy-deployment-6dbbb5d788-bkspx
kubectl --namespace=dev get pvc
kubectl api-versions
kubectl api-resources
kubectl --namespace=data-repo exec -it oidc-proxy-deployment-5f94cb4c56-fzw7t -- /bin/bash
kubectl --namespace=dev get statefulset kafka
kubectl --namespace=dev  get pods -l="app=kafka"
kubectl --namespace=dev delete pods -l="app=kafka"
kubectl -n data-repo expose deployment grafana --type=LoadBalancer --namespace=data-repo


#### bash alias
alias k=kubectl
