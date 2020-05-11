## 验证 MOSN 按照特定 header 路由能力

`Bookinfo` 系统右上角有一个登陆的入口，登陆以后请求会带上 end-user 这个自定义 header，值是 user name，MOSN 支持根据这个 header 的值来做路由。比如，我们尝试将 jason 这个用户路由到 v2 版本，其他的路由到 v1 版本（用户名和密码均是：jason，为什么是这个用户可以查看对应的 yaml 文件）。

`kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml`{{execute}}

点击下面的连接，此时发现使用 jason 这个用户登录的会路由到 v2 版本，其他未登录的都路由到 v1 版本的 review 服务：

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage

## 后续步骤

至此，我们已经通过 version、header 信息验证了 MOSN 的路由功能，接下来将会演示 MOSN 通过 Istio 来进行故障注入的场景。

