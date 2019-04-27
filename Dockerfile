FROM alpine:3.5

LABEL maintainer="goeroeku@gmail.com"

# Install openssh
RUN apk add --update --no-cache openssh \
  # Install php
  && apk add --update --no-cache php5 php5-fpm php5-gd php5-mcrypt php5-intl php5-curl php5-mysqli php5-pgsql php5-xsl php5-xmlrpc \
  # Post run: Remove unnecessary file
  && rm -rf /tmp/pear \
  && rm -rf /var/cache/apk/*

# Create public html directory
RUN mkdir -p /var/www/html/

EXPOSE 9000