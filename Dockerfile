# Modified drupal image

FROM drupal:latest

MAINTAINER Andre Fernandes <andre@vertigo.com.br>

RUN curl http://drupalconsole.com/installer -L -o drupal.phar && \
    mv drupal.phar /usr/local/bin/drupal && chmod +x /usr/local/bin/drupal && \
    drupal init
RUN echo "display_errors = On" > /usr/local/etc/php/conf.d/vtg-custom.ini
