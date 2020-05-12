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

