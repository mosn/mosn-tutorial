本教程通过 docker 启动一个 HTTP client

## 启动 HTTP client

启动 HTTP Client 容器：`docker run -d --name http-client --rm --network host arugaldocker/mosn-with-skywalking-http-client:v0.0.1`{{execute}}

运行结果：

```shell
$ docker run -d --name http-client --rm --network host arugaldocker/mosn-with-skywalking-http-client:v0.0.1
Unable to find image 'arugaldocker/mosn-with-skywalking-http-client:v0.0.1' locally
v0.0.1: Pulling from arugaldocker/mosn-with-skywalking-http-client
6dbba249d1e0: Pull complete
Digest: sha256:4e34381aef81aff091cf3efc3dafb9ce6501b045d621bf2610f8ee515473213d
Status: Downloaded newer image for arugaldocker/mosn-with-skywalking-http-client:v0.0.1
0a1cb4614f38cad7e36aed711ce8759ee3c07bee1d91718ca0151129610bb281

$ docker ps
CONTAINER ID        IMAGE                                                  COMMAND                  CREATED              STATUS              PORTS                            NAMES
0a1cb4614f38        arugaldocker/mosn-with-skywalking-http-client:v0.0.1   "/http-client"           27 seconds ago       Up 27 seconds                            http-client
```