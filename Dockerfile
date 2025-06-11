# Use official PHP image with Apache
FROM php:8.2-apache

# Enable Apache mod_rewrite (used in .htaccess)
RUN a2enmod rewrite

# Copy your website files into the container
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Set proper permissions (optional but good)
RUN chown -R www-data:www-data /var/www/html/

# Expose port 80
EXPOSE 80
