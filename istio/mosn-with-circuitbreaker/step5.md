本教程提供中文版说明，请翻至本页底部。

Create a client to send traffic to the httpbin service. The client is a simple load-testing client called fortio. Fortio lets you control the number of connections, concurrency, and delays for outgoing HTTP calls. You will use this client to “trip” the circuit breaker policies you set in the DestinationRule. 

Start Fortio with `istioctl kube-inject -f samples/httpbin/sample-client/fortio-deploy.yaml > fortio-deploy.yaml`{{execute}}
`kubectl apply -f fortio-deploy.yaml`{{execute}}
`FORTIO_POD=$(kubectl get pod | grep fortio | awk '{ print $1 }')`{{execute}}

Log in to the client pod and use the fortio tool to call httpbin. Pass in -curl to indicate that you just want to make one call:
`kubectl exec -it "$FORTIO_POD"  -c fortio -- /usr/bin/fortio load -curl http://httpbin:8000/get`{{execute}}

You can see the request succeeded! Now, it’s time to break something.

In the DestinationRule settings, you specified maxConnections: 1 and http1MaxPendingRequests: 1. These rules indicate that if you exceed more than one connection and request concurrently, you should see some failures when the istio-proxy opens the circuit for further requests and connections.

And then call the service with two concurrent connections (-c 2) and send 20 requests (-n 20): command generates two concurrent connections (-c 2) and sends 20 requests (-n 20). You should start to see some requests being returned as 503, meaning the Circuit Breaker has tripped.

`kubectl exec -it $FORTIO_POD  -c fortio /usr/local/bin/fortio -- load -c 2 -qps 0 -n 20 -loglevel Warning http://httpbin:8000/get`{{execute}}

It’s interesting to see that almost all requests made it through! The istio-proxy does allow for some leeway.

If you increase the concurrent connections, the number of errors will also increase.

kubectl exec -it $FORTIO_POD  -c fortio /usr/local/bin/fortio -- load -c 3 -qps 0 -n 20 -loglevel Warning http://httpbin:8000/get`{{execute}}

Remember, the circuit breaker is defined to protect the underlying system and fail gracefully.

As Envoy implements the Circuit Breaker, the Envoy Proxy is collecting its statistics. These can be queried via Prometheus/Grafana Dashboards, or via CURL requests.

For example, the following will highlight the stats for the HTTPBin service.

`kubectl exec -it $FORTIO_POD  -c istio-proxy  -- sh -c 'curl localhost:15000/stats' | grep httpbin | grep pending`{{execute}}

You can see a upstream_rq_pending_overflow value indicating the number of calls so far that have been flagged for circuit breaking.

The metric upstream_rq_pending_overflow is from Envoy, more details can be found in at documentation at https://www.envoyproxy.io/docs/envoy/latest/intro/arch_overview/circuit_breaking

---

创建一个客户端以将流量发送到httpbin服务。该客户端是一个简单的负载测试客户端，称为fortio。 Fortio使您可以控制连接数，并发性和传出HTTP调用的延迟。您将使用此客户端来“跳闸”在DestinationRule中设置的断路器策略。

启动Fortio, 使用`istioctl kube-inject -f samples/httpbin/sample-client/fortio-deploy.yaml> fortio-deploy.yaml && sed -i "s/\/usr\/local\/bin\/envoy/\/usr\/local\/bin\/mosn/g" ./fortio-deploy.yaml` {{execute}}

`kubectl apply -f fortio-deploy.yaml` {{execute}}

`FORTIO_POD = $（kubectl get pod | grep fortio | awk'{print $ 1}'））{{execute}}

登录到客户端pod并使用fortio工具调用httpbin。传递-curl表示您只想打一个电话：
`kubectl exec -it "$ FORTIO_POD" -c fortio -- /usr/bin/fortio load -curl http//httpbin8000/get`{{execute}}

您可以看到请求成功！现在，该打破一些东西了。

在DestinationRule设置中，指定了maxConnections：1和http1MaxPendingRequests：1.这些规则表明，如果您超过一个以上的连接并发请求，则在istio-proxy打开电路进行进一步的请求和连接时，应该会看到一些故障。

然后使用两个并发连接（-c 2）调用该服务并发送20个请求（-n 20）：命令生成两个并发连接（-c 2）并发送20个请求（-n 20）。您应该开始看到一些请求返回为503，这意味着断路器已跳闸。

`kubectl exec -it $ FORTIO_POD -c fortio /usr/local/bin/fortio -- load -c 2 -qps 0 -n 20 -loglevel Warning http://httpbin:8000/get`{{execute}}

如果你发现几乎所有请求都通过了的话，那说明istio-proxy确实有一些余地,而不是错误。

如果增加并发连接，错误数量也会增加。

`kubectl exec -it $ FORTIO_POD -c fortio /usr/local/bin/fortio -- load -c 3 -qps 0 -n 20 -loglevel Warning http://httpbin:8000/get`{{execute}}

请记住，断路器的定义是为了保护基础系统正常运行。

当Envoy实施断路器时，Envoy代理正在收集其统计信息。这些可以通过Prometheus/Grafana仪表板或CURL请求进行查询。

例如，以下内容将突出显示HTTPBin服务的统计信息。

`kubectl exec -it $ FORTIO_POD -c istio-proxy --sh -c 'curl localhost:15000/stats'| grep httpbin | grep pending`{{execute}}

您可以看到一个上游_rq_pending_overflow值，该值指示到目前为止已标记为断路的呼叫数。

度量指标 upstream_rq_pending_overflow来自Envoy，更多详细信息可以在以下文档中找到：https://www.envoyproxy.io/docs/envoy/latest/intro/arch_overview/circuit_breaking
