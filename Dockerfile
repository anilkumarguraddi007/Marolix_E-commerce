# Use the official PHP image as the base image
FROM php:7.4-fpm

# Set the working directory
WORKDIR /Marolix_E-commerce/E-commerce-7June

# Install PHP extensions and other dependencies
RUN docker-php-ext-install pdo pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy the application files into the container
COPY . .

# Install application dependencies using Composer
RUN composer install

# Expose port 9000
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]
