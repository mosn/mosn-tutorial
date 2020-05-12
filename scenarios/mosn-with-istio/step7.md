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

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage

此时发现使用 jason 这个用户登录访问时， Reviews 部分显示了错误消息：

Error fetching product reviews!
Sorry, product reviews are currently unavailable for this book.


#### 注入 abort 故障

执行下面的命令将会为用户 jason 访问 ratings 微服务时引入一个 HTTP abort：

`kubectl apply -f samples/bookinfo/networking/virtual-service-ratings-test-abort.yaml`{{execute}}

点击下面的连接：

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage

此时发现使用 jason 这个用户登录访问时， 此时页面会显示如下错误消息：

Ratings service is currently unavailable
