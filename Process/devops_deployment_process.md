## Tools
#### Terraform
Emerald DevOps will typically deploy most GCP artifacts via terraform. This gives us the ability to have infrastructure as code. Common usages currently include the following.
- GCP specific
  - core networking
  - dns (zones/records)
  - static external ips
  - Gcloud sql
  - kubernetes clusters (GKE)
  - create IAM service accounts
  - manage permissions for IAM accounts
  - manage firewall rules
  - create databases
  - create vms
  - log sinks
- Vault specific
  - write secrets to vault
  - write vault policy rules

#### Kubernetes
Kubernetes is an open-source container-orchestration system for automating application deployment, scaling, and management. It was originally designed by Google, and is now maintained by the Cloud Native Computing Foundation. Emerald is trying to take advantage of running most teams/applications on kubernetes to take advantage of this orchestration over building a platform on docker to alleviate one off code and to take advantage of communal code.
- #### helm
Helm helps you manage Kubernetes applications — Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.
Charts are easy to create, version, share, and publish — so start using Helm and stop the copy-and-paste. Emerald moving forward would like like to utilize helm to eliminate human error in deployment and distribution of kubernetes deployments.
- #### Custom Resource Definition (CRD/Kubernetes Operator)
An Operator is a method of packaging, deploying and managing a Kubernetes application. A Kubernetes application is an application that is both deployed on Kubernetes and managed using the Kubernetes APIs and kubectl tooling.
To be able to make the most of Kubernetes, you need a set of cohesive APIs to extend in order to service and manage your applications that run on Kubernetes. You can think of Operators as the runtime that manages this type of application on Kubernetes. The CustomResourceDefinition API resource allows you to define custom resources. Defining a CRD object creates a new custom resource with a name and schema that you specify. The Kubernetes API serves and handles the storage of your custom resource.
This frees you from writing your own API server to handle the custom resource, but the generic nature of the implementation means you have less flexibility than with API server aggregation.

#### docker
to do

#### Ansible
to do

## Deployment Process
#### Terraform/Kubernetes End state
1. Infrastructure deployments should be in code and ideally reusable code as you are not going to be the first to have done this type of deployment. Some shared Terraform modules can be found [here](https://github.com/broadinstitute/terraform-shared). Terraform is responsible for deploying all GCP artifacts up to when you are actually going to deploy your application to kubernetes itself. Please see above for a list of what DSP DevOps commonly [deploys](#Terraform).

2. Application deployments on kubernetes should be done with `kubectl` and a kubernetes yaml or `helm`. Helm is the de facto application for management on Kubernetes. It is officially a CNCF incubator project and it is the preferred method for deployment of kubernetes applications within DSP. 
