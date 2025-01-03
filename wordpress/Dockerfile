# WordPress with Apache and MySQL setup using Dockerfile

# Base image: WordPress with Apache
FROM wordpress:latest

# Set WordPress environment variables
ENV WORDPRESS_DB_HOST=mysql
ENV WORDPRESS_DB_USER=wordpress
ENV WORDPRESS_DB_PASSWORD=wordpress
ENV WORDPRESS_DB_NAME=wordpress

# Install MySQL client to interact with the MySQL database (if needed for debugging)
RUN apt-get update && apt-get install -y default-mysql-client && rm -rf /var/lib/apt/lists/*

# Expose Apache server port
EXPOSE 8100

# Copy custom configurations if needed (uncomment if applicable)
# ADD ./custom-configs /var/www/html
#ADD ./custom-configs /var/www/html
# Start the Apache server when the container starts
CMD ["apache2-foreground"]
