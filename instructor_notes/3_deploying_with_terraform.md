# Deploying with Terraform

## Obtain a kubeconfig file

> [!WARNING]
> Your kubeconfig file contains a secret token that uses your credentials to authenticate to the Harvester cluster. Do not share it with anyone. If your kubeconfig file is compromised, revoke the key from the [Account and API Keys](https://rancher.condenser.arc.ucl.ac.uk/dashboard/account) page in Rancher.

## Write a terraform module

### Apply this deployment

## Configure a VM for SSH access

> [!WARNING]
> The cloud-init user data in this module is transmitted in plain text with no encryption. In general, do not use cloud-init user data to provision a VM with secrets. `insert advice about what to do instead, probably vault or ansible. we could do a whole other workshop about secrets on Condenser.`

## Configure a VM for web ingress

## Using Terraform to enforce state

### Demonstrate drift

### Back up deployment yaml files for the kubectl section

### Destroy resources

> [!WARNING]
> By default, Terraform state files are stored in plain text with no encryption. If you retrieve a secret from elsewhere and then use it in the module, it may be recorded in the state file. Hashicorp has written advice for [managing sensitive data in your Terraform configuration](https://developer.hashicorp.com/terraform/language/manage-sensitive-data).
