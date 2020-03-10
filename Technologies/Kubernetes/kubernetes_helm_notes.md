Repositories:
Add a repository
	helm repo add

List repos:
	helm repo list

Charts:
Install a chart:
helm init

helm install << chart name >>

To install with specified values:
helm install -f << yaml file >> << chart name >>
helm install --values << yaml file >> << chart name >>

helm install --set << name=value, name2=value2 >> << chart name >>

This allows more complex value placement in yaml.
helm install --set << outer.inner=value >> << chart name >>

Example of setting value within a list:
		helm install --set << servers[0].port=value >> << chart name >>

Search available charts:
helm search hub
Helm search repo 

Inspect charts:
helm inspect chart << chart name >>

helm show values << chart name >>

Create charts:
	helm create << chart name >>

Lint charts:
	helm lint

Package charts:
	helm package << chart name >>


Fetch the files for a chart:
helm fetch << chart name >>

To keep track of a release’s status:
	helm status

To rollback:
	helm rollback << release name >>

To get history:
	helm history << release name >>

To uninstall:
	helm uninstall << chart name >>

Namespaces:
	Helm 3 has an issue where it looks at your local kubectl for the namespace and if none is set uses “default”. To fix this use: kubectl config set-context << NAME >> --namespace=<< namespace >>


Helm is a package manager for Kubernetes. It is maintained by the Cloud Native Computing Foundation (CNCF) in collaboration with Microsoft, Google, and Bitnami.

Helm uses Go templates for templating resource files and includes the functions of the Sprig library and two special functions: include and required. Include allows you to bring in another template and then pass the results to other template functions. Required allows you to declare that particular values entry is required for template rendering.
 
Notes on template rendering: 
Quote strings but do not quote numbers.

Image pull secrets are a combination of the registry, username and password. 

Concepts:
Chart - A Helm package
Repository - A collection of charts
Release - an instance of a chart running on a Kubernetes cluster


Using the include function:
{{ include "toYaml" $value | indent 2 }}
Using the required function:
{{ required "A valid foo is required!" .Values.foo }}
