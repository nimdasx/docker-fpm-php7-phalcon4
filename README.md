# docker fpm php-7.4 phalcon-4.1

## Catatan
- Phalcon 4.1 maksimal di PHP 7.4
- **Security Patch Backport**: PHP 7.4 di-rebuild dengan patch resmi kerentanan kritis CVE-2026-109618 & CVE-2026-109619 (`CVE-2026-109618-109619.patch`).
- CI/CD build otomatis menggunakan GitHub Actions (`.github/workflows/docker-build.yml`) dengan build multi-arch (`linux/amd64` dan native `linux/arm64`).

## Command Manual
````bash
# buildx dan push ke github
docker buildx build --platform linux/amd64,linux/arm64 --tag ghcr.io/nimdasx/fpm-php7-phalcon4 --push .

# buildx dan push ke docker hub
docker buildx build --platform linux/amd64,linux/arm64 --tag nimdasx/fpm-php7-phalcon4 --push .
````
