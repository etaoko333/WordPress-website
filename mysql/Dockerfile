# MySQL Dockerfile
FROM mysql:latest

# Set MySQL environment variables
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=wordpress
ENV MYSQL_PASSWORD=wordpress

# Expose MySQL port
EXPOSE 3306

# Copy custom initialization SQL scripts if needed (uncomment if applicable)
#ADD ./init-scripts /docker-entrypoint-initdb.d

# Command to start MySQL server
CMD ["mysqld"]
