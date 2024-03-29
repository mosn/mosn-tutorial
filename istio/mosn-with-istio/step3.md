本教程提供中文版说明，请翻至本页底部。

Use the `default` profile to quickly install istio.

## Setup istio

Specify `MOSN` as the data surface in the `istioctl` command via the parameters of the istioctl command.

`istioctl install --set profile=demo -y --manifests=/root/istio-${ISTIO_VERSION}/manifests --set .values.global.proxy.image="mosnio/proxyv2:v1.0.0-1.10.6" --set meshConfig.defaultConfig.binaryPath="/usr/local/bin/mosn"`{{execute}}

Check that the Kubernetes service is deployed properly and that all services other than the `jaeger-agent` service have the correct `CLUSTER-IP`.

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

`istioctl install --set profile=demo -y --manifests=/root/istio-${ISTIO_VERSION}/manifests --set .values.global.proxy.image="mosnio/proxyv2:v1.0.0-1.10.6" --set meshConfig.defaultConfig.binaryPath="/usr/local/bin/mosn"`{{execute}}


检查 Kubernetes 服务是否部署正常，检查除 `jaeger-agent` 服务外的其他服务，是否均有正确的 `CLUSTER-IP`。


`kubectl get svc -n istio-system`{{execute}}

检查相关 pod 是否部署成功，并且 `STATUS` 为 `Running`：

`kubectl get pods -n istio-system`{{execute}}

如果上述都正常，则表示 istio 已经成功安装，后面就可以部署自己的服务了。

## 后续步骤

部署成功后，就可以进入 Bookinfo 示例了。
