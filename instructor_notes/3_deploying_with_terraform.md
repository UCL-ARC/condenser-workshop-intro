# Deploying with Terraform

## Obtain a kubeconfig file

> [!WARNING]
> Your kubeconfig file contains a secret token that uses your credentials to authenticate to the Harvester cluster. Do not share it with anyone. If your kubeconfig file is compromised, revoke the key from the [Account and API Keys](https://rancher.condenser.arc.ucl.ac.uk/dashboard/account) page in Rancher.

## Write a terraform module

Create a new, empty directory and three empty files:

``` sh
mkdir terraform
cd terraform
touch main.tf terraform.tf variables.tf
```

Edit `terraform.tf` with your favorite text editor. Add the following text:

``` hcl
terraform {
  required_version = ">= 1.8.5"

  required_providers {
    harvester = {
      source  = "harvester/harvester"
      version = "1.7.0"
    }
  }
}
```

This file constrains the version of terraform required to run the module. It also constrains the version of the Harvester terraform provider.

Save the file, then edit `main.tf`. First add a block to specify the VM image:

``` hcl
data "harvester_image" "img" {
  display_name = "almalinux-10-generic"
  namespace    = "harvester-public"
}
```

Next add a block that describes the VM:

``` hcl
resource "harvester_virtualmachine" "vm" {
  name        = var.name      # name of the VM resources in Harvester
  namespace   = var.namespace # namespace that the VM will be deployed in
  description = "Demo VM"
  hostname    = "demo"

  cpu    = 2
  memory = "16Gi"

  # useful settings which control how the VM boots and details about its resources
  restart_after_update = true
  efi                  = true
  secure_boot          = true
  run_strategy         = "RerunOnFailure"
  reserved_memory      = "100Mi"
  machine_type         = "q35"

  # The disk that the VM will boot from
  disk {
    name       = "rootdisk"
    type       = "disk"
    size       = "30Gi"
    bus        = "virtio"
    boot_order = 1

    image       = data.harvester_image.img.id
    auto_delete = true
  }

  # A required parameter; the name of the first network interface
  network_interface {
    name           = "default"
  }
}
```

Save this file. Finally, edit the `variables.tf` file. Here we will set up variables for the name of the VM and the namespace it should be deployed in.

``` hcl
variable "name" {
  type        = string
  description = "Name of the VM"
}

variable "namespace" {
  type        = string
  description = "Namespace that the VM will be deployed in"
}
```

### Apply this deployment

We can apply this deployment as-is. Lets do so now:

``` sh
terraform validate
terraform apply
> yes
```

You will be prompted for a name for the VM and the namespace to deploy it in.

We can monitor the VM from the Harvester GUI. If we're quick, we can watch some of the boot process from the serial console.

However, this VM is not configured with a GUI of its own, nor is it configured for SSH access. So we have no way to log in and configure it to do anything. Lets destroy this VM and configure the deployment to provide SSH access.

``` sh
terraform destroy
> yes
```

## Configure a VM for SSH access


You can use a `tfvars` file to record variable values. Create a new file named `terraform.tfvars` and populate it with the following data:

``` hcl
name                = "<UNIQUE NAME>"
namespace           = "<WORKSHOP NAMESPACE>"
network_name        = "<WORKSHOP NAMESPACE>/default"
ssh_public_key_data = "<SSH PUBLIC KEY DATA>"
```

> [!NOTE]
> The `network_name` in the `network_interface` block is an ID with the form `NAMESPACE/NAME`. It's a bit of a misnomer.

Then deploy the configuration:

``` sh
terraform validate
terraform apply
> yes
```

> [!WARNING]
> Note that the cloud-init user data in this module is transmitted in plain text with no encryption. In general, do not use cloud-init user data to provision a VM with secrets. For alternatives, you can use Ansible to configure a VM with secrets, or Vault/OpenBao to use ephemeral secrets in Terraform.

The `ip_address` output will contain the IP address assigned via DHCP. If it is not immediately populated, run `terraform apply` again to retrieve the data from the cluster.

Log in to the VM:

``` sh
ssh -J condenser -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null almalinux@<IP ADDRESS>
```

``` sh
terraform destroy
> yes
```

## Configure a VM for web ingress

## Using Terraform to enforce state

### Demonstrate drift

### Back up deployment yaml files for the kubectl section

### Destroy resources

> [!WARNING]
> By default, Terraform state files are stored in plain text with no encryption. If you retrieve a secret from elsewhere and then use it in the module, it may be recorded in the state file. Hashicorp has written advice for [managing sensitive data in your Terraform configuration](https://developer.hashicorp.com/terraform/language/manage-sensitive-data).
