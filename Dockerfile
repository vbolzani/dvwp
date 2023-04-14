FROM wordpress:php7.1-apache

ENV PORT 80

COPY ./otherz /var/www/html/
COPY ./plugins /var/www/html/wp-content/plugins

RUN wp-cli install-wp