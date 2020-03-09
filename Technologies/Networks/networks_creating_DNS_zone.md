### Steps for creating DNS at broad

1. Create zone with terraform or gcloud sdk
`gcloud dns managed-zones create datarepo-dev --project broad-jade-dev --dns-name=datarepo-dev.broadinstitute.org --description=<SOME_DESCRIPTION>`

2. find Google DNS servers since they are randomly assigned (both below work)
`gcloud dns record-sets list --zone datarepo-dev --project broad-jade-dev --format json | jq -r '.'`
`gcloud dns managed-zones describe datarepo-dev --project broad-jade-dev --format json | jq -r "."`
3. Make ticket to BITS about creating DNS delegation to your zone and NS

This should be enough for BITS to get the delegation in place
```
    "name": "datarepo-dev.broadinstitute.org.",
    "rrdatas": [
      "ns-cloud-e1.googledomains.com.",
      "ns-cloud-e2.googledomains.com.",
      "ns-cloud-e3.googledomains.com.",
      "ns-cloud-e4.googledomains.com."
      ```
