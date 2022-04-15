本教程提供中文版说明，请翻至本页底部。

## Uninstall Istio

Execute the following command to delete the Istio-related CRD and resources such as pods.

`istioctl manifest generate | kubectl delete -f -`{{execute}}

Confirm that Istio was successfully uninstalled.

`kubectl get namespace istio-system`{{execute}}

Istio has been successfully uninstalled if you can see the followin output.

Error from server (NotFound): namespaces "isso-system" not found

At this point, we have completed the cleanup of Bookinfo and Istio.

---

## 卸载 Istio

执行如下命令，删除 Istio 相关 CRD 以及 pod 等资源：


`istioctl manifest generate | kubectl delete -f -`{{execute}}


确认 Istio 是否成功卸载：

`kubectl get namespace istio-system`{{execute}}

如果有如下字段输出，则说明 Istio 已经成功卸载：

Error from server (NotFound): namespaces "istio-system" not found


至此，我们已经完成了 Bookinfo 和 Istio 的清理工作。
