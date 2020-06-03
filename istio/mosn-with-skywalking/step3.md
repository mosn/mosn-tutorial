本教程将通过 docker 启动 MOSN

## 启动 MOSN

启动 MOSN 容器: `docker run -d --name mosn --rm --network host mosnio/mosn-tutorial:mosn-with-skywalking-http-mosn`{{execute}}

运行结果：

```shell

$ docker run -d --name mosn --rm --network host mosnio/mosn-tutorial:mosn-with-skywalking-http-mosn
Unable to find image 'mosnio/mosn-tutorial:mosn-with-skywalking-http-mosn' locally
mosn-with-skywalking-http-mosn: Pulling from mosnio/mosn-tutorial
815cab364430: Pull complete
Digest: sha256:165d54f7a0a7567c77c15bad6768f03d83cfaa50f9585e6b4b11c33ab2b188be
Status: Downloaded newer image for mosnio/mosn-tutorial:mosn-with-skywalking-http-mosn
4e498f5834839a73511cbfb2fcf6acadadfc9e34913787d5e1690d31ddd3d42c

$ docker ps
CONTAINER ID        IMAGE                                                   COMMAND                  CREATEDSTATUS              PORTS                                                          NAMES
ea2bef4b5501        mosnio/mosn-tutorial:mosn-with-skywalking-http-server   "/http-server"           2 minutes agoUp 2 minutes                                                                       http-server

```
