FILE=/ks/wait-background.sh; while ! test -f ${FILE}; do clear; sleep 0.1; done; bash ${FILE}
export ISTIO_VERSION=1.10.6
curl -L https://istio.io/downloadIstio | TARGET_ARCH=x86_64 sh -
echo "export PATH=/root/istio-${ISTIO_VERSION}/bin:\$PATH" >> .bashrc
export PATH=/root/istio-${ISTIO_VERSION}/bin:$PATH
istioctl install --set profile=demo -y --manifests=/root/istio-${ISTIO_VERSION}/manifests --set .values.global.proxy.image="mosnio/proxyv2:1.0.0-1.10.6" --set meshConfig.defaultConfig.binaryPath="/usr/local/bin/mosn"