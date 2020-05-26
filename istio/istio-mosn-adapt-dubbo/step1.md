本教程提供中文版说明，请翻至本页底部。

This tutorial will automatically help you start a Kubernetes cluster with 2 nodes (one master node and one worker node), Kubernetes version is v1.14.0.

## Install istio cluster

Download istio install file: `curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.6.0 sh -`{{execute}}

Add directory to your environment path variable with: `export PATH="$PATH:/root/istio-1.6.0/bin"`{{execute}}

Install operator for install cluster: `istioctl operator init`{{execute}}

Install cluster with operator: `istioctl manifest apply --set profile=demo`{{execute}}

Wait a minute later. Check all component start succ for Status `Running`: `kubectl get pods -n istio-system -o wide`{{execute}}

---

本教程将自动帮您启动一个包含2个节点的 Kubernetes 集群（包含一个 master 节点，一个 worker 节点），Kubernetes 版本为 v1.14.0。

## 安装 Istio 集群

下载 Istio 安装文件: `curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.6.0 sh -`{{execute}}

添加文件夹到环境变量: `export PATH="$PATH:/root/istio-1.6.0/bin"`{{execute}}

安装 Operator 用来安装集群: `istioctl operator init`{{execute}}

使用 Operator 安装集群: `istioctl manifest apply --set profile=demo`{{execute}}

等待几分钟，检查所有的组件启动成功，状态都是 `Running`: `kubectl get pods -n istio-system -o wide`{{execute}}
