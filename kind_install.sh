#!/bin/bash

# Check if the system architecture is x86_64
if [ "$(uname -m)" = "x86_64" ]; then
  echo "Downloading kind for x86_64 architecture..."
  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
else
  echo "Unsupported architecture. This script is designed for x86_64 systems."
  exit 1
fi

# Make kind executable and move to /usr/local/bin
chmod +x ./kind
sudo cp ./kind /usr/local/bin/kind
echo "kind installed successfully."

# Install kubectl
VERSION="v1.30.0"
URL="https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl"
INSTALL_DIR="/usr/local/bin"

echo "Downloading kubectl version ${VERSION}..."
curl -LO "$URL"

# Make kubectl executable and move to /usr/local/bin
chmod +x kubectl
sudo mv kubectl "$INSTALL_DIR/"
echo "kubectl installed successfully."

# Verify kubectl installation
kubectl version --client

# Clean up temporary files
rm -f kubectl
rm -rf kind

echo "kind & kubectl installation complete."
echo "Available on Github Burhan1009."
