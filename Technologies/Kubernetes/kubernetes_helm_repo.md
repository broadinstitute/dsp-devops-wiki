## How to create a helm repo

[Source article](https://tech.paulcz.net/blog/creating-a-helm-chart-monorepo-part-1/)

[Chart releaser](https://github.com/helm/chart-releaser)

[github pages](https://pages.github.com/)

[helm](https://helm.sh/docs/intro/install/)
### Prerequisites
- [helm](https://helm.sh/docs/intro/install/)
- github account
- [github pages](https://pages.github.com/)
- [Chart releaser](https://github.com/helm/chart-releaser)
- [helm](https://helm.sh/docs/intro/install/)

### Broad specific Commands used
```
Helm package charts/{datarepo-api,datarepo-ui,oidc-proxy,serviceaccount-psp} --destination .deploy
```
```
cr upload -o  broadinstitute -r datarepo-helm -p .deploy -t <some_github_token>
```
```
git checkout gh-pages
```
```
cr index -i ./index.yaml -p .deploy --owner broadinstitute -r datarepo-helm -c https://broadinstitute.github.io/datarepo-helm/
```
```
git add index.yaml
```
```
git commit -m 'release 0.1.0'
```
```
git push origin gh-pages
```
## post update
- run `helm repo update`
- run `helm dependency update charts/datarepo`
### Issues when releasing
If chart.yaml has dependencies you must release the sub application first and run a dependency update
```Helm package charts/datarepo --destination .deploy -u```
or
```helm dependency update charts/datarepo```
```Helm package charts/datarepo --destination .deploy```


### wrapper script by Dan M.
[code here](https://raw.githubusercontent.com/broadinstitute/monster-helm/master/hack/publish-charts)
