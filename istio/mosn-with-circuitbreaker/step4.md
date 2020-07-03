本教程提供中文版说明，请翻至本页底部。

Within Istio, the traffic and networking approaches can be updated and modified based on requirements.

As discussed in the Connecting and Controlling Istio scenarios, Virtual Services direct the traffic flow to which version of the component(s) should handle the request. Destination Rules configure the network and load balancing of the traffic. With a Destination Rule it's possible to implement a Circuit Breaker to restrict the number of concurrent requests to a service.

The Destination Rule below has two Circuit Breakers that can trigger. The first is a Connection Pool that limits the maximum TCP connections to 1, and a maximum of 1 HTTP request per connection.

The second is an Outlier Detection that automatically removes failing nodes if they have consecutively returned 500 error messages for more than a period of time.

`kubectl apply -f httpbinRule.yaml`{{execute}}
`cat httpbinRule.yaml`{{execute}}

After this has been deployed, you should find the application still functions as before.

`kubectl exec -it $(kubectl get pod -l app=sleep -o jsonpath={.items..metadata.name}) bash`{{execute}}

`curl http://httpbin:8000/get;`{{execute}}

Exit the container to continue. In the next step, we'll increase the load and watch how Istio and Envoy Proxy trips the circuit breaker.

---

在Istio中，可以根据需求更新和修改流量。

如在“连接和控制Istio”方案中所讨论的，VirtualService将流量定向到组件应处理请求的版本。DesticationRule配置网络和流量的负载均衡。使用DesticationRule，可以实现断路器来限制对服务的并发请求数。

下面的DesticationRule有两个可以触发的断路器。第一个是连接池，它将最大TCP连接限制为1，每个连接最多1个HTTP请求。

第二个是异常检测（OutlierDetection），如果失败的节点连续一段时间返回了 500 错误消息，则会自动删除这些节点。

`kubectl apply -f httpbinRule.yaml`{{execute}}
`cat httpbinRule.yaml`{{execute}}

部署之后，您应该发现该应用程序仍然像以前一样运行。

`kubectl exec -it $(kubectl get pod -l app=sleep -o jsonpath={.items..metadata.name}) bash`{{execute}}
`curl http://httpbin:8000/get;`{{execute}}

退出容器继续。在下一步中，我们将增加负载，并观察Istio和Envoy Proxy如何使断路器跳闸。


