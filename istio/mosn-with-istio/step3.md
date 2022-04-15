本教程提供中文版说明，请翻至本页底部。

Use the `default` profile to quickly install istio.

## Setup istio

Specify `MOSN` as the data surface in the `istioctl` command via the parameters of the istioctl command.

`istioctl manifest apply --set .values.global.proxy.image="mosnio/proxyv2:v1.0.0-1.10.6" --set meshConfig.defaultConfig.binaryPath="/usr/local/bin/mosn"`{{execute}}

Check that the Kubernetes service is deployed properly and that all services other than the `jaeger-agent` service have the correct `CLUSTER-IP`.

**Note**: Here to observe the `EXTERNAL-IP` of `istio-ingressgateway`, if it is `<pending>`, the environment is temporarily unable to provide external load balancing properly and cannot use ingress gateway. In this case, you can wait for some time, if after some time it is still `<pending>` state, it is recommended to refresh the page and reopen the course:

`kubectl get svc -n istio-system`{{execute}}

Check that the pod in related has been successfully deployed and that `STATUS` is `Running`.

`kubectl get pods -n istio-system`{{execute}}

If all of the above is normal, then the istio has been successfully installed and is ready to deploy its own service later.

## Next steps

Once the deployment is successful, you can go to the Bookinfo example.

---

使用 `default` 配置快速安装一套 istio。

## 安装 istio 示例

通过 `istioctl` 命令的参数指定 `MOSN` 作为 istio 中的数据面：

`istioctl manifest apply  --set .values.global.proxy.image="mosnio/proxyv2:v1.0.0-1.10.6"   --set meshConfig.defaultConfig.binaryPath="/usr/local/bin/mosn" `{{execute}}

检查 Kubernetes 服务是否部署正常，检查除 `jaeger-agent` 服务外的其他服务，是否均有正确的 `CLUSTER-IP`。

**注意**：这里要观察 `istio-ingressgateway` 的 `EXTERNAL-IP`，如果为 `<pending>`，则环境暂时不能正常提供外部负载均衡，无法使用 ingress gateway。 在这种情况下，可以等待一段时间，如果一段时间后还是 `<pending>` 状态，建议刷新页面，重新开启课程安装 istio：

`kubectl get svc -n istio-system`{{execute}}

检查相关 pod 是否部署成功，并且 `STATUS` 为 `Running`：

`kubectl get pods -n istio-system`{{execute}}

如果上述都正常，则表示 istio 已经成功安装，后面就可以部署自己的服务了。

## 后续步骤

部署成功后，就可以进入 Bookinfo 示例了。
