# Deploying with `kubectl`

## Inspect deployment YAML files

Lets take a look at the YAML file we downloaded in the last section, using your favorite text editor. Identify some of the settings that we configured with Terraform.

## Apply the deployment

First, obtain a kubeconfig file as in the previous section:

> Return to the [Rancher GUI](rancher.condenser.arc.ucl.ac.uk/) in your web browser. Using the menu at left, go to **Virtualization Management**, and tick the box next to the cluster you need to authenticate to. For this workshop, we need `sl-p02`. Then click on **Download KubeConfig**. Take note of the location that your browser downloads the file to. Use your favorite method to move it to a handy location, such as the directory you've been working in.

Before we can apply this deployment, we need to configure `kubectl` to find our kubeconfig file. `kubectl` and the Harvester Terraform provider will look for it in the same environment variable, so we can do as we did in the last section:

``` sh
export KUBECONFIG=$PWD/sl-p02.yaml
```

Then apply the configuration:

``` sh
kubectl apply -f webserver.yaml
```

...and note that your webserver VM comes back up.

## Use `kubectl` to monitor resources

What can I do?

``` sh
kubectl auth can-i --list
kubectl auth can-i --list --namespace=<WORKSHOP NAMESPACE>
```

What about my VM?

``` sh
kubectl --namespace=<WORKSHOP NAMESPACE> get all
kubectl --namespace=<WORKSHOP NAMESPACE> get all | grep <NAME>
kubectl --namespace=<WORKSHOP NAMESPACE> describe vm <NAME>
```

## Use kubectl to modify the VM

``` sh
kubectl --namespace=<WORKSHOP NAMESPACE> get -o yaml vm <NAME>
kubectl --namespace=<WORKSHOP NAMESPACE> edit vm <NAME>
```

## Destroy the deployment

``` sh
kubectl delete -f webserver.yaml
```

[Section 3: Deploying with Terraform](./3_deploying_with_terraform.md) | [Home](../README.md) | [Section 5: Working on Condenser](./5_working_on_condenser.md)
