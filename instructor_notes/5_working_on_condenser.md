# Working on Condenser

## How to apply for a tenant

Use [this form in MyServices](https://io.uk.xurrent.com/cnQ9NDU1Mg) to describe your project and apply for a tenant.

## Resources and further learning

### Templates and modules

#### [terraform-template](https://github.com/UCL-ARC/terraform-template)

An empty template for new Terraform projects.

#### [terraform-harvester-modules](https://github.com/UCL-ARC/terraform-harvester-modules)

A module that can be used to deploy a VM like the ones we've created today. Also includes modules for small kubernetes clusters and clusters on immutable operating systems. Check the [repo's README](https://github.com/UCL-ARC/terraform-harvester-modules/blob/main/README.md#terraform-harvester-modules) to learn how to use these modules, or [Hashicorp's documentation](https://developer.hashicorp.com/terraform/language/modules/configuration) to learn how to use Terraform modules in general.

### Documentation

#### [Condenser](https://condenser.arc.ucl.ac.uk)

The ARC Environments Team's documentation for Condenser.

#### [Terraform configuration language (HCL)](https://developer.hashicorp.com/terraform/language)

Hashicorp's documentation on the HCL configuration language, which is how Terraform code is usually written.

#### [Harvester Terraform provider](https://registry.terraform.io/providers/harvester/harvester/latest/docs)

Harvester's documentation of the Harvester Terraform provider.

#### [kubernetes](https://kubernetes.io/docs/home/)

Documentation of the kubernetes project, including `kubectl`.

#### [Kubevirt](https://kubevirt.io/user-guide/)

Documentation of the Kubevirt project, which Harvester uses to provide VMs on kubernetes.

[Section 4: Deploying with kubectl](./4_deploying_with_kubectl.md) | [Home](../README.md)
