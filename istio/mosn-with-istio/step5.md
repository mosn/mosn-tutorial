本教程提供中文版说明，请翻至本页底部。

## Verify MOSN routing capability by version

First create a series of destination rules for Bookinfo's service:

`kubectl apply -f samples/bookinfo/networking/destination-rule-all.yaml`{{execute}}

Specify that the reviews service only access v1.

`kubectl apply -f samples/bookinfo/networking/virtual-service-all-v1.yaml`{{execute}}

Click on the following link, at which point the reviews will be fixed to the v1 page and no longer change.

{{TRAFFIC_HOST1_1234}}/productpage

Specify that the reviews service allocates 50% of the traffic according to v1 and v3 versions each.

`kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-50-v3.yaml`{{execute}}

Click on the link below and reviews will switch between the two versions.

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage

### Next steps

We've already experienced the routing capabilities of MOSN's version under Istio above, so let's verify the Header routing capabilities in MOSN.

---

## 验证 MOSN 按 version 路由能力

首先为 `Bookinfo` 的 service 创建一系列的 destination rules：

`kubectl apply -f samples/bookinfo/networking/destination-rule-all.yaml`{{execute}}

### 指定 reviews 服务只访问 v1 版本：

`kubectl apply -f samples/bookinfo/networking/virtual-service-all-v1.yaml`{{execute}}


点击下面的连接，此时 reviews 会固定在版本一的页面不再变化：

{{TRAFFIC_HOST1_1234}}/productpage

### 指定 reviews 服务按照 v1 和 v3 版本各分配 50% 的流量：

`kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-50-v3.yaml`{{execute}}

点击下面的连接，此时 reviews 会在两个版本中切换：

{{TRAFFIC_HOST1_1234}}/productpage

## 后续步骤

上面我们已经体验了 MOSN 在 Istio 下的版本路由功能，接下来我们来验证下 MOSN 中的 Header 路由能力。
