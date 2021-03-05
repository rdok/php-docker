# PHP Docker
[![Buster][buster_badge]][buster_ci]
[![Alpine][alpine_badge]][alpine_ci]
[![Alpine][docker_hub_badge]][docker_hub]

[buster_ci]: https://github.com/rdok/php-docker/actions/workflows/php8-buster.yml
[buster_badge]: https://github.com/rdok/php-docker/actions/workflows/php8-buster.yml/badge.svg
[alpine_ci]: https://github.com/rdok/php-docker/actions/workflows/php8-alpine.yml
[alpine_badge]: https://github.com/rdok/php-docker/actions/workflows/php8-alpine.yml/badge.svg
[docker_hub]: https://hub.docker.com/repository/docker/rdok/php-docker
[docker_hub_badge]: https://img.shields.io/badge/Docker%20Hub-grey?style=square&logo=docker

Docker images for CIs & development.

### Features
Each image:
- Installs composer

### Images
- php:8.0-cli-buster for development.
- php:8.0-cli-alpine3.13 for CI.
