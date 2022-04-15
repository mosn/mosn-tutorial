本教程提供中文版说明，请翻至本页底部。

[istioctl installation](https://istio.io/docs/setup/install/istioctl/) instead.

## Download istio

A zip file that matches your operating system can be downloaded on the istio release page, which contains: installation files, examples, and istioctl command line tools.

Use the following command to download istio:.

`curl  -L https://istio.io/downloadIstio | ISTIO_VERSION=1.10.6  TARGET_ARCH=x86_64 sh -`{{execute}}

The downloaded istio package is named `istio-1.10.6` and contains.

- `install/kubernetes`: Contains the YAML installation file associated with Kubernetes.
- `examples/`: Contains sample applications.
- `bin/`: Client file containing istioctl.

Switch to the directory where the istio package is located:.
`cd istio-$ISTIO_VERSION/`{{execute}}

Add the istioctl client path to the `$PATH` using the following command.
`export PATH=$PATH:$(pwd)/bin`{{execute}}

As of now, we have been able to flexibly customize Istio control plane and data plane configuration parameters using the istioctl command line tool. The command line tool has a user input validation feature that prevents incorrect installation and customization options.

See more information about istioctl using the following command.
`istioctl -h`{{execute}}

---

[istioctl 安装](https://istio.io/zh/docs/setup/install/istioctl/)。

## 下载 istio

可在 [istio release](https://github.com/istio/istio/releases/tag/1.10.6) 页面下载与您操作系统匹配的压缩文件，该文件中包含：安装文件、示例和 istioctl 命令行工具。

使用如下命令来下载 istio：


`curl  -L https://istio.io/downloadIstio | ISTIO_VERSION=1.10.6  TARGET_ARCH=x86_64 sh -`{{execute}}

下载的 istio 包名为 `istio-1.10.6`，包含：
- `install/kubernetes`：包含 Kubernetes 相关的 YAML 安装文件。
- `examples/`：包含示例应用程序。
- `bin/`：包含 istioctl 的客户端文件。

切换到 istio 包所在目录：
`cd istio-$ISTIO_VERSION/`{{execute}}

使用如下命令将 `istioctl` 客户端路径加入 `$PATH` 中：
`export PATH=$PATH:$(pwd)/bin`{{execute}}

截止目前，我们已经可以通过 `istioctl` 命令行工具来灵活的自定义 Istio 控制平面和数据平面配置参数。 该命令行工具具有用户输入校验功能，可以防止错误的安装和自定义选项。

使用如下命令，查看更多关于 `istioctl` 的信息：
`istioctl -h`{{execute}}
