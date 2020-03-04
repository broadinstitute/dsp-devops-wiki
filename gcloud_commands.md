### lists all gcp vm types
- `gcloud compute machine-types list`

### lists all kubernetes version for us-central1-a
- `gcloud container get-server-config --zone us-central1-a `

### ssh to vm
- `gcloud compute ssh dsp-monster-jenkins-master-dev201 --project broad-dsp-techops-dev --zone us-central1-a`

### sets project
- `gcloud config set project broad-dsp-emerald-kafka-dev`

### shows gcloud current project
- `gcloud config list`

### scp to vm
- gcloud compute --project "broad-dsp-techops" --zone "us-central1-a" scp ./secops_defectdojo ”dsp-defect-dojo-prod101:/app” --recurse 

### Get gcloud Centos Images
- gcloud compute images list | grep centos
