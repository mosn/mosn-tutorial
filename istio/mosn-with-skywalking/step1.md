本教程将通过 docker-compose 创建 SkyWalking OAP & UI。

## 安装 SkyWalking

下载配置文件: `curl https://raw.githubusercontent.com/mosn/mosn/v0.12.0/examples/codes/trace/skywalking/http/skywalking-docker-compose.yaml`{{execute}}

使用 docker-compose 安装 SkyWalking: `docker-compose -f skywalking-docker-compose.yaml up -d`{{execute}}