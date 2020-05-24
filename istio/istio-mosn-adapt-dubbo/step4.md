本教程提供中文版说明，请翻至本页底部。

## Run Consumer

Use yaml install consumer: `kubectl apply -f https://raw.githubusercontent.com/champly/mosn/feature-istio-dubbo_adapter/examples/codes/dubbo/xds/consumer/install.yaml`{{execute}}

Wait a minute later. Check all consumer start succ for Status `Running`: `kubectl get pods -o wide -n dubbo-app -l app=consumer`{{execute}}

---

## 运行 Consumer

使用 yaml 文件安装 consumer: `kubectl apply -f https://raw.githubusercontent.com/champly/mosn/feature-istio-dubbo_adapter/examples/codes/dubbo/xds/consumer/install.yaml`{{execute}}

等待几分钟，检查 Consumer 运行成功，状态为 `Running`: `kubectl get pods -o wide -n dubbo-app -l app=consumer`{{execute}}
