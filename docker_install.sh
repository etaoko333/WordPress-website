#!/bin/bash

# Ensure the script runs with root privileges
if [ "$(id -u)" -ne 0 ]; then
  echo "Please run this script as root or use sudo."
  exit 1
fi

echo "Updating package list..."
sudo apt-get update -y

echo "Checking if 'docker' group exists..."
if getent group docker > /dev/null 2>&1; then
  echo "'docker' group already exists."
else
  echo "Creating 'docker' group..."
  sudo groupadd docker
fi

echo "Starting Docker service..."
sudo systemctl start docker

echo "Checking Docker service status..."
sudo systemctl status docker --no-pager

echo "Docker installation and service setup complete."
