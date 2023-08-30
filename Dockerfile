FROM php:7.4-apache
RUN docker-php-ext-install pdo pdo_mysql
COPY . /E-commerce-7June/ .
EXPOSE 80
docker build -t anilphp .
docker run -d -p 8080:80 anilphp
