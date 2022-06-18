本教程提供中文版说明，请翻至本页底部。

## Clean up the Bookinfo app

The following commands can be used to complete the application deletion and cleanup.

`samples/bookinfo/platform/kube/cleanup.sh <<EOF
Y;
EOF`{{execute}}

Remove the routing rules and destroy the applied Pod.

Confirmation that the Bookinfo application has been shut down.

`kubectl get virtualservices`{{execute}}

`kubectl get destinationrules`{{execute}}

`kubectl get gateway`{{execute}}

`kubectl get pods`{{execute}}

Bookinfo related resources should be deleted.

Now that the cleanup of the Bookinfo application is complete, let's introduce the Istio uninstallation method.

---

## 清理 Bookinfo 应用

可以使用下面的命令来完成应用的删除和清理工作：

`samples/bookinfo/platform/kube/cleanup.sh <<EOF
Y;
EOF `{{execute}}


删除路由规则，并销毁应用的 Pod。

确认 Bookinfo 应用已经关停：

`kubectl get virtualservices`{{execute}} 
`kubectl get destinationrules`{{execute}}
`kubectl get gateway`{{execute}}
`kubectl get pods`{{execute}}    

至此， Bookinfo 应用的相关清理工作已经完成，接下来介绍下 Istio 卸载方法。