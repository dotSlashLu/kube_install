cd deps
bash ./0001_get_docker.sh --mirror Aliyun
bash ./0002_setup_docker.sh https://t9ab0rkd.mirror.aliyuncs.com
bash ./0003_get_k8s.sh
cd -
cd master
bash ./0004_setup_k8s.sh "10.233.0.0/16" "10.96.0.0/16" "registry.cn-hangzhou.aliyuncs.com/google_containers"
bash ./0005_install_calico.sh
