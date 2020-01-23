Kubenetes reference page:


[ArgoCD](https://argoproj.github.io/projects/argo-cd)
- Argo continuous deployment only currently only supports helm v2

[ArgoRollOuts](https://argoproj.github.io/argo-rollouts/)
- Custom CRD for application rollouts with builtin Canary testing

[ArgoWorkFlow](https://argoproj.github.io/argo)
- Custom CRD for workflows and pipelines

[FluxCD Helm Operator](https://github.com/fluxcd/helm-operator)
- Custom CRD for continuous deployment, Supports helm 3
- Docs: https://docs.fluxcd.io/projects/helm-operator/en/latest/

[Vault-Crd](https://github.com/DaspawnW/vault-crd)
- Custom CRD to sync vault secrets to kubesecrets

[Helm](https://github.com/broadinstitute/vault-crd-helm)
- Helm Namespaces: https://github.com/thomastaylor312/helm-namespace
- Helm 3 no longer creates namespaces this plugin will

[CertManager](https://github.com/jetstack/cert-manager)
- Manage ingress tls certs from vault or lastpass with this

[Secret-manager](https://github.com/tuenti/secrets-manager)
- Custom CRD to sync vault secrets to kubesecrets
- Helm charts for install and creation of secrets
  - https://github.com/broadinstitute/datarepo-helm/tree/master/charts/install-secrets-manager
  - https://github.com/broadinstitute/datarepo-helm/tree/master/charts/create-secret-manager-secret

[Helm Secrets](https://github.com/futuresimple/helm-secrets)
- Random untested vault secrets in helm proj

[Vitess](https://vitess.io/)
- Horizontal scaling mysql database for k8s

[CockroachDB](https://www.cockroachlabs.com/product/)
- Horizontal scaling postgres-compatible database for k8s
- https://github.com/cockroachdb/cockroach

[Citus](https://github.com/citusdata/citus)
- Horizontal scaling postgres database
- No kubernetes support yet https://github.com/citusdata/citus/issues/425

[Linkerd](https://linkerd.io/)
- Service mesh for k8s

[Istio](https://istio.io/)
- Service mesh for k8s. Current go-to for kernel stack.

[Helm](http://helm.sh/)
- “de facto standard package manager for the Kubernetes community.”

[Create helm repo](https://tech.paulcz.net/blog/creating-a-helm-chart-monorepo-part-1/)

[Kustomize](https://github.com/kubernetes-sigs/kustomize)
- Kubernetes yaml templating tool
- https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization/

[Chart-Releaser](https://github.com/helm/chart-releaser)
- helps GitHub repos self-host their own chart repos

[Dex](https://github.com/dexidp/dex)
- Pluggable OAuth2 connector with good k8s support

[GitOps Engine](https://github.com/argoproj/gitops-engine)

[ChartMuseum](https://github.com/helm/chartmuseum)
- Alternative to hosting your own index.yaml in github pages for a helm repo
- https://chartmuseum.com/

[Habor](https://github.com/goharbor/harbor)
- Harbor is an open source trusted cloud native registry project that stores, signs, and scans content. Harbor extends the open source Docker Distribution by adding the functionalities usually required by users such as security, identity and management.
- Helm chart https://github.com/goharbor/harbor-helm

[Draft](https://github.com/Azure/draft)
- Draft makes it easier for developers to build applications that run on Kubernetes by doing two main things:
- The draft create command gives developers the artifacts they need to build and run their applications in Kubernetes
- The draft up command builds the container image for an application and deploys it to Kubernetes

[Keel](https://keel.sh/)
- Keel is a tool for automating Kubernetes deployment updates. Keel is stateless, robust and lightweight.

[Netdata](https://github.com/netdata/netdata)
- Netdata is distributed, real-time, performance and health monitoring for systems and applications. It is a highly-optimized monitoring agent you install on all your systems and containers.

[Envoy proxy](https://www.envoyproxy.io/)
- ENVOY IS AN OPEN SOURCE EDGE AND SERVICE PROXY, DESIGNED FOR CLOUD-NATIVE APPLICATIONS
- https://github.com/envoyproxy/envoy

[Rook](https://github.com/rook/rook)
- Rook turns storage software into self-managing, self-scaling, and self-healing storage services. It does this by automating deployment, bootstrapping, configuration, provisioning, scaling, upgrading, migration, disaster recovery, monitoring, and resource management.
