# Puppet clean

## On the Server:
## SSH into the puppet ca server: 
gcloud beta compute --project "<<project_name>>" ssh --zone "<<zone>>" "cloud-puppet-ca"
gcloud beta compute --project "broad-gotc-dev" ssh --zone "us-central1-a" "cloud-puppet-ca"

Run the puppet clean command. Similar to this:
puppet cert clean <<hostname>>.c.<<project_name>>.internal
puppet cert clean gotc-clio-dev201.c.broad-gotc-dev.internal


## SSH into the puppet agent:
find /var/lib/puppet/ssl -name <<hostname>>.c.<<project_name>>.internal.pem -delete



# To get the confdir for puppet

puppet config print confdir



# Example of how to get some particular configuration values
puppet config print { confdir rundir interval }
OR
puppet config print { confdir ssldir vardir }



# To see the directory for the puppet programs available
ls -l /opt/puppetlabs/bin/
