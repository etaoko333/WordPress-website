# Use the official WordPress image
FROM wordpress:latest

# Set environment variables for WordPress
ENV WORDPRESS_DB_HOST=mysql_db:3306
ENV WORDPRESS_DB_USER=wordpress_user
ENV WORDPRESS_DB_PASSWORD=wordpress_user_password
ENV WORDPRESS_DB_NAME=name_your_wordpress_database

# Expose port 80 for WordPress
EXPOSE 80

# Copy local WordPress themes, plugins, or configurations (optional)
COPY ./ /var/www/html

