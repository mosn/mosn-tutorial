本教程提供中文版说明，请翻至本页底部。

In this course, you will learn how to configure circuit breaker with MOSN as the data plane of Istio.

If you want to contribute or learn more about this tutorial, please join the [MOSN Istio WG](https://github.com/mosn/community/blob/master/wg-istio.md).

## MOSN Introduction

MOSN is a network proxy written in Golang. It can be used as a cloud-native network data plane, providing services with the following proxy functions: multi-protocol, modular, intelligent, and secure. MOSN can be integrated with any Service Mesh which support xDS API. It can also be used as an independent Layer 4 or Layer 7 load balancer, API Gateway, cloud-native Ingress, etc.

- Github: https://github.com/mosn/mosn
- Website: https://mosn.io

## MOSN with Istio

[Istio](https://github.com/istio/istio) is the most popular Service Mesh, it use [Envoy](https://envoyproxy.io) as the default data plane, MOSN is aim to be the alternative cloud native data plane that support Enovy’s xDS.

---

在本课程中，您将了解如何在 MOSN 作为 Istio Service Mesh 中的数据平面时，配置熔断。

如果那你想要进一步了解或贡献本教程，请加入 [MOSN Istio WG](https://github.com/mosn/community/blob/master/wg-istio.md)。

## MOSN 简介

MOSN 是一款使用 Go 语言开发的网络代理软件，作为云原生的网络数据平面，旨在为服务提供多协议，模块化，智能化，安全的代理能力。MOSN 是 Modular Open Smart Network 的简称。MOSN 可以与任何支持 xDS API 的 Service Mesh 集成，亦可以作为独立的四、七层负载均衡，API Gateway，云原生 Ingress 等使用。

- GitHub：https://github.com/mosn/mosn
- 官网：https://mosn.io/zh

## MOSN 和 Istio

[Istio](https://istio.io) 是目前最受欢迎的 Service Mesh，使用 [Envoy](https://envoyproxy.io) 作为默认的数据平面，MOSN 目标成为兼容 Envoy xDS 协议的可选数据平面之一。
