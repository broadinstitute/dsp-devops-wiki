### Create token
```
vault token create -policy=datarepo-read-testpolicy -display-name=devtesttoken -ttl=43800m
```
### policy creation
```
vault policy list
```
```
vault policy read datarepo-read-testpolicy

path "testpki/issue/testrole" {
  capabilities = ["create", "read", "update"]
}

path "secret/dsde/datarepo/dev/*" {
  capabilities = ["read"]
}
```
### write policy
```
vault write sys/policy/datarepo-dev-write policy=@write-datarepo.hcl
```
### create github team from bits
go to slack github channel and use action and associate teamw with google group

### list teams
```
vault vault read auth/github/map/teams/smark-test --format=json | jq

{
 "request_id": "sakdnsadkjasndkjsandas",
 "lease_id": "",
 "lease_duration": 0,
 "renewable": false,
 "data": {
   "key": "smark-test",
   "value": "datarepo-read-testpolicy,datarepo-write,datarepo-dev-write"
 },
 "warnings": null
}
```
### write to team
```
docker run --rm -it -v "$PWD":/working -v ${HOME}/.vault-token:/root/.vault-token broadinstitute/dsde-toolbox vault-edit auth/github/map/teams/smark-test
```
### create approle
```
vault write auth/approle/role/monster-dev policies=monster-dev-read secret_id_num_uses=0 secret_id_ttl=0
```
### approle get role_id
```
role_id=$(vault read --field role_id auth/approle/role/monster-dev/role-id)
```
### approle get secret_id
```
secret_id=$(vault write --field secret_id -force auth/approle/role/monster-dev/secret-id)
```
### write approle secret to path
```
vault write secret/dsde/monster/dev/approle-monster-dev role_id=${role_id} secret_id=${secret_id}
```
### test approle
```
curl \
    --request POST \
    --data '{"role_id":"< some_role_ID >","secret_id":"< Some_secret_ID >"}' \
    https://clotho.broadinstitute.org:8200/v1/auth/approle/login | jq -r .
    ```
