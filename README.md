# condenser-workshop-20260311

Material for Introduction to Condenser workshop on 20260311

## Goals of the workshop

This workshop is designed for ARC RIDs, RSEs, and Data Stewards with experience installing, configuring, or administering reseach software on Linux systems.

By the end of the workshop, learners will...

- Have created deployments of virtual infrastructure on the Condenser platform
- Have modified and administered their own virtual resources
- Be equipped with a re-usable pattern for a VM deployment
- Be informed on how to learn more about the platform and how to apply for resources to create further projects

## Prerequisites

This workshop will consist of practical demonstrations of managing deployments of virtual infrastructure through a web GUI, the command line, and by connecting to remote servers with SSH. It is intended that learners will follow along with the workshop from their own workstations, either remotely over Teams or in-person.

Learners with Linux and MacOS computers can use their native command line applications. Learners with Windows computers can use a linux environment such as WSL or an IDE with a linux command line function such as Visual Studio Code.

### Knowledge/experience

- Linux command line
- Using and configuring an SSH client

### Software

- [Terraform](https://developer.hashicorp.com/terraform/install)
- [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
- An SSH client that can use certificates. Most modern operating systems, including Windows, are equipped with a suitable SSH client.

## Before the workshop

- Requests for the Environments team
  - No disruptions on the cluster to be used for the workshop during the time scheduled
  - That an Environments team member is available to help with PRs and TFC applies on the day, e.g. to add last-minute learners to the workshop tenant
- Check that the tenant is suitable for hosting the workshop
  - Resource quota per learner + instructor(s):
    - 1 CPU
    - 8 GB RAM
    - 10 GB disk
  - Web ingress must be enabled
- Instructor needs to set up their workstation for teaching
  - Ensure that they are in the tenant
  - Revoke all current API keys in Rancher
  - Remove any SSH key or VM resources they created in the workshop tenant
  - Revoke and remove any SSH keys or certificates registered with Condenser's SSH bastion
  - Back up and move SSH keys and config
  - Clear old kubeconfig files out of the default download location

## After the workshop

- Instructor should:
  - Revoke API keys in Rancher created for the workshop
  - Revoke and remove any SSH keys or certificates registered with Condenser's SSH bastion
  - Remove any SSH key or VM resources they created in the workshop tenant
  - Restore their SSH config
- If desired, remove learners from the workshop tenant
