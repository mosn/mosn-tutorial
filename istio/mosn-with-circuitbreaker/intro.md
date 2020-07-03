本教程提供中文版说明，请翻至本页底部。

In this course, you will learn how to configure circuit breaker with MOSN as the data plane of Istio.

Circuit Breaking is a critical component of distributed systems. Circuit breaking lets applications configure failure thresholds that ensure safe maximums, allowing components to fail quickly and apply back pressure as soon as possible. Applying correct circuit breaking thresholds helps to save resources which otherwise are wasted in waiting for requests (timeouts) or retrying requests unnecessarily. One of the main advantages of the circuit breaking implementation in MOSN is that the circuit breaking limits are applied at the network level.

If you want to contribute or learn more about this tutorial, please join the [MOSN Istio WG](https://github.com/mosn/community/blob/master/wg-istio.md).

- Github: https://github.com/mosn/mosn
- Website: https://mosn.io

## MOSN with Istio

[Istio](https://github.com/istio/istio) is the most popular Service Mesh, it use [Envoy](https://envoyproxy.io) as the default data plane, MOSN is aim to be the alternative cloud native data plane that support Enovy’s xDS.

---

在本课程中，您将了解如何在 MOSN 作为 Istio Service Mesh 中的数据平面时，配置熔断。

熔断是分布式系统的关键组成部分。 熔断使应用程序可以配置故障阈值，以确保安全最大化，从而允许组件快速故障并尽快施加反压。 应用正确的断路阈值有助于节省资源，否则这些资源将浪费在等待请求（超时）或不必要地重试请求上。 MOSN中实现熔断的主要优点之一是断路限制适用于网络级别。

如果那你想要进一步了解或贡献本教程，请加入 [MOSN Istio WG](https://github.com/mosn/community/blob/master/wg-istio.md)。

- GitHub：https://github.com/mosn/mosn
- 官网：https://mosn.io/zh

## MOSN 和 Istio

[Istio](https://istio.io) 是目前最受欢迎的 Service Mesh，使用 [Envoy](https://envoyproxy.io) 作为默认的数据平面，MOSN 目标成为兼容 Envoy xDS 协议的可选数据平面之一。
