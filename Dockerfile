# Start from an Ubuntu base image
FROM ubuntu:latest

# Update package lists
RUN apt-get update -y

# Install Apache
RUN apt-get install -y apache2

# Install software-properties-common package to get add-apt-repository command
RUN apt-get install -y software-properties-common

# Add ondrej/php which has PHP 8.2.0
RUN add-apt-repository ppa:ondrej/php

# Update package lists
RUN apt-get update -y

# Install PHP 8.2.0 and some extensions
RUN apt-get install -y php8.2 libapache2-mod-php8.2 php8.2-common php8.2-mysql php8.2-gd php8.2-imap php8.2-cli php8.2-phpdbg php8.2-mbstring php8.2-bcmath php8.2-mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Change the working directory
WORKDIR /var/www/html

# Copy your application code to the Docker image (assuming your code is in the current directory)
COPY . .

# Expose port 80 for Apache
EXPOSE 80

# Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]