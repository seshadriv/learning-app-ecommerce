#base image
FROM php:7.4-apache

#install mysqli extension

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

COPY . /var/www/html/.

# Set environment variables for database connection
ENV DB_HOST=mysql-service
ENV DB_USER=root
ENV DB_PASSWORD=your_password
ENV DB_NAME=your_database_name

EXPOSE 80
