General commands
terraform plan --target << resource name >> --out << plan name >>

terraform apply plan

terraform --version

Terraform taint << resource name >>

Print out kubernetes resources: 
./terraform.sh show | grep -E "^kubernetes" > show.txt

 

Broad docker specific commands

docker run --rm -it -v "$PWD":/working -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox ./mkEnv.sh -e dev -p methods

docker run -it --rm -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox vault list secret/dsde/gotc

docker run -it --rm -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox vault-edit PATH-TO-SECRET

docker run --rm -it -v "$PWD":/working -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox ./mkEnv.sh -e prod -p dsp-techops

		./terraform.sh remote config-backend-config="name=broadinstitute/methods-dev"
./terraform.sh remote pull


To render environment specific files:
docker run --rm -it -v "$PWD":/working -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox ./mkEnv.sh -e prod -p dsp-techops

NOTES: 

Terraform: Kubernetes clusters may give weird EOF errors if you use old google-beta providers
