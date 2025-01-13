# WordPress and MySQL Docker Setup

This project contains the setup to run WordPress with MySQL using Docker. Below are the detailed steps to build, tag, push, and run the containers for both WordPress and MySQL.

## 1 Prerequisites

If you are new to this repository then fork this repository and also like it so that I know you liked my work.

## 2 Prerequisites
Before starting, make sure you have Docker, Terraform, AWS CLI & Kind installed on your machine. 

## 3 Configure Terraform & AWS CLI : 
Reference Install Terraform Official Website 
```bash
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
```
Reference Install Terraform | AWS CLI Youtube
```bash
https://www.youtube.com/watch?v=sNxDvxRk56s
```

## 4 Create AWS Group & Policy : 
Reference Create AWS IAM User Access Key & Secret Key 
```bash
https://youtu.be/03x9PPkXLN0?si=ojN3YT9HXmynBDgW
```

## 5 Create IAM user & Accees Key & Secret Key  : 
Reference Create AWS IAM User Access Key & Secret Key 
```bash
https://youtu.be/SoBlB2K2ULk?si=oNJaPToOsmg2HFvp
```

## 6 Create EC2 Instance using Terraform  : 
```bash

```
## 7 Docker Install Commands
```bash
sudo apt-get update -y 
sudo apt-get upgrade -y
sudo apt-get install docker.io
sudo apt-get install docker-compose-v2 -y
```
Add User in Docker Group
```bash
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl enable docker
```
## 8 Installing KIND and kubectl
Create a shell script file named kind_cluster.sh and paste the following commands into it 
```bash
#!/bin/bash

[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64

chmod +x ./kind
sudo cp ./kind /usr/local/bin/kind

VERSION="v1.30.0"
URL="https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl"
INSTALL_DIR="/usr/local/bin"

curl -LO "$URL"
chmod +x kubectl
sudo mv kubectl $INSTALL_DIR/
kubectl version --client

rm -f kubectl
rm -rf kind

echo "Available on Github Burhan1009 kind & kubectl installation complete."
```
Give the file Permission 
```bash
 sudo chmod 777 kind_cluster.sh
```
then install 
```bash
 ./kind_cluster.sh
```
## 9 Check Version's 

```bash
docker --version
kind --version
aws --version
terraform --version
```
## Docker Installing Steps 
### 10. Navigate to the `wordpress` directory and build the WordPress Docker image
```bash
cd wordpress/
docker build -t burhan503-wordpress .
```
### 11. Navigate to the MySQL directory and build the MySQL Docker image
```bash
cd ../mysql/
docker build -t burhan503-mysql .
```
### 12 . View the Docker images
```bash
docker images
```
