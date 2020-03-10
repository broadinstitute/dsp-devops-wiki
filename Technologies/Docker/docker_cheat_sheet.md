To authenticate with gcloud
gcloud auth configure-docker

To enable the docker daemon after a restart:
sudo systemctl enable docker

To disable:
sudo systemctl disable docker


To start/stop/restart:
sudo systemctl start docker

sudo systemctl restart docker

sudo systemctl stop docker


docker rm $(docker ps -qa --no-trunc --filter "status=exited")
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
docker volume ls -qf dangling=true | xargs -r docker volume rm
docker network rm $(docker network ls -q)

docker —version
docker version

docker run --rm -it -v "$PWD":/working -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox ./mkEnv.sh -e dev -p methods

docker run -it --rm -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox vault list secret/dsde/gotc

docker run -it --rm -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox vault-edit PATH-TO-SECRET

docker run --rm -it -v "$PWD":/working -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox ./mkEnv.sh -e prod -p dsp-techops


docker ps -a
docker ps
docker images

docker network ls

docker daemon:
sudo systemctl status docker
sudo systemctl start docker
sudo systemctl stop docker



