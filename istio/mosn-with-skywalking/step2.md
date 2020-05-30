本教程将通过 docker 启动 HTTP server

## 启动 HTTP Server

下载 Dockerfile：`curl https://raw.githubusercontent.com/mosn/mosn-tutorial/master/istio/mosn-with-skywalking/install/Dockerfile.server`{{execute}}

构建 HTTP Server 的 docker 镜像： `docker build -f Dockerfile.server -t http-server`{{execute}}

启动 HTTP Server 容器： `docker run -d -name http-server -net host http-server`{{execute}}