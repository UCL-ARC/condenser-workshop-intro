# Instructor notes

Notes for the instructor to follow during the workshop.

1. [Introduction to the platform](./1_Intro_to_the_platform.md): Overview of the platform guided by navigation of the web GUI. (30 minutes)
1. [Deploying with the Rancher/Harvester GUI](./2_deploying_with_the_GUI.md): How to configure and launch a VM with the GUI. Explains about SSH on Condenser. (30 minutes)
1. [Deploying with Terraform](./3_deploying_with_terraform.md): How to create a re-usable deployment with Terraform. Explains about web ingress and cloud init. (1 hour 15 minutes)
1. [Deploying with `kubectl`](./4_deploying_with_kubectl.md): How to create a re-usable deployment with `kubectl`. Explains about how to monitor resources with `kubectl`. (30 minutes)
1. [Working on Condenser](./5_working_on_condenser.md): Explains how to apply for a tenant and signposts other resources. (10 minutes)

## Recommended schedule

| Start time | Section |
| ---------- | ------- |
| 00:00 | Section 1: Introduction to the platform |
| 00:30 | Section 2: Deploying with the web GUI |
| 01:00 | Break |
| 01:10 | Section 3: Deploying with Terraform |
| 02:25 | Break |
| 02:35 | Section 4: Deploying with kubectl |
| 03:05 | Section 5: Working on Condenser |
| 03:15 | Q&A and buffer time |
| 03:30 | Finish |

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
