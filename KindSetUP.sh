#!/bin/bash/
# Docker
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable --now docker
# Add your user to docker group (log out/in or use `newgrp docker` afterwards)
sudo usermod -aG docker $USER

# Install kind (example)
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
kind --version


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client


# Note do " newgrp docker " after running all the above 

