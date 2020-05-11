## 卸载 Istio

执行如下命令，删除 Istio 相关 CRD 以及 pod 等资源：


`istioctl manifest generate  --set .values.global.proxy.image="mosnio/proxyv2:1.5.2-mosn" --set meshConfig.defaultConfig.binaryPath="/usr/local/bin/mosn" | kubectl delete -f -`{{execute}}


确认 Istio 是否成功卸载：

`kubectl get namespace istio-system`{{execute}}

如果有如下字段输出，则说明 Istio 已经成功卸载：

Error from server (NotFound): namespaces "istio-system" not found


至此，我们已经完成了 Bookinfo 和 Istio 的清理工作。
