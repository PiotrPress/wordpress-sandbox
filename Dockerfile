FROM php:8.0-cli-alpine

COPY . /usr/src/wordpress
WORKDIR /usr/src/wordpress

RUN docker-php-ext-install mysqli
RUN apk --update-cache add sqlite
RUN rm -rf /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require piotrpress/wordpress-composer --quiet --no-interaction
RUN composer config -g allow-plugins.piotrpress/wordpress-composer true --quiet --no-interaction

EXPOSE 80

CMD composer install --no-interaction && php -S 0.0.0.0:80 -t wp-core vendor/piotrpress/wordpress-router/res/rewrite.php