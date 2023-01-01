VERSION="1.23.15-00"

# 添加并信任APT证书
# curl http://mirrors.cloud.aliyuncs.com/kubernetes/apt/doc/apt-key.gpg | sudo apt-key add -
curl http://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | sudo apt-key add -

# 添加源地址
add-apt-repository "deb http://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main" # 更新源并安装最新版 kubenetes

## 可以指定版本
## apt install kubelet=1.20.15-00 kubectl=1.20.15-00 kubeadm=1.20.15-00
sudo apt update && apt install -y kubelet=$VERSION kubectl=$VERSION kubeadm=$VERSION

# 添加 completion，最好放入 .bashrc 中
# source <(kubectl completion bash)source <(kubeadm completion bash)
