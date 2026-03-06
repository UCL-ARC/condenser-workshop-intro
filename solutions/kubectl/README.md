# Deploying with `kubectl`

Before applying this solution, fill out the template with the following information:

``` text
<UNIQUE VOLUME NAME>
<HOSTNAME>
<UNIQUE VM NAME>
<WORKSHOP NAMESPACE>
<SSH PUBLIC KEY DATA>
```

``` sh
git clone git@github.com:UCL-ARC/condenser-workshop-20260311.git
cp condenser-workshop-20260311/solutions/webserver-templated.yaml.tmpl ./webserver.yaml
vi ./webserver.yaml
kubectl apply -f ./webserver.yaml
kubectl delete -f ./webserver.yaml
```
