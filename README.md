# WordPress and MySQL Docker Setup

This project contains the setup to run WordPress with MySQL using Docker. Below are the detailed steps to build, tag, push, and run the containers for both WordPress and MySQL.

## Prerequisites

Before starting, make sure you have Docker installed on your machine.

## Project Structure

- `wordpress/`: Contains the WordPress Docker configuration.
- `mysql/`: Contains the MySQL Docker configuration.

## Steps to Set Up WordPress and MySQL

### 1. Navigate to the `wordpress` directory and build the WordPress Docker image

All Docker Images Rumove in single command docker image prune -a -f

```bash
cd wordpress/
docker build -t burhan503-wordpress .

**### 2. Navigate to the mysql directory and build the MySQL Docker image**
cd ../mysql/
docker build -t burhan503-mysql .

**3. View the Docker images**
docker images

**4. Tag Docker images for versioning**
After building the images, tag them for versioning:
docker login -u burhan503
docker tag burhan503-wordpress:latest burhan503/burhan503-wordpress:v1.0
docker tag burhan503-mysql:latest burhan503/burhan503-mysql:v1.0

**5. Push Docker images to Docker Hub**
Push the tagged images to Docker Hub

docker push burhan503/burhan503-wordpress:latest
docker push burhan503/burhan503-wordpress:v1.0
docker push burhan503/burhan503-mysql:v1.0

**6 Create a custom Docker network**
To allow WordPress and MySQL containers to communicate, create a custom Docker network:

docker network create wordpress-network

**7. Run the MySQL container**
Run the MySQL container with the necessary environment variables:
docker run -d --name mysql_db --network wordpress-network -e MYSQL_ROOT_PASSWORD=wordpress_user_password -e MYSQL_DATABASE=name_your_wordpress_database -e MYSQL_USER=wordpress_user -e MYSQL_PASSWORD=wordpress_user_password burhan503-mysql:latest

Alternatively, use the latest tag:

**8. Run the WordPress container**
Run the WordPress container and link it to the MySQL container:
docker run -d --name wordpress --network wordpress-network -p 8000:80 -e WORDPRESS_DB_HOST=mysql_db:3306 -e WORDPRESS_DB_USER=wordpress_user -e WORDPRESS_DB_PASSWORD=wordpress_user_password -e WORDPRESS_DB_NAME=name_your_wordpress_database burhan503-wordpress:latest

**9. View running containers**
Check that both the WordPress and MySQL containers are running:
docker ps

**11. Stop and remove containers**
To stop the running containers

docker stop wordpress mysql_db

To remove the stopped containers:

docker rm wordpress mysql_db

By following the above steps, you will have successfully built, tagged, pushed, and run the WordPress and MySQL containers using Docker. Your WordPress application should now be accessible at http://localhost:8000.

Notes
Replace name_your_wordpress_database with the name of your actual WordPress database.
You can modify the version tags (like v1.0) as per your versioning preference.


This `README.md` includes every command you ran, organized into sections for clarity. Let me know if you'd like to add more details!

