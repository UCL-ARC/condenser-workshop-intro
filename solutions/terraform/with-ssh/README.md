# Deploying with Terraform

To deploy a virtual machine with SSH and web ingress:

``` sh
git clone git@github.com:UCL-ARC/condenser-workshop-20260311.git
cd condenser-workshop-20260311/solutions/terraform/with-ssh
terraform init
terraform apply -auto-approve
terraform destroy -auto-approve
```
