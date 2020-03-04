gcloud compute --project "broad-dsp-techops" ssh --zone "us-central1-a" "dsp-gotc-jenkins-slave-prod102"  -- "sudo docker system prune -a"
lvextend -L+100M vg_docker/docker-pool_tmeta
