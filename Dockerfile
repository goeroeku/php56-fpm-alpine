FROM alpine:3.5

LABEL maintainer="goeroeku@gmail.com"

# Install openssh
RUN apk add --update --no-cache openssh \
  # Install php
  && apk add --update --no-cache php5 php5-fpm php5-json php5-gd php5-mcrypt php5-intl php5-curl php5-mysqli php5-pgsql php5-xsl php5-xmlrpc \
  # Post run: Remove unnecessary file
  && rm -rf /tmp/pear \
  && rm -rf /var/cache/apk/*

# Finishing
RUN sed -i 's/127.0.0.1:9000/9000/g' /etc/php5/php-fpm.conf \
  && mkdir -p /var/www/html

# default sh
WORKDIR /var/www/html

# Run service
CMD ["php-fpm", "-F"]

EXPOSE 9000