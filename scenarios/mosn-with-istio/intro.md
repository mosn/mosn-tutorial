In this course, you will learn how to use MOSN as the data plane of Istio for service governance.

If you want to contribute or learn more about this tutorial, please join the [MOSN Istio WG](https://github.com/mosn/community/blob/master/wg-istio.md).

## MOSN Introduction

MOSN is a network proxy written in Golang. It can be used as a cloud-native network data plane, providing services with the following proxy functions: multi-protocol, modular, intelligent, and secure. MOSN can be integrated with any Service Mesh which support xDS API. It can also be used as an independent Layer 4 or Layer 7 load balancer, API Gateway, cloud-native Ingress, etc.

- Github: https://github.com/mosn/mosn
- Website: https://mosn.io

## MOSN with Istio

[Istio](https://github.com/istio/istio) is the most popular Service Mesh, it use [Envoy](https://envoyproxy.io) as the default data plane, MOSN is aim to be the alternative cloud native data plane that support Enovy’s xDS.

