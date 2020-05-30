本教程将通过 docker 启动 MOSN

## 启动 MOSN

启动 MOSN 容器: `docker run -d --name mosn --rm --network host arugaldocker/mosn-with-skywalking-mosn:v0.0.1`{{execute}}

运行结果：

```shell
$ docker run -d --name mosn --rm --network host arugaldocker/mosn-with-skywalking-mosn:v0.0.1
Unable to find image 'arugaldocker/mosn-with-skywalking-mosn:v0.0.1' locally
v0.0.1: Pulling from arugaldocker/mosn-with-skywalking-mosn
e6a30ec6719a: Pull complete
Digest: sha256:efbdc854cd9841493b2313c518628ff71bd70d2418b3769776b3abcd697fff0f
Status: Downloaded newer image for arugaldocker/mosn-with-skywalking-mosn:v0.0.1
9af162d7a05b64093c2a4eebe1df8c540d80c5e840b1606845d6db040bab9e63

$ docker ps
CONTAINER ID        IMAGE                                                  COMMAND                  CREATED              STATUS              PORTS                            NAMES
9af162d7a05b        arugaldocker/mosn-with-skywalking-mosn:v0.0.1          "/mosn/mosn start -c…"   15 seconds ago       Up 15 seconds                            mosn
```
