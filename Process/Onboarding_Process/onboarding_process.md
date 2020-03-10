# Getting Started in DevOps at the Broad

Welcome to the DevOps team here are some high level things you'll want to do to get started. If anything is unclear, please ask your other team members. Nobody minds questions! We want to help and also get to know you. Let's start working together! Also, please feel free to edit this page. The next person we bring onboard will thank you.

## General First Week items
- Orientation
- [Myworkday Task Completion](https://www.myworkday.com/broadinstitute/d/home.htmld)
- [Join Broad Slack](https://intranet.broadinstitute.org/bits/service-catalog/applications/slack-0)
- [Enable Broad 2FA](https://intranet.broadinstitute.org/news/hurray-2fa)
- Human subjects training
- VPN setup
  - On Macs, BITS should have installed "Cisco AnyConnect" for you
Open that, and connect to "vpn.broadinstitute.org"
  - When prompted, enter your Broad username and password
  - For your "Second" password or "Duo Passcode", type "push" (This should send a Duo 2fa Push Notification to your phone)

## General DevOps Specific items

  The Devops team here is utilizing certain technologies and taking some time to install these particular things on your new laptop will be a good time save for when you are going to have to tackle tasks pertaining to these technologies.

### DevOps MacBookPro Specific items

If you are using a MBP you'll likely want to install some of the following items. The majority of it can be simplified by using [HomeBrew](https://brew.sh/), you are welcome to use what ever means you'd like to install any of these items but [HomeBrew](https://brew.sh/) is what I have been using as a package manager for sometime.

  - [Install HomeBrew](https://brew.sh/)

We use [github](https://github.com/) for the majority of our version tracking changes within a particular repository. You can either use your current username if you choose to or create a broad specific username.
- After you have create a user account. [Setup your ssh key setup](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
- To install git on your MacBookPro you will want to run ```brew install git```

Our primary cloud provider is [Google Cloud](https://cloud.google.com/) you will want to install the G Cloud SDK
- [Install Google Cloud SDK](https://cloud.google.com/sdk/docs/quickstart-macos)
Along with dealing with VM instances we do create and deploy containers. You will want to have Docker installed on your new MacBookPro.

You will want to install Docker, we do full VM instances along with containers on Docker or Kubernetes but for now you will want Docker on your laptop.
- [What heck is Docker and Kubernetes anyways?](https://www.sumologic.com/blog/devops/kubernetes-vs-docker/)
- [Install Docker](https://hub.docker.com/editions/community/docker-ce-desktop-mac)
- [Kubernetes Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

Deploying stuff to [GCP](https://cloud.google.com/) will be accomplish by utilizing [Terraform](https://www.terraform.io/). We will want to install [Terraform](https://www.terraform.io/) locally on your laptop for now but the majority the jobs you will run will be from a docker container with terraform installed on it.
- [Download Terraform](https://www.terraform.io/downloads.html)
  - [install Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)

Within our Terraform configs we use passwords but ideally do not want them in plaintext in config to we will use [HashiCorp Vault](https://www.vaultproject.io/) to store and hide them.
- [Download Vault](https://www.vaultproject.io/downloads.html)
  - [Install Vault](https://www.vaultproject.io/docs/install/#precompiled-binaries)


  You will also want some sort of IDE what ever you would like to use is up to you but here are some suggestions for editors.
   - [Editors & IDEs](https://haxe.org/documentation/introduction/editors-and-ides.html#vim)

Myself I use Atom but know others use IntelliJ.
   - [Atom](https://atom.io/)
   - [IntelliJ](https://www.jetbrains.com/idea/)

## Useful Links

#### Broad Generic links
- [Broad Google Group](https://groups.google.com/a/broadinstitute.org)
- [Broad Atlassian](https://broadinstitute.atlassian.net)
- [Broad Github](https://github.com/broadinstitute)
- [Broad Intranet](https://intranet.broadinstitute.org)
- [Github 2FA](https://broad-github.appspot.com/#)
- [MBTA T Pass sign up](https://intranet.broadinstitute.org/faq/how-can-i-sign-t-pass-0)
- [Google Cloud Console](https://console.cloud.google.com/)
- [New Employee Checklist](https://intranet.broadinstitute.org/work/welcome-broad)
- [Building Map/People Finder](https://tableau.broadinstitute.org/views/BroadMap/BroadMap?:embed=yes)


#### DSP Specific links
- [DSP Short Links](https://broadinstitute.atlassian.net/wiki/spaces/DSDEGP/pages/335577301/A+whole+bunch+of+mostly+self-explanatory+shortlinks)
- [DSP Vault Configuration](https://broadinstitute.atlassian.net/wiki/spaces/DO/pages/113874856/Vault)
- [Kaban Board](https://broadinstitute.atlassian.net/secure/RapidBoard.jspa?projectKey=DSPTO&rapidView=144)

#### DSP other Teams on board pages (reading through these may have repeat info but definitely worth a read)
- [DSDE Pipelines](https://broadinstitute.atlassian.net/wiki/spaces/DSDEGP/pages/116301637/Getting+Started+in+DSDE+Pipelines)
- [Emerald Empire](https://broadinstitute.atlassian.net/wiki/spaces/DSDEGP/pages/110690431/Getting+Started+in+the+Emerald+Empire)
- [New Developer Guide](https://broadinstitute.atlassian.net/wiki/spaces/GAWB/pages/68518231/Hello+new+developer)
- [Monster](https://broadinstitute.atlassian.net/wiki/spaces/DSDEGP/pages/628129814/Getting+Started+in+the+Monster+Data+Centers+Team)
- [Jade](https://broadinstitute.atlassian.net/wiki/spaces/DSDEGP/pages/665288783/Getting+Started+in+the+Jade+Data+Repository+Team)
- [Mint](https://broadinstitute.atlassian.net/wiki/spaces/DSDEGP/pages/116301847/Getting+Started+in+the+Mint+Team)

#### Jenkins Instances

- [DSDE](https://dsde-jenkins.broadinstitute.org/)
- [Monster](https://monster-jenkins.dsp-techops.broadinstitute.org)
- [GOTC](https://gotc-jenkins.dsp-techops.broadinstitute.org/)

#### Dashboards

- [Graphana](https://metrics.data.humancellatlas.org/d/v4-0_FWiz/dcp-health-prod?refresh=1m&orgId=1)
- [Kibana](https://logs.dev.data.humancellatlas.org)