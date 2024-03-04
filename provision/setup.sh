/bin/cp /shared/files/hosts /etc/hosts
# sudo swapoff -a
# sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
# sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --batch --yes --dearmour -o /etc/apt/trusted.gpg.d/kubernetes-xenial.gpg
# sudo apt-add-repository -y "deb http://apt.kubernetes.io/ kubernetes-xenial main"
# sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --batch --yes --dearmour -o /etc/apt/trusted.gpg.d/docker.gpg
# sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# sudo apt update
# sudo NEEDRESTART_MODE=a apt-get dist-upgrade --yes
# sudo apt upgrade -y
# sudo apt install -y curl gnupg2 software-properties-common apt-transport-https ca-certificates
# sudo apt install -y containerd.io
# sudo apt install -y kubelet kubeadm kubectl --allow-change-held-packages
# sudo apt-mark hold kubelet kubeadm kubectl
# sudo /bin/cp /shared/files/containerd.conf /etc/modules-load.d/containerd.conf
# sudo modprobe overlay
# sudo modprobe br_netfilter
# sudo /bin/cp /shared/files/kubernetes.conf /etc/sysctl.d/kubernetes.conf
# sudo sysctl --system
# containerd config default | sudo tee /etc/containerd/config.toml >/dev/null 2>&1
# sudo sed -i 's/SystemdCgroup \= false/SystemdCgroup \= true/g' /etc/containerd/config.toml
# sudo systemctl restart containerd
# sudo systemctl enable containerd
# echo Done