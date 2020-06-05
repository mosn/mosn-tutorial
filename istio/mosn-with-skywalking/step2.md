本教程将通过 docker 启动 HTTP server

## 启动 HTTP Server

启动 HTTP Server 容器： `docker run -d --name http-server --rm --network host mosnio/mosn-tutorial:mosn-with-skywalking-http-server`{{execute}}


运行结果：

```shell

$ docker run -d --name http-server --rm --network host mosnio/mosn-tutorial:mosn-with-skywalking-http-server
Unable to find image 'mosnio/mosn-tutorial:mosn-with-skywalking-http-server' locally
mosn-with-skywalking-http-server: Pulling from mosnio/mosn-tutorial
fe6cf64546c3: Pull complete
Digest: sha256:e673120cf4c4f76d25e2100b437bf9bd09e6d08cf7badc5677ab86836d64206c
Status: Downloaded newer image for mosnio/mosn-tutorial:mosn-with-skywalking-http-server
ea2bef4b5501b2bccbbf235f56f1e997736982456e02671d9814761378254392

$ docker ps
CONTAINER ID        IMAGE                                                   COMMAND                  CREATED STATUS              PORTS                                                          NAMES
ea2bef4b5501        mosnio/mosn-tutorial:mosn-with-skywalking-http-server   "/http-server"           2 minutes agoUp 2 minutes                                                                       http-server

```
