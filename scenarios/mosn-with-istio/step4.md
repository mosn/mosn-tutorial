本教程提供中文版说明，请翻至本页底部。

Originally, Sidecar auto-injection could be implemented by kubectl label namespace default istio-injection=enabled, but since Istio-1.5.x version is not perfect enough for auto-hijacking in specified data surface scenarios, we implement Sidecar injection by istioctl kube-inject in the following way

## Deployment applications

Sidecar injection with `kube-inject`.
`istioctl kube-inject -f samples/bookinfo/platform/kube/bookinfo.yaml > bookinfo.yaml && sed -i "s/\/usr\/local\/bin/envoy/\/usr\/local\/bin\/mosn/g" . /bookinfo.yaml`{{execute}}

Deploying the Bookinfo application after Sidecar injection.
`kubectl apply -f bookinfo.yaml`{{execute}}

Verify that all services and pods are up and running normally and check their status with the following command.

`kubectl get services`{{execute}}

`kubectl get pods`{{execute}}

When the above status is Running, you can verify that the Bookinfo application is running properly by:

`kubectl exec -it $(kubectl get pod -l app=ratings -o jsonpath='{.items[0].metadata.name}') -c ratings -- curl productpage:9080/productpage | grep -o "<title>. *</title>"`{{execute}}

## Deploy gateway

Definition Ingress gateway.

`kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml`{{execute}}

Confirm the successful creation of the gateway.

`kubectl get gateway`{{execute}}

Set ingress IP.

`export INGRESS_HOST=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')`{{execute}

Set ingress port.

`export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[? (@.name=="http2")].port}')`{{execute}

Set `GATEWAY_URL`.

`export GATEWAY_URL=$INGRESS_HOST:$INGRESS_PORT`{{execute}}

## Confirmation installation

The curl command can be used to confirm that the Bookinfo application can be accessed from outside the cluster:.

`curl -s http://${GATEWAY_URL}/productpage | grep -o "<title>. *</title>"`{{execute}}

It can be viewed by clicking on the following link.

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage

## Next steps

The above operation has completed the meshization of the Bookinfo application, and next we are doing Bookinfo's service governance via Istio.

---

原本可以通过 `kubectl label namespace default istio-injection=enabled` 命令实现 Sidecar 的自动注入，但是由于 Istio-1.5.x 版本在指定数据面的场景下自动劫持不够完善，所以下面我们通过 `istioctl kube-inject` 的方式实现 Sidecar 注入。

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

定义 Ingress 网关：

`kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml`{{execute}}

确认网关成功创建：

`kubectl get gateway`{{execute}}

设置 ingress IP：

`export INGRESS_HOST=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')`{{execute}}

设置 ingress 端口：

`export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].port}')`{{execute}}

设置 `GATEWAY_URL`：

`export GATEWAY_URL=$INGRESS_HOST:$INGRESS_PORT`{{execute}}

## 确认访问

可以用 curl 命令来确认是否能够从集群外部访问 `Bookinfo` 应用程序：

`curl -s http://${GATEWAY_URL}/productpage | grep -o "<title>.*</title>"`{{execute}}

可以点击下面的连接查看：

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage

## 后续步骤

上面的操作已经完成了 `Bookinfo` 应用的 mesh 化，接下来我们通过 Istio 来进行 `Bookinfo` 的服务治理。

