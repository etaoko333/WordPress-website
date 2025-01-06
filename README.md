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

```

2. Create the cluster using the configuration file:
```bash
kind create cluster --name=wordpress-namespace --config=config.yml
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
kubectl create ns wordpress-namespace
```

2. Verify the namespace:
```bash
kubectl get ns
```

3. Delete the namespace:
```bash
kubectl delete ns wordpress-namespace
```

---

Here is a `README.md` file based on the commands you provided. This assumes that your project is about setting up a Kubernetes cluster using `kind`, deploying WordPress with MySQL, and port forwarding for access:

```markdown
# Kubernetes Cluster Setup for WordPress and MySQL

This project demonstrates how to set up a local Kubernetes cluster using `kind` (Kubernetes in Docker), deploy WordPress with MySQL, and access them using port forwarding.

## Prerequisites

Ensure that you have the following tools installed:

- [Docker](https://www.docker.com/get-started)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [kind](https://kind.sigs.k8s.io/docs/user/quick-start/)

## Setup Instructions

### 1. Create a Kubernetes Cluster using `kind`

Navigate to the directory where your `config.yml` file is located and create a `kind` cluster:

```bash
cd kind/
kind create cluster --name=wordpress-namespace --config=config.yml
```

### 2. Check the Created Clusters

To verify that the cluster has been created successfully, run:

```bash
kind get clusters
```

### 3. Apply Kubernetes Configurations

Next, apply the Kubernetes manifests to set up your WordPress and MySQL resources.

```bash
cd kubernetes/

# Apply the namespace
kubectl apply -f namespace.yml -n wordpress-namespace

# Apply the MySQL deployment and service
kubectl apply -f mysql-deployment.yml -n wordpress-namespace
kubectl apply -f mysql-service.yml -n wordpress-namespace

# Apply the WordPress deployment and service
kubectl apply -f wordpress-deployment.yml -n wordpress-namespace
kubectl apply -f wordpress-service.yml -n wordpress-namespace
```

### 4. Check Resources in the Namespace

To verify the deployment of all resources in the `wordpress-namespace`, use the following command:

```bash
kubectl get all -n wordpress-namespace
```

### 5. Watch the Resources

To watch the resources in real-time as they get created, use the `-w` flag:

```bash
kubectl get all -n wordpress-namespace -w
```

### 6. Port-Forwarding for Local Access

To access the WordPress and MySQL services locally, use the following port-forwarding commands:

#### Access WordPress:
```bash
kubectl port-forward svc/wordpress 8080:80 -n wordpress-namespace
```

You can change the port if needed:
```bash
kubectl port-forward svc/wordpress 8100:80 -n wordpress-namespace
```

#### Access MySQL:
```bash
kubectl port-forward svc/mysql 3307:3306 -n wordpress-namespace
```

### 7. Cleanup

To delete the cluster after use, you can run:

```bash
kind delete cluster --name=website
```

---

## Additional Notes

- Make sure the `namespace.yml`, `mysql-deployment.yml`, `mysql-service.yml`, `wordpress-deployment.yml`, and `wordpress-service.yml` files are properly configured for your use case.
- The port-forwarding allows you to access the WordPress application at `localhost:8080` or `localhost:8100` and MySQL at `localhost:3307`.

## Troubleshooting

- If the `kind create cluster` command fails, ensure that Docker is running properly on your machine.
- If `kubectl get pods` shows that the pods are not running, check the logs of the respective pods using:
## WordPress Error : 

# .htaccess to increase upload file size and PHP limits
```bash
php_value upload_max_filesize 100M
php_value post_max_size 100M
php_value memory_limit 256M
php_value max_execution_time 300
```
- Kubectl Logs 
  ```bash
  kubectl logs <pod-name> -n wordpress-namespace
  ```

