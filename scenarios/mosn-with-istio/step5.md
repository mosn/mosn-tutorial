## 验证 MOSN 按 version 路由能力

首先为 `Bookinfo` 的 service 创建一系列的 destination rules：

`kubectl apply -f samples/bookinfo/networking/destination-rule-all.yaml`{{execute}}

#### 指定 reviews 服务只访问 v1 版本：

`kubectl apply -f samples/bookinfo/networking/virtual-service-all-v1.yaml`{{execute}}


点击下面的连接，此时 reviews 会固定在版本一的页面不再变化：

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage


#### 指定 reviews 服务按照 v1 和 v3 版本各分配 50% 的流量：

`kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-50-v3.yaml`{{execute}}

点击下面的连接，此时 reviews 会在两个版本中切换：

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage


## 后续步骤

上面我们已经体验了 MOSN 在 Istio 下的版本路由功能，接下来我们来验证下 MOSN 中的 Header 路由能力。
