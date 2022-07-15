本教程提供中文版说明，请翻至本页底部。

We implement Sidecar injection by `istioctl kube-inject` in the following way

## Deployment applications

Sidecar injection with `kube-inject`.
`istioctl kube-inject -f samples/bookinfo/platform/kube/bookinfo.yaml > bookinfo.yaml && sed -i "s/\/usr\/local\/bin\/envoy/\/usr\/local\/bin\/mosn/g" ./bookinfo.yaml`{{execute}}

Deploying the Bookinfo application after Sidecar injection.
`kubectl apply -f bookinfo.yaml`{{execute}}

Verify that all services and pods are up and running normally and check their status with the following command.

`kubectl get services`{{execute}}

`kubectl get pods`{{execute}}

When the above status is Running, you can verify that the Bookinfo application is running properly by:

`kubectl exec -it $(kubectl get pod -l app=ratings -o jsonpath='{.items[0].metadata.name}') -c ratings -- curl productpage:9080/productpage | grep -o "<title>.*</title>"`{{execute}}

## Deploy gateway

`kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml`{{execute}}

`kubectl port-forward -n istio-system --address 0.0.0.0 service/istio-ingressgateway 1234:80 >/dev/null 2>&1 &`{{execute}}

## Confirmation installation

It can be viewed by clicking on the following link.

[productpage]({{TRAFFIC_HOST1_1234}}/productpage)

## Next steps

The above operation has completed the meshization of the Bookinfo application, and next we are doing Bookinfo's service governance via Istio.

---

我们通过 `istioctl kube-inject` 的方式实现 Sidecar 注入。

## 部署应用

通过 `kube-inject` 的方式实现Sidecar注入：
`istioctl kube-inject -f samples/bookinfo/platform/kube/bookinfo.yaml > bookinfo.yaml && sed -i "s/\/usr\/local\/bin\/envoy/\/usr\/local\/bin\/mosn/g" ./bookinfo.yaml`{{execute}}

部署注入 `Sidecar` 后的 `Bookinfo` 应用：
`kubectl apply -f bookinfo.yaml`{{execute}}

确认所有服务和 pod 都已经正常启动了，可以通过如下命令查看其状态：

`kubectl get services`{{execute}}

`kubectl get pods`{{execute}}

当上述状态为 `Running` 后，可通过如下方式确认 `Bookinfo` 应用是否正常运行：

`kubectl exec -it $(kubectl get pod -l app=ratings -o jsonpath='{.items[0].metadata.name}') -c ratings -- curl productpage:9080/productpage | grep -o "<title>.*</title>"`{{execute}}

## 部署 ingress

`kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml`{{execute}}

`kubectl port-forward -n istio-system --address 0.0.0.0 service/istio-ingressgateway 1234:80 >/dev/null 2>&1 &`{{execute}}

## 确认访问

可以点击下面的连接查看：

[productpage]({{TRAFFIC_HOST1_1234}}/productpage)

## 后续步骤

上面的操作已经完成了 `Bookinfo` 应用的 mesh 化，接下来我们通过 Istio 来进行 `Bookinfo` 的服务治理。

