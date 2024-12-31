# WordPress and MySQL Docker Setup

This project contains the setup to run WordPress with MySQL using Docker. Below are the detailed steps to build, tag, push, and run the containers for both WordPress and MySQL.

## Prerequisites

Before starting, make sure you have Docker installed on your machine.

## Project Structure

- `wordpress/`: Contains the WordPress Docker configuration.
- `mysql/`: Contains the MySQL Docker configuration.

## Steps to Set Up WordPress and MySQL

### 1. Navigate to the `wordpress` directory and build the WordPress Docker image

All Docker Images Rumove in single command **docker image prune -a -f**

**# WordPress and MySQL Docker Setup**

This guide walks you through building, tagging, pushing, and running WordPress and MySQL containers using Docker.

### **1. Navigate to the WordPress directory and build the WordPress Docker image**
```bash
cd wordpress/
docker build -t burhan503-wordpress .
```

### **2. Navigate to the MySQL directory and build the MySQL Docker image**
```bash
cd ../mysql/
docker build -t burhan503-mysql .
```

### **3. View the Docker images**
```bash
docker images
```

### **4. Tag Docker images for versioning**
After building the images, tag them for versioning:
```bash
docker login -u burhan503
docker tag burhan503-wordpress:latest burhan503/burhan503-wordpress:v1.0
docker tag burhan503-mysql:latest burhan503/burhan503-mysql:v1.0
```

### **5. Push Docker images to Docker Hub**
Push the tagged images to Docker Hub:
```bash
docker push burhan503/burhan503-wordpress:latest
docker push burhan503/burhan503-wordpress:v1.0
docker push burhan503/burhan503-mysql:v1.0
```

### **6. Create a custom Docker network**
To allow WordPress and MySQL containers to communicate, create a custom Docker network:
```bash
docker network create wordpress-network
```

### **7. Run the MySQL container**
Run the MySQL container with the necessary environment variables:
```bash
docker run -d --name mysql_db --network wordpress-network \
  -e MYSQL_ROOT_PASSWORD=wordpress_user_password \
  -e MYSQL_DATABASE=name_your_wordpress_database \
  -e MYSQL_USER=wordpress_user \
  -e MYSQL_PASSWORD=wordpress_user_password \
  burhan503-mysql:latest
```

### **8. Run the WordPress container**
Run the WordPress container and link it to the MySQL container:
```bash
docker run -d --name wordpress --network wordpress-network -p 8000:80 \
  -e WORDPRESS_DB_HOST=mysql_db:3306 \
  -e WORDPRESS_DB_USER=wordpress_user \
  -e WORDPRESS_DB_PASSWORD=wordpress_user_password \
  -e WORDPRESS_DB_NAME=name_your_wordpress_database \
  burhan503-wordpress:latest
```

### **9. View running containers**
Check that both the WordPress and MySQL containers are running:
```bash
docker ps
```

### **10. Access the WordPress application**
Your WordPress application should now be accessible at:
```
http://localhost:8000
```

### **11. Stop and remove containers**
To stop the running containers:
```bash
docker stop wordpress mysql_db
```
To remove the stopped containers:
```bash
docker rm wordpress mysql_db
```

### **Notes**
- Replace `name_your_wordpress_database` with the name of your actual WordPress database.
- You can modify the version tags (like `v1.0`) as per your versioning preference.

By following the above steps, you will have successfully built, tagged, pushed, and run the WordPress and MySQL containers using Docker.


This `README.md` includes every command you ran, organized into sections for clarity. Let me know if you'd like to add more details!

## Now Jump on Kubernetes Here i follow some step to install Kubernetes step by step

# Setting Up KIND and Kubernetes Cluster

## **1. Installing KIND and kubectl**

### **Steps:**
1. Create a shell script file named `kind_cluster.sh` and paste the following commands into it:

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

2. Run the script to install KIND and kubectl:
```bash
bash kind_cluster.sh
```

---

## **2. Setting Up the KIND Cluster**

### **Steps:**
1. Create a configuration file named `kind-cluster-config.yaml` with the following content:

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
  extraPortMappings:
  - containerPort: 80
    hostPort: 80
    protocol: TCP
  - containerPort: 443
```

2. Create the cluster using the configuration file:
```bash
kind create cluster --name=e-commerce-webiste --config=config.yml
```

3. Verify the cluster:
```bash
kubectl get nodes
kubectl cluster-info
```

---

## **3. Managing Kubernetes Namespaces**

### **Steps:**
1. Create a namespace:
```bash
kubectl create ns website
```

2. Verify the namespace:
```bash
kubectl get ns
```

3. Delete the namespace:
```bash
kubectl delete ns website
```

---

By following these steps, you will have successfully installed KIND and kubectl, set up a Kubernetes cluster, and learned how to manage namespaces. Enjoy building your Kubernetes environments!
