FROM php:7.4-fpm

WORKDIR /Marolix_E-commerce/E-commerce-7June

RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev zip unzip

RUN docker-php-ext-configure gd --with-jpeg

RUN docker-php-ext-install gd pdo pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY . .

RUN composer install

EXPOSE 9000

CMD ["php-fpm"]
