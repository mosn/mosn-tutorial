## 清理 Bookinfo 应用

可以使用下面的命令来完成应用的删除和清理工作：


`samples/bookinfo/platform/kube/cleanup.sh <<EOF
Y;
EOF `{{execute}}


删除路由规则，并销毁应用的 Pod。

确认 Bookinfo 应用已经关停：

`kubectl get virtualservices`{{execute}}   #-- there should be no virtual services
`kubectl get destinationrules`{{execute}}  #-- there should be no destination rules
`kubectl get gateway`{{execute}}           #-- there should be no gateway
`kubectl get pods`{{execute}}              #-- the Bookinfo pods should be deleted

至此， Bookinfo 应用的相关清理工作已经完成，接下来介绍下 Istio 卸载方法。
