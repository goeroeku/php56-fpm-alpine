# PHP FPM ALPINE ![Build Status](https://travis-ci.org/goeroeku/php-fpm-alpine.svg?branch=master)

Docker image 

## How to Use

```text
docker pull goeroeku/php56-fpm-alpine:latest
```

## php-fpm-alpine

PHP FPM with mysqli and pdo base on Alpine

## Softwares & Versions

- Alpine 3.5 (last version support php 5.6)
- PHP 5.6

## Extra PHP modules installed

- php5-gd
- php5-mcrypt
- php5-intl
- php5-curl
- php5-mysqli
- php5-pgsql
- php5-xsl
- php5-xmlrpc

## Manual Building

1. `./bin/dockerlint`
2. `./bin/build {TAG} [dev,prod]`

## Helper scripts

1. `./bin/dockerlint` : Checks the syntax of the Dockerfile file
2. `./bin/build` : for building images
3. `./bin/start` : for starting a container
4. `./bin/enter` : for entering a container
