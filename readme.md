# PHP Docker
[![Alpine PHP 5.5][alpine_php5_badge]][alpine_php5_ci] 
[![Jessie PHP 5.5][jessie_php5_badge]][jessie_php5_ci]  
[![Buster PHP 7.4][alpine_php7_badge]][alpine_php7_ci]
[![Buster PHP 7.4][buster_php7_badge]][buster_php7_ci]  
[![Alpine PHP 8.0][alpine_php8_badge]][alpine_php8_ci]
[![Buster PHP 8.0][buster_php8_badge]][buster_php8_ci]  
[![Alpine][docker_hub_badge]][docker_hub]

[jessie_php5_ci]: https://github.com/rdok/php-docker/actions/workflows/php5-jessie.yml
[jessie_php5_badge]: https://github.com/rdok/php-docker/actions/workflows/php5-jessie.yml/badge.svg
[alpine_php5_ci]: https://github.com/rdok/php-docker/actions/workflows/php5-alpine.yml
[alpine_php5_badge]: https://github.com/rdok/php-docker/actions/workflows/php5-alpine.yml/badge.svg
[alpine_php7_ci]: https://github.com/rdok/php-docker/actions/workflows/php7-alpine.yml
[alpine_php7_badge]: https://github.com/rdok/php-docker/actions/workflows/php7-alpine.yml/badge.svg
[buster_php7_ci]: https://github.com/rdok/php-docker/actions/workflows/php7-buster.yml
[buster_php7_badge]: https://github.com/rdok/php-docker/actions/workflows/php7-buster.yml/badge.svg
[buster_php8_ci]: https://github.com/rdok/php-docker/actions/workflows/php8-buster.yml
[buster_php8_badge]: https://github.com/rdok/php-docker/actions/workflows/php8-buster.yml/badge.svg
[alpine_php8_ci]: https://github.com/rdok/php-docker/actions/workflows/php8-alpine.yml
[alpine_php8_badge]: https://github.com/rdok/php-docker/actions/workflows/php8-alpine.yml/badge.svg
[docker_hub]: https://hub.docker.com/repository/docker/rdok/php-docker
[docker_hub_badge]: https://img.shields.io/badge/Docker%20Hub-grey?style=square&logo=docker

Docker images for CIs & development.

### Features
Each image:
- Installs composer
- Fixes composer cache path
