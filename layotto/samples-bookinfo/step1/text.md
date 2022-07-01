
Istio has been installed like described [here](https://istio.io/latest/docs/setup/getting-started).

https://istio.io/latest/docs/setup/getting-started

Check the installed version:

```plain
istioctl version
```{{exec}}

<br>

### Sidecar injection
Now we enable the Istio sidecar injection for the `default` *Namespace*:

```plain
kubectl label namespace default istio-injection=enabled --overwrite
```{{exec}}


### Install app
Next we install the [bookinfo sample](https://github.com/istio/istio/tree/master/samples/bookinfo):

```plain
kubectl apply -f /root/istio-1.13.3/samples/bookinfo/networking/virtual-service-all-v1.yaml
kubectl apply -f /root/istio-1.13.3/samples/bookinfo/networking/bookinfo-gateway.yaml
kubectl apply -f /root/istio-1.13.3/samples/bookinfo/networking/destination-rule-all.yaml
kubectl apply -f /root/istio-1.13.3/samples/bookinfo/platform/kube/bookinfo.yaml
kubectl wait deploy --all --for condition=available --timeout=1h
```{{exec}}


### Access app
Now we port-forward to the Istio ingressgateway service:

```plain
kubectl port-forward -n istio-system --address 0.0.0.0 service/istio-ingressgateway 1234:80
```{{exec}}

Finally [ACCESS]({{TRAFFIC_HOST1_1234}}/productpage) the Bookinfo app through Istio <small>(or [select the port here]({{TRAFFIC_SELECTOR}}))</small>.


### More samples
There are also more examples to try in `/root/istio-1.13.3/samples`.
