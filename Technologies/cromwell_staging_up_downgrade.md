## Downgrading to v34 from v36 with clean database

### Connect to database
`docker run --rm -it -v "$PWD":/working -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox mysql-connect.sh -p gotc -e staging -a cromwell`

drop database cromwell;
create database cromwell;

### ssh to cromwell staging instance

`gcloud compute ssh gotc-cromwell-staging101 --project broad-gotc-staging --zone us-central1-a`

### gain root access
`sudo -s`

### check docker running jobs
`docker ps`
### stop all containers begging with cromwell
`docker-compose -f docker-compose.yml -p cromwell stop`
### clean up all docker remnants
`docker-compose -f docker-compose.yml -p cromwell rm -f`
###  edit version of cromwell container being used
`vim docker-compose.yml`
### check and clear logs
`ls -al /local/cromwell_logs/cromwell/`
`rm /local/cromwell_logs/cromwell/cromwell`
### bring up new container with v34
`docker-compose -f docker-compose.yml -p cromwell up -d`
### follow statup logs for errors
`tail -f /local/cromwell_logs/cromwell/cromwell`

### verify everyhting is running by curling status
https://cromwell.gotc-staging.broadinstitute.org
/engine/{version}/status
/engine/{version}/version
/api/workkflows/{version}/query


## Upgrading cromwell from v34 to v36

### check jobbs running
https://cromwell.gotc-staging.broadinstitute.org
/api/workkflows/{version}/query

### ssh to cromwell staging instance

`gcloud compute ssh gotc-cromwell-staging101 --project broad-gotc-staging --zone us-central1-a`

### gain root access
`sudo -s`

### check docker running jobs
`docker ps`
### stop all containers begging with cromwell
`docker-compose -f docker-compose.yml -p cromwell stop`
### clean up all docker remnants
`docker-compose -f docker-compose.yml -p cromwell rm -f`
###  edit version of cromwell container being used
`vim docker-compose.yml`
### check and clear logs
`ls -al /local/cromwell_logs/cromwell/`
`rm /local/cromwell_logs/cromwell/cromwell`
### bring up new container with v36
`docker-compose -f docker-compose.yml -p cromwell up -d`
### follow statup logs for errors
`tail -f /local/cromwell_logs/cromwell/cromwell`

### verify everyhting is running by curling status
https://cromwell.gotc-staging.broadinstitute.org
/engine/{version}/status
/engine/{version}/version
/api/workkflows/{version}/query




## Cromwell verioning
https://github.com/broadinstitute/cromwell
Branch version + last commit
ie: 37-2ce5910
