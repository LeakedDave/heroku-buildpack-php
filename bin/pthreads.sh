#!/bin/bash
# Build Path: /app/.heroku/php/
/app/php/bin/phpize
./configure --enable-maintainer-zts --with-php-config=$PHP_ROOT/bin/php-config

pecl install pthreads
echo "extension=pthreads.so" >> /app/.heroku/php/etc/php/php.ini
