本教程提供中文版说明，请翻至本页底部。

To access the HTTPBin service, a client is required. The sleep sample application doesn't execute any workload, instead, it allows users to attach and execute bash commands interactively. The container will allow us to test and debug our system.

Deploy a sleep container with `istioctl kube-inject -f samples/sleep/sleep.yaml > sleep.yaml && sed -i "s/\/usr\/local\/bin\/envoy/\/usr\/local\/bin\/mosn/g" . /sleep.yaml`{{execute}}

`kubectl apply -f sleep.yaml`{{execute}}

This gives us access to the Istio deployed applications and internal control plane.

Attach a Bash prompt to the container with `kubectl exec -it $(kubectl get pod -l app=sleep -o jsonpath={.items..metadata.name}) bash`{{execute}}

It's now possible to send cURL commands to other components running within our system.

`curl http://httpbin:8000/get`{{execute}}

The response should be a 200 OK message indicating everything is working as expected. Exit the container to continue.

---

## 安装客户端

要访问HTTPBin服务，需要一个客户端。sleep示例应用程序不执行任何工作负载，而是允许用户以交互方式附加和执行bash命令。该容器将使我们能够测试和调试系统。

使用`istioctl kube-inject -f samples/sleep/sleep.yaml> sleep.yaml && sed -i "s/\/usr\/local\/bin\/envoy/\/usr\/local\/bin\/mosn/g" ./sleep.yaml`{{execute}}

`kubectl apply -f sleep.yaml`{{execute}}

这使我们可以访问Istio部署的应用程序和内部控制平面。

使用`kubectl exec -it $(kubectl get pod -l app=sleep -o jsonpath={.items..metadata.name}) bash`{{execute}}将Bash提示附加到容器。

现在可以将CURL命令发送到系统中运行的其他组件。

`curl http://httpbin:8000/get`{{execute}}

响应应该是200 OK消息，指示一切正常。退出容器继续。
