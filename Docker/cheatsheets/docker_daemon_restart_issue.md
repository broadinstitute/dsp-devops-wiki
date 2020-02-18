******** docker daemon restart issue:
If you see that there is an error which looks like this: 
Error starting daemon: Error initializing network controller: Error creating default \"bridge\" network: cannot create network docker0 (35ab8135ffe08c5ee1841a5290abcb579ce9a9d646741e0a8dd2afa73e2bd106): conflicts with network bdd107199fcd7538be0efa45f9a63b7e2ccc7c007b7ade5a4b64d30cf3b2da34 (docker0): networks have same bridge name"

The way to fix this is to remove the files in the /var/lib/docker/network directory and restart the docker daemon via:
sudo systemctl start docker