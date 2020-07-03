本教程提供中文版说明，请翻至本页底部。

A Circuit Breaker is a design pattern that allows systems to define limits and restrictions that protect them from being overloaded. If errors start to happen or too much load for the system to handle is created, the Circuit Breaker is tripped and requests fail in a known, consistent approach. This allows the calling application to handle the errors gracefully.

Without a Circuit Breaker in place, unknown system errors or inconsistencies may appear causing additional problems and unexpected results.

Within the Istio architecture, Envoy Proxy is used to manage traffic between services. As a result, all the functionality available within Envoy is exposed via Istio, such as Envoy's Circuit Breaker. The types include:

Cluster maximum connections: The maximum number of connections that Envoy will establish to all hosts in an upstream cluster.

Cluster maximum pending requests: The maximum number of requests that will be queued while waiting for a ready connection pool connection.

Cluster maximum requests: The maximum number of requests that can be outstanding to all hosts in a cluster at any given time.

Cluster maximum active retries: The maximum number of retries that can be outstanding to all hosts in a cluster at any given time.

In this example, we'll deploy an HTTPBin service. The service echoes the HTTP request as a response, allowing us to identify responses and errors easily.

Deploy the application with `kubectl apply -f <(istioctl kube-inject -f samples/httpbin/httpbin.yaml > httpbin.yaml && sed -i "s/\/usr\/local\/bin\/envoy/\/usr\/local\/bin\/mosn/g" ./httpbin.yaml`{{execute}}

Verify that all services and pods are up and running normally and check their status with the following command.

`kubectl get services`{{execute}}

`kubectl get pods`{{execute}}

When the above status is Running, you can verify that the httpbin application is running properly by:

---

## 部署httpbin client

断路器是一种设计模式，允许系统定义限制和约束，以防止过载。如果错误开始发生或创建了太多的系统无法处理的负载，则断路器会跳闸，并且请求会以已知的一致方法失败。这允许调用应用程序正常处理错误。

如果没有安装断路器，则可能会出现未知的系统错误或不一致，从而导致其他问题和意外结果。

在Istio体系结构中，Envoy代理用于管理服务之间的流量。结果，Envoy内的所有可用功能都通过Istio公开，例如Envoy的Circuit Breaker。类型包括：

群集最大连接数(Cluster maximum connections)：Envoy将建立到上游群集中所有主机的最大连接数。

群集最大未决请求数(Cluster maximum pending requests)：等待就绪连接池连接时将排队的最大请求数。

群集最大请求数(Cluster maximum requests)：在任何给定时间，群集中所有主机可以处理的最大请求数。

群集最大活动重试次数(Cluster maximum active retries)：在任何给定时间，群集中所有主机可以执行的最大重试次数。

在此示例中，我们将部署HTTPBin服务。该服务回显HTTP请求作为响应，使我们能够轻松识别响应和错误。

使用下面命令来部署httpbin `kubectl apply -f <(istioctl kube-inject -f samples/httpbin/httpbin.yaml>httpbin.yaml && sed -i "s/\/usr\/local\/bin\/envoy/\/usr\/local\/bin\/mosn/g" ./httpbin.yaml`{{execute}}

验证所有服务和Pod是否正常运行，并使用以下命令检查它们的状态。验证所有服务和Pod是否正常运行，并使用以下命令检查它们的状态。验证所有服务和Pod是否正常运行，并使用以下命令检查它们的状态。

`kubectl get services`{{execute}}

`kubectl get pods`{{execute}}
