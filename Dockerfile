FROM wordpress:php7.1-apache

ENV PORT 31337

CMD sed -i "s/80/$PORT/g" /etc/apache2/sites-enabled/000-default.conf /etc/apache2/ports.conf && docker-php-entrypoint apache2-foreground

COPY ./otherz /var/www/html/
COPY ./plugins /var/www/html/wp-content/plugins