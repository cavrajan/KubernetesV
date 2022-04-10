kubeadm init --apiserver-advertise-address=<Master node ipaddress> --pod-network-cidr=192.168.0.0/16  --ignore-preflight-errors=all
kubectl --kubeconfig=/etc/kubernetes/admin.conf create -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml
kubeadm token create --print-join-command
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
