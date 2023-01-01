POD_CIDR=$1
SERVICE_CIDR=$2
REGISTRY=$3

if [[ "$POD_CIDR" == "" ]]; then
	POD_CIDR="10.233.0.0/16"
fi

if [[ "$SERVICE_CIDR" == "" ]]; then
	SERVICE_CIDR="10.96.0.0/16"
fi

if [[ "$REGISTRY" == "" ]]; then
	REGISTRY="registry.cn-hangzhou.aliyuncs.com/google_containers"
fi

kubeadm init --image-repository=$REGISTRY --pod-network-cidr=$POD_CIDR --service-cidr=$SERVICE_CIDR

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

swapoff -a
