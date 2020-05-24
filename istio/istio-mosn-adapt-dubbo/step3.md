本教程提供中文版说明，请翻至本页底部。

## Create ServiceEntry resource

Because not Adapter watch registry centry, use create ServiceEntry replace it.

Install ServiceEntry resource with yaml: `kubectl apply -f https://raw.githubusercontent.com/champly/mosn/feature-istio-dubbo_adapter/examples/codes/dubbo/xds/serviceentry.yaml`{{execute}}

Rewrite provider really ip: `kubectl edit serviceentry dubbo-app-se`{{execute}}

Check ServiceEntry content: `kubectl get serviceentry dubbo-app-se -o jsonpath='{ .spec.endpoints }'`{{execute}}

Must equal provider's Pod IP

such as:

```shell
master $ kubectl get serviceentry dubbo-app-se -o jsonpath='{ .spec.endpoints }'
[map[address:10.32.0.11] map[address:10.32.0.3] map[address:10.32.0.12]]
```

---

## 创建 ServiceEntry 资源

由于没有 Adapter Watch 注册中心，所以使用创建 ServiceEntry 代替

使用 yaml 文件安装 ServiceEntry 资源: `kubectl apply -f https://raw.githubusercontent.com/champly/mosn/feature-istio-dubbo_adapter/examples/codes/dubbo/xds/serviceentry.yaml`{{execute}}

替换 provider 真正的 IP: `kubectl edit serviceentry dubbo-app-se`{{execute}}

检查 ServiceEntry 内容: `kubectl get serviceentry dubbo-app-se -o jsonpath='{ .spec.endpoints }'`{{execute}}

必须等于 provider 的 Pod IP

例如:

```shell
master $ kubectl get serviceentry dubbo-app-se -o jsonpath='{ .spec.endpoints }'
[map[address:10.32.0.11] map[address:10.32.0.3] map[address:10.32.0.12]]
```
