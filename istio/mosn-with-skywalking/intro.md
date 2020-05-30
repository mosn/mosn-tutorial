在本课程中，您将了解如何使用 SkyWalking 作为 MOSN 的链路追踪实现

![trace-framework](https://raw.githubusercontent.com/mosn/mosn-tutorial/master/istio/mosn-with-skywalking/install/img/trace-framework.jpg)

目前 MOSN tracing 有 SOFATracer 和 SkyWalking 两种实现。SOFATracer 支持 http1 和 xprotocol 协议的链路追踪，将 trace 数据写入本地日志文件中。SkyWalking 支持 http1 协议的链路追踪，使用原生的 Go 语言探针 go2sky 将 trace 数据通过 gRPC 上报到 SkyWalking 后端服务。

## MOSN 简介

MOSN 是一款使用 Go 语言开发的网络代理软件，作为云原生的网络数据平面，旨在为服务提供多协议，模块化，智能化，安全的代理能力。MOSN 是 Modular Open Smart Network 的简称。MOSN 可以与任何支持 xDS API 的 Service Mesh 集成，亦可以作为独立的四、七层负载均衡，API Gateway，云原生 Ingress 等使用。

- GitHub：https://github.com/mosn/mosn
- 官网：https://mosn.io/zh

## SkyWalking 简介

SkyWalking 是观察性分析平台和应用性能管理系统。提供分布式追踪、服务网格遥测分析、度量聚合和可视化一体化解决方案。支持 Java、[.Net Core](https://github.com/SkyAPM/SkyAPM-dotnet) 、[PHP](https://github.com/SkyAPM/SkyAPM-php-sdk) 、[NodeJS](https://github.com/SkyAPM/SkyAPM-nodejs) 、[Golang](https://github.com/SkyAPM/go2sky) 、[LUA](https://github.com/apache/skywalking-nginx-lua) 、[Python](https://github.com/apache/skywalking-python) 语言探针，支持 Envoy/MOSN + Istio 构建的 Service Mesh。

- GitHub： https://github.com/apache/skywalking
- 官网：https://skywalking.apache.org