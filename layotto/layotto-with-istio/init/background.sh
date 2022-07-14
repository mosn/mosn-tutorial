#!/bin/bash

# wait fo k8s ready
while ! kubectl get nodes | grep -w "Ready"; do
  echo "WAIT FOR NODES READY"
  sleep 1
done
touch /ks/.k8sfinished

# allow pods to run on controlplane
kubectl taint nodes controlplane node-role.kubernetes.io/master:NoSchedule-
kubectl taint nodes controlplane node-role.kubernetes.io/control-plane:NoSchedule-

# mark init finished
touch /ks/.initfinished
