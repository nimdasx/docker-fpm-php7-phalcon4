# docker fpm php-7.4 phalcon-4.1

## catatan
- phalcon 4.1 maksimal di php 7.4
- multibuilder lokal dan remote cek https://github.com/nimdasx/gits/blob/main/docker.md#lokal-builder-for-amd64-remote-builder-for-arm64

## command
````
# buildx dan push ke github
docker buildx build --platform linux/amd64,linux/arm64 --tag ghcr.io/nimdasx/fpm-php7-phalcon4 --push .

# buildx dan push ke docker hub
docker buildx build --platform linux/amd64,linux/arm64 --tag nimdasx/fpm-php7-phalcon4 --push .
````