本教程提供中文版说明，请翻至本页底部。

## Consumer's Log

Look at Consumer running log: `kubectl logs -f -n dubbo-app ``kubectl get pod -n dubbo-app -l app=consumer -o jsonpath='{ .items[*].metadata.name }'`` -c consumer`{{execute}}

If it good well, you can get this result, such as:

```shell
master $ kubectl logs -f -n dubbo-app `kubectl get pod -n dubbo-app -l app=consumer -o jsonpath='{ .items[*].metadata.name }'` -c consumer
[24/05/20 03:14:22:648 UTC] main  INFO logger.LoggerFactory: using logger: org.apache.dubbo.common.logger.log4j.Log4jLoggerAdapter
current port:20881
[24/05/20 03:14:22:926 UTC] main  WARN config.AbstractConfig:  [DUBBO] There's no valid metadata config found, if you are using the simplified mode of registry url, pl
ease make sure you have a metadata address configured properly., dubbo version: 2.7.3, current host: 10.32.0.13
[24/05/20 03:14:23:237 UTC] main  INFO transport.AbstractClient:  [DUBBO] Succeed connect to server /10.32.0.13:20881 from NettyClient 10.32.0.13 using dubbo version 2
.7.3, channel is NettyChannel [channel=[id: 0x648bde0d, L:/10.32.0.13:56774 - R:/10.32.0.13:20881]], dubbo version: 2.7.3, current host: 10.32.0.13
[24/05/20 03:14:23:237 UTC] main  INFO transport.AbstractClient:  [DUBBO] Start NettyClient consumer-d5f9d48c4-k26jq/10.32.0.13 connect to the server /10.32.0.13:20881
, dubbo version: 2.7.3, current host: 10.32.0.13
[24/05/20 03:14:23:313 UTC] main  INFO config.AbstractConfig:  [DUBBO] Refer dubbo service mosn.io.dubbo.DemoService from url dubbo://127.0.0.1:20881/mosn.io.dubbo.Dem
oService?application=dubbo-examples-consumer&generic=false&interface=mosn.io.dubbo.DemoService&lazy=false&pid=1&qos.enable=false&register.ip=10.32.0.13&remote.applicat
ion=&side=consumer&sticky=false, dubbo version: 2.7.3, current host: 10.32.0.13
Hello MOSN, response from provider: 10.32.0.11:20880
Hello MOSN, response from provider: 10.32.0.12:20880
Hello MOSN, response from provider: 10.32.0.11:20880
Hello MOSN, response from provider: 10.32.0.12:20880
Hello MOSN, response from provider: 10.32.0.11:20880
Hello MOSN, response from provider: 10.32.0.3:20880
Hello MOSN, response from provider: 10.32.0.11:20880
Hello MOSN, response from provider: 10.32.0.3:20880
Hello MOSN, response from provider: 10.32.0.12:20880
Hello MOSN, response from provider: 10.32.0.3:20880
Hello MOSN, response from provider: 10.32.0.12:20880
```

Consumer will request three provider.

---

## Consumer 日志

查看 Consumer 运行日志: `kubectl logs -f -n dubbo-app ``kubectl get pod -n dubbo-app -l app=consumer -o jsonpath='{ .items[*].metadata.name }'`` -c consumer`{{execute}}

如果不出意外，你应该会得到结果，例如:

```shell
master $ kubectl logs -f -n dubbo-app `kubectl get pod -n dubbo-app -l app=consumer -o jsonpath='{ .items[*].metadata.name }'` -c consumer
[24/05/20 03:14:22:648 UTC] main  INFO logger.LoggerFactory: using logger: org.apache.dubbo.common.logger.log4j.Log4jLoggerAdapter
current port:20881
[24/05/20 03:14:22:926 UTC] main  WARN config.AbstractConfig:  [DUBBO] There's no valid metadata config found, if you are using the simplified mode of registry url, pl
ease make sure you have a metadata address configured properly., dubbo version: 2.7.3, current host: 10.32.0.13
[24/05/20 03:14:23:237 UTC] main  INFO transport.AbstractClient:  [DUBBO] Succeed connect to server /10.32.0.13:20881 from NettyClient 10.32.0.13 using dubbo version 2
.7.3, channel is NettyChannel [channel=[id: 0x648bde0d, L:/10.32.0.13:56774 - R:/10.32.0.13:20881]], dubbo version: 2.7.3, current host: 10.32.0.13
[24/05/20 03:14:23:237 UTC] main  INFO transport.AbstractClient:  [DUBBO] Start NettyClient consumer-d5f9d48c4-k26jq/10.32.0.13 connect to the server /10.32.0.13:20881
, dubbo version: 2.7.3, current host: 10.32.0.13
[24/05/20 03:14:23:313 UTC] main  INFO config.AbstractConfig:  [DUBBO] Refer dubbo service mosn.io.dubbo.DemoService from url dubbo://127.0.0.1:20881/mosn.io.dubbo.Dem
oService?application=dubbo-examples-consumer&generic=false&interface=mosn.io.dubbo.DemoService&lazy=false&pid=1&qos.enable=false&register.ip=10.32.0.13&remote.applicat
ion=&side=consumer&sticky=false, dubbo version: 2.7.3, current host: 10.32.0.13
Hello MOSN, response from provider: 10.32.0.11:20880
Hello MOSN, response from provider: 10.32.0.12:20880
Hello MOSN, response from provider: 10.32.0.11:20880
Hello MOSN, response from provider: 10.32.0.12:20880
Hello MOSN, response from provider: 10.32.0.11:20880
Hello MOSN, response from provider: 10.32.0.3:20880
Hello MOSN, response from provider: 10.32.0.11:20880
Hello MOSN, response from provider: 10.32.0.3:20880
Hello MOSN, response from provider: 10.32.0.12:20880
Hello MOSN, response from provider: 10.32.0.3:20880
Hello MOSN, response from provider: 10.32.0.12:20880
```

Consumer 将会请求三个 Provider。
