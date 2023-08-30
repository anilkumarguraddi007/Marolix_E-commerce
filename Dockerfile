FROM php:7.4-apache
RUN docker-php-ext-install pdo pdo_mysql
COPY . /E-commerce-7June/ .
EXPOSE 80
CMD ["apache2-foreground"]
