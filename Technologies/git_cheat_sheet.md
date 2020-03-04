git clone git@github.com:<<Organization>>>>/<<repo name>>.git <<alias>>

git rebase -i master

git push --set-upstream origin <<branch name>>

git reset $(git merge-base <<branch to reset to>> <<name of branch being reset>>)


Delete the most recent commit, keeping the work you've done:
git reset --soft HEAD~1

Delete the most recent commit, destroying the work you've done:
git reset --hard HEAD~1


Delete a single file from git history:
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch ./dsp-techops-wildcard-ssl-certificate-red.crt' --prune-empty --tag-name-filter cat -- --all