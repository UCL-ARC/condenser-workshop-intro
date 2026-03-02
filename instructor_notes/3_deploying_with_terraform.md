# Deploying with Terraform

## Obtain a kubeconfig file

> [!WARNING]
> Your kubeconfig file contains a secret token that uses your credentials to authenticate to the Harvester cluster. Do not share it with anyone. If your kubeconfig file is compromised, revoke the key from the [Account and API Keys](https://rancher.condenser.arc.ucl.ac.uk/dashboard/account) page in Rancher.

## Write a terraform module

### Apply this deployment

We can apply this deployment as-is. Lets do so now:

``` sh
terraform validate
terraform apply
> yes
```

We can monitor the VM from the Harvester GUI. If we're quick, we can watch some of the boot process from the serial console.

However, this VM is not configured with a GUI of its own, nor is it configured for SSH access. So we have no way to log in and configure it to do anything. Lets destroy this VM and configure the deployment to provide SSH access.

``` sh
terraform destroy
```

## Configure a VM for SSH access

Log in to the VM:

``` sh
ssh -J condenser -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null almalinux@<IP ADDRESS>
```

> [!WARNING]
> The cloud-init user data in this module is transmitted in plain text with no encryption. In general, do not use cloud-init user data to provision a VM with secrets. `insert advice about what to do instead, probably vault or ansible. we could do a whole other workshop about secrets on Condenser.`

## Configure a VM for web ingress

## Using Terraform to enforce state

### Demonstrate drift

### Back up deployment yaml files for the kubectl section

### Destroy resources

> [!WARNING]
> By default, Terraform state files are stored in plain text with no encryption. If you retrieve a secret from elsewhere and then use it in the module, it may be recorded in the state file. Hashicorp has written advice for [managing sensitive data in your Terraform configuration](https://developer.hashicorp.com/terraform/language/manage-sensitive-data).
