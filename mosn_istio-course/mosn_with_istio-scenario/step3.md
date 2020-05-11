使用 `default` 配置快速安装一套 istio。

### 安装 istio 示例

通过 `istioctl` 命令的参数指定 `MOSN` 作为 istio 中的数据面：

`istioctl manifest apply  --set .values.global.proxy.image="mosnio/proxyv2:1.5.2-mosn"   --set meshConfig.defaultConfig.binaryPath="/usr/local/bin/mosn" `{{execute}}

检查 Kubernetes 服务是否部署正常，检查除 `jaeger-agent` 服务外的其他服务，是否均有正确的 `CLUSTER-IP`。

**注意**：这里要观察 `istio-ingressgateway` 的 `EXTERNAL-IP`，如果为 `<pending>`，则环境暂时不能正常提供外部负载均衡，无法使用 ingress gateway。 在这种情况下，可以等待一段时间，如果一段时间后还是 `<pending>` 状态，建议刷新页面，重新开启课程安装 istio：

`kubectl get svc -n istio-system`{{execute}}

检查相关 pod 是否部署成功，并且 `STATUS` 为 `Running`：

**注意**：如果观察到 `prometheus-xxx` 这个 pod 的 `STATUS` 为 `InvalidImageName` 则可以先忽略，这是由于 Istio 中的一个 Bug 导致的，目前修复 [PR](https://github.com/istio/istio/pull/22464) 已经合入主干。

`kubectl get pods -n istio-system`{{execute}}

如果上述都正常，则表示 istio 已经成功安装，后面就可以部署自己的服务了。

### 后续步骤

部署成功后，就可以进入 Bookinfo 示例了。

