# openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | sha256sum | awk '{print $1}'
kubeadm join 172.18.180.118:6443 --token pnvbj1.4mr0p68la1uyhh87 \
--discovery-token-ca-cert-hash sha256:22355a04d9f91340b7750a84828a5e72062a107688f466e55711b450a5a317d1 --v=5
