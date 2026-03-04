# Deploying with `kubectl`

## Inspect deployment yaml files

Lets take a look at the YAML file we downloaded in the last section, using your favorite text editor. Identify some of the settings that we configured with Terraform.

## Apply the deployment

Before we can apply this deployment, we need to configure our kubeconfig file. `kubectl` and the Harvester Terraform provider will look for it in the same environment variable, so we can do as we did in the last section:

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
