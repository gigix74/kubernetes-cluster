sudo kubeadm init --control-plane-endpoint=master > /shared/files/join.info
sudo mkdir -p /home/vagrant/.kube
sudo /bin/cp /etc/kubernetes/admin.conf /home/vagrant/.kube/config
sudo chown 1000:1000 /home/vagrant/.kube/config
#kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.0/manifests/calico.yaml

