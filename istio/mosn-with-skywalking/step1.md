本教程将通过 docker-compose 启动 SkyWalking OAP & UI。

## 安装 SkyWalking

下载配置文件: `curl https://raw.githubusercontent.com/mosn/mosn-tutorial/master/istio/mosn-with-skywalking/install/skywalking-docker-compose.yaml -o skywalking-docker-compose.yaml`{{execute}}

使用 `docker-compose` 安装 SkyWalking: `docker-compose -f skywalking-docker-compose.yaml up -d`{{execute}}

运行结果：

```shell

$ docker-compose -f skywalking-docker-compose.yaml up -d
Pulling skywalking-oap (apache/skywalking-oap-server:7.0.0-es7)...
7.0.0-es7: Pulling from apache/skywalking-oap-server
5f80e24e94e5: Pull complete
Digest: sha256:e0ba22e7e0370f3eb7f4e74d992a28f4ea4885c788b7b4fdd57668e736f629bb
Status: Downloaded newer image for apache/skywalking-oap-server:7.0.0-es7
Pulling skywalking-ui (apache/skywalking-ui:7.0.0)...
7.0.0: Pulling from apache/skywalking-ui
564e92e2c3ff: Pull complete
Digest: sha256:4bd036fdd6a1e312c24b64646136146810c497416bb3c12d52c2333342c63584
Status: Downloaded newer image for apache/skywalking-ui:7.0.0
Creating skywalking-oap ... done
Creating skywalking-ui  ... done

$ docker ps

CONTAINER ID        IMAGE                                 COMMAND                  CREATED             STATUS              PORTS   NAMES
fd0545af0ff1        apache/skywalking-ui:latest           "bash docker-entrypo…"   2 minutes ago       Up 2 minutes        0.0.0.0:80->8080/tcp   skywalking-ui
90e63b1aae93        apache/skywalking-oap-server:latest   "bash docker-entrypo…"   2 minutes ago       Up 2 minutes        0.0.0.0:11800->11800/tcp, 1234/tcp, 0.0.0.0:12800->12800/tcp   skywalking-oap

```