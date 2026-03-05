# Introduction to the platform

Condenser is a private cloud platform for UCL. It provides virtualised computing resources for UCL-affiliated research and educational purposes. All of Condenser's hardware is maintained by the ARC Infrastructure team, while the ARC Environments team is responsible for building, configuring, and maintaining the software and virtual components of the platform.

In particular, we run Rancher and Harvester to govern access to the platform and provide virtual resources to tenants.

## Logging in to the Rancher/Harvester GUI

Log in to the platform at https://rancher.condenser.ucl.ac.uk.

Rancher governs access to the platform and controls your role and the permissions you have. But the dashboard is not very informative for our purposes. Click on **Virtualization Management** to see a list of clusters that you have access to.

Some of you may see two clusters listed; `sl-p02` and `sl-g02`. The `sl-p02` cluster is for CPU workloads while the `sl-g02` is for GPU workloads. For this workshop we'll be using `sl-p02`. Click on `sl-p02` to view the Harvester dashboard for this cluster.

## Structure of the platform

Condenser consists of several Harvester clusters; we have already referenced `sl-p02` and `sl-g02`, but there are others (and more on the way). Under the hood, a Harvester cluster is a kubernetes cluster. Several tools are installed on the cluster so that it can interface with Rancher and serve virtual machines and other resources. In this workshop we'll show you how to work with the `sl-p02` cluster in three different ways: from this GUI, with Terraform, and with `kubectl`.

## Tenant resources

## Finding your cluster

## Finding your resources
