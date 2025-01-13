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
docker ps
docker images
```
### If you have previously deployed any application through Docker, the Docker images remain stored. To remove them, use this command.
```bash
docker image prune -a -f
```
### 13 This guide walks you through building, tagging, pushing, and running WordPress and MySQL containers using Docker.
```bash
cd wordpress/
docker build -t burhan503-wordpress .
```
```bash
cd ../mysql/
docker build -t burhan503-mysql .
```

### 14. Tag Docker images for versioning 
After building the images, tag them for versioning:
```bash
docker login -u burhan503
docker tag burhan503-wordpress:latest burhan503/burhan503-wordpress:v1.0
docker tag burhan503-mysql:latest burhan503/burhan503-mysql:v1.0
```
### 15. Create a custom Docker network
To allow WordPress and MySQL containers to communicate, create a custom Docker network:
```bash
docker network create wordpress-network
```

### 16. Run the MySQL container
Run the MySQL container with the necessary environment variables:
```bash
docker run -d --name mysql_db --network wordpress-network \
  -e MYSQL_ROOT_PASSWORD=wordpress_user_password \
  -e MYSQL_DATABASE=name_your_wordpress_database \
  -e MYSQL_USER=wordpress_user \
  -e MYSQL_PASSWORD=wordpress_user_password \
  burhan503-mysql:latest
```

### 17. Run the WordPress container 
Run the WordPress container and link it to the MySQL container:
```bash
docker run -d --name wordpress --network wordpress-network -p 8000:80 \
  -e WORDPRESS_DB_HOST=mysql_db:3306 \
  -e WORDPRESS_DB_USER=wordpress_user \
  -e WORDPRESS_DB_PASSWORD=wordpress_user_password \
  -e WORDPRESS_DB_NAME=name_your_wordpress_database \
  burhan503-wordpress:latest
```

### 18. View running containers
Check that both the WordPress and MySQL containers are running:
```bash
docker ps
```

### 19. Access the WordPress application
Your WordPress application should now be accessible at:
```
http://localhost:8000
```

### 20. Stop and remove containers
To stop the running containers:
```bash
docker stop wordpress mysql_db
```
To remove the stopped containers:
```bash
docker rm wordpress mysql_db
```
# Setting Up KIND and Kubernetes Cluster
## 21. Installing KIND and kubectl**

Create a shell script file named `kind_cluster.sh` and paste the following commands into it:

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
## 22. Setting Up the KIND Cluster
Directory : kind-cluster
Create a configuration file named `kind-cluster-config.yaml` with the following content:

```yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4

nodes:
- role: control-plane
  image: kindest/node:v1.31.2
- role: worker
  image: kindest/node:v1.31.2
- role: worker
  image: kindest/node:v1.31.2

```
-  cd kind-cluster/ 
