本教程提供中文版说明，请翻至本页底部。

## Run Provider

Create namespace: `kubectl create namespace dubbo-app`{{execute}}

Use yaml install provider: `kubectl apply -f https://raw.githubusercontent.com/champly/mosn/feature-istio-dubbo_adapter/examples/codes/dubbo/xds/provider/install.yaml`{{execute}}

Wait a minute later. Check all provider start succ for Status `Running` and Pod IP not `<none>`: `kubectl get pods -o wide -n dubbo-app -l app=provider`{{execute}}

such as:

```shell
master $ kubectl get pods -o wide -n dubbo-app -l app=provider
NAME                        READY   STATUS    RESTARTS   AGE     IP           NODE     NOMINATED NODE   READINESS GATES
provider-7f5c44bcfc-hp97l   2/2     Running   0          2m37s   10.32.0.11   node01   <none>           <none>
provider-7f5c44bcfc-k9kwk   2/2     Running   0          2m37s   10.32.0.3    node01   <none>           <none>
provider-7f5c44bcfc-l82lx   2/2     Running   0          2m37s   10.32.0.12   node01   <none>           <none>
```

Remember this Pod IP:  10.32.0.11, 10.32.0.3, 10.32.0.12

---

## 运行 Provider

创建 Namespace: `kubectl create namespace dubbo-app`{{execute}}

使用 yaml 文件安装provider: `kubectl apply -f https://raw.githubusercontent.com/champly/mosn/feature-istio-dubbo_adapter/examples/codes/dubbo/xds/provider/install.yaml`{{execute}}

等待几分钟，检查 Provider 运行成功，状态为 `Running`、 Pod IP 不为 `<none>`, `kubectl get pods -o wide -n dubbo-app -l app=provider`{{execute}}

例如:

```shell
master $ kubectl get pods -o wide -n dubbo-app -l app=provider
NAME                        READY   STATUS    RESTARTS   AGE     IP           NODE     NOMINATED NODE   READINESS GATES
provider-7f5c44bcfc-hp97l   2/2     Running   0          2m37s   10.32.0.11   node01   <none>           <none>
provider-7f5c44bcfc-k9kwk   2/2     Running   0          2m37s   10.32.0.3    node01   <none>           <none>
provider-7f5c44bcfc-l82lx   2/2     Running   0          2m37s   10.32.0.12   node01   <none>           <none>
```

记住这些 Pod IP:  10.32.0.11, 10.32.0.3, 10.32.0.12
