FROM php:8.1-apache
RUN docker-php-ext-install pdo pdo_mysql
COPY . /E-commerce-7June/ .
EXPOSE 80
docker build -t anilPHP .
docker run -d -p 8080:80 anilPHP
