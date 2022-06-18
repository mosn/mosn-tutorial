本教程提供中文版说明，请翻至本页底部。

This tutorial will automatically help you start a Kubernetes cluster with 2 nodes (one master node and one worker node), Kubernetes version is v1.14.0.

## Check Kubernetes cluster

Check the status of the Kubernetes cluster before using it: `kubectl cluster-info`{{execute}}

Check `katacoda-cloud-provider`, this will affect whether the environment can provide external load balancing properly:

`kubectl get deploy -n kube-system katacoda-cloud-provider`{{execute}}

Some other commands can be executed using the `kubectl` command to check the integrity of Kubernetes clusters.

The Kubernetes cluster is ready for the Istio operations once it starts normally.

---

本教程将自动帮您启动一个包含2个节点的 Kubernetes 集群（包含一个 master 节点，一个 worker 节点），Kubernetes 版本为 v1.14.0。

## 检查 Kubernetes 集群

使用前，请检查 Kubernetes 集群的状态：`kubectl cluster-info`{{execute}}

检查 `katacoda-cloud-provider`，这个会影响到环境是否能正常提供外部负载均衡:

`kubectl get deploy -n kube-system katacoda-cloud-provider`{{execute}}

还可以使用 `kubectl` 命令执行一些其他命令，检查 Kubernetes 集群的完整性。

Kubernetes 集群正常启动后就可进入后面的 Istio 系列操作了。
