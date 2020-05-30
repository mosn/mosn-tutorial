本教程将通过 docker 启动 HTTP server

## 启动 HTTP Server

启动 HTTP Server 容器： `docker run -d --name http-server --rm --network host arugaldocker/mosn-with-skywalking-http-server:v0.0.1`{{execute}}

运行结果：

```shell
$ docker run -d --name http-server --rm --network host arugaldocker/mosn-with-skywalking-http-server:v0.0.1
Unable to find image 'arugaldocker/mosn-with-skywalking-http-server:v0.0.1' locally
v0.0.1: Pulling from arugaldocker/mosn-with-skywalking-http-server
f441c7ca17b2: Pull complete
Digest: sha256:495d1329342d3b04262a4d6a89b54fef0543603ce404f7060aac712934407de5
Status: Downloaded newer image for arugaldocker/mosn-with-skywalking-http-server:v0.0.1
5d15e7aa838aebe1338e343aa6e9dfe9781c5494d9c531858f4d8a6116863701

$ docker ps
CONTAINER ID        IMAGE                                                  COMMAND                  CREATED             STATUS              PORTS                           NAMES
5d15e7aa838a        arugaldocker/mosn-with-skywalking-http-server:v0.0.1   "/http-server"           7 seconds ago       Up 6 seconds                           http-server
```