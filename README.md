# condenser-workshop-20260311

Material for Introduction to Condenser workshop on 20260311

## Goals of the workshop

This workshop is designed for developers who are new to Condenser. Developers may have experience installing, configuring, or administering reseach software on Linux systems.

By the end of the workshop, learners will...

- Have created deployments of virtual infrastructure on the Condenser platform
- Have modified and administered their own virtual resources
- Be equipped with a re-usable pattern for a VM deployment
- Be informed on how to learn more about the platform and how to apply for resources to create further projects

This workshop will consist of practical demonstrations of managing deployments of virtual infrastructure through a web GUI, the command line, and by connecting to remote servers with SSH. It is intended that learners will follow along with the workshop from their own workstations, either remotely over Teams or in-person.

Self-guided learners are advised to read this page, then work through the exercises starting from the [Introduction](./instructor_notes/1_Intro_to_the_platform.md).

## Prerequisites

### Knowledge/experience

- Linux command line
- Using and configuring an SSH client

### Equipment

Learners with Linux and MacOS computers can use their native command line applications. Learners with Windows computers can use a linux environment such as WSL or an IDE with a linux command line function such as Visual Studio Code.

### Software

- [Terraform](https://developer.hashicorp.com/terraform/install)
- [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
- An SSH client that can use certificates. Most modern operating systems, including Windows 10+, are equipped with a suitable SSH client.

### Access to Condenser

Learners attending a taught workshop will be provided with instructions for gaining access to Condenser.

Self-guided learners will need to be a member of a tenant. The tenant should have at least 1 vCPU, 8 GB RAM, and 10 GB storage to spare for the resources that will be created during the workshop. To do the web ingress exercise in [Section 3](./instructor_notes/3_deploying_with_terraform.md) requires that web ingress is enabled for the tenant.

Throughout the instructor notes, references are made to the `<WORKSHOP NAMESPACE>` and `<WORKSHOP PROJECT>`. Tenant namespaces on Condenser are of the form `<PROJECT>-ns`. The workshop exercises can be run on any cluster, in any namespace on Condenser, so when you see these tags in the notes please replace them with a namespace and project that you have access to.

## [Advice for instructors](./instructor_notes/README.md)
