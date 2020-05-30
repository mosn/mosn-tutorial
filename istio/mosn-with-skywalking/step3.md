本教程将通过 docker 启动 MOSN

## 启动 MOSN

下载 Dockerfile：`curl https://raw.githubusercontent.com/mosn/mosn-tutorial/master/istio/mosn-with-skywalking/install/Dockerfile.mosn`{{execute}}

构建 MOSN 的 docker 镜像: `docker build -f install/Dockerfile.mosn -t mosn`{{execute}}

启动 MOSN 容器: `docker run -d --name mosn -net host mosn`{{execute}}