本教程提供中文版说明，请翻至本页底部。

## Verify MOSN's fault injection functionality

### Initial state preparation

Run the following command to initialize the Bookinfo application version routing information.

`kubectl apply -f samples/bookinfo/networking/virtual-service-all-v1.yaml`{{execute}}

`kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml`{{execute}}

After the above configuration, the request link is as follows.

productpage → reviews:v2 → ratings (for jason users)
productpage → reviews:v1 (other users)

### Injection delay failure

Executing the following command will inject a 7-second delay between the reviews:v2 and ratings services for user jason:.

`kubectl apply -f samples/bookinfo/networking/virtual-service-ratings-test-delay.yaml`{{execute}}

Click on the following link.

[productpage]({{TRAFFIC_HOST1_1234}}/productpage)

At this point it was discovered that when logging in to access using jason as a user, the Reviews section showed an error message.

Error fetching product reviews!
Sorry, product reviews are currently unavailable for this book.

Executing the following command will introduce an HTTP abort for user jason to access the ratings microservice.

`kubectl apply -f samples/bookinfo/networking/virtual-service-ratings-test-abort.yaml`{{execute}}

Click on the following link.

[productpage]({{TRAFFIC_HOST1_1234}}/productpage)

When you log in with jason, the following error message is displayed:

Ratings service is currently unavailable

---

## 验证 MOSN 的故障注入功能

#### 初始状态准备

运行以下命令来初始化 `Bookinfo` 应用程序版本路由信息：

`kubectl apply -f samples/bookinfo/networking/virtual-service-all-v1.yaml`{{execute}}

`kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml`{{execute}}

经过上面的配置后，其请求链路如下所示：

productpage → reviews:v2 → ratings (针对 jason 用户)
productpage → reviews:v1 (其他用户)

#### 注入延时故障

执行下面的命令将会为用户 jason 在 reviews:v2 和 ratings 服务之间注入一个 7 秒的延迟：

`kubectl apply -f samples/bookinfo/networking/virtual-service-ratings-test-delay.yaml`{{execute}}

点击下面的连接：

[productpage]({{TRAFFIC_HOST1_1234}}/productpage)

此时发现使用 jason 这个用户登录访问时， Reviews 部分显示了错误消息：

Error fetching product reviews!
Sorry, product reviews are currently unavailable for this book.


#### 注入 abort 故障

执行下面的命令将会为用户 jason 访问 ratings 微服务时引入一个 HTTP abort：

`kubectl apply -f samples/bookinfo/networking/virtual-service-ratings-test-abort.yaml`{{execute}}

点击下面的连接：

[productpage]({{TRAFFIC_HOST1_1234}}/productpage)

此时发现使用 jason 这个用户登录访问时， 此时页面会显示如下错误消息：

Ratings service is currently unavailable
