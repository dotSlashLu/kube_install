MIRROR="https://t9ab0rkd.mirror.aliyuncs.com"
if [[ "$1" != "" ]]; then
	MIRROR=$1
fi
echo "using mirror: $MIRROR"

sudo usermod -aG docker $USER
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2",
  "registry-mirrors": ["$MIRROR"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
