FROM php:8.3-alpine

LABEL "maintainer"="Pablo Nieto <pnieto@teltek.es>"

ENV VERSION=3.49.0

RUN wget https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v$VERSION/php-cs-fixer.phar -O php-cs-fixer \
    && chmod a+x php-cs-fixer \
    && mv php-cs-fixer /usr/local/bin/php-cs-fixer

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
