本教程将通过 docker 启动 MOSN

## 启动 MOSN

启动 MOSN 容器: `docker run -d --name mosn --rm --network host mosnio/mosn-tutorial:mosn-with-skywalking-http-mosn`{{execute}}

运行结果：

```shell
docker run -d --name mosn --rm --network host mosnio/mosn-tutorial:mosn-with-skywalking-http-mosn
Unable to find image 'mosnio/mosn-tutorial:mosn-with-skywalking-http-mosn' locally
mosn-with-skywalking-http-mosn: Pulling from mosnio/mosn-tutorial
815cab364430: Pull complete
Digest: sha256:165d54f7a0a7567c77c15bad6768f03d83cfaa50f9585e6b4b11c33ab2b188be
Status: Downloaded newer image for mosnio/mosn-tutorial:mosn-with-skywalking-http-mosn
4e498f5834839a73511cbfb2fcf6acadadfc9e34913787d5e1690d31ddd3d42c

docker ps
CONTAINER ID        IMAGE                                                   COMMAND                  CREATED STATUS              PORTS                                                          NAMES
9b6cfe6aa43c        mosnio/mosn-tutorial:mosn-with-skywalking-http-mosn     "/mosn/mosn start -c…"   14 seconds ago Up 13 seconds                                                                      mosn
58dbbef3570d        mosnio/mosn-tutorial:mosn-with-skywalking-http-server   "/http-server"           About a minute ago Up About a minute                                                                  http-server
690091a18017        apache/skywalking-ui:7.0.0                              "bash docker-entrypo…"   About a minute ago Up About a minute   0.0.0.0:80->8080/tcp                                           skywalking-ui
ef827464bc53        apache/skywalking-oap-server:7.0.0-es7                  "bash docker-entrypo…"   About a minute ago Up About a minute   0.0.0.0:11800->11800/tcp, 1234/tcp, 0.0.0.0:12800->12800/tcp   skywalking-oap
```
