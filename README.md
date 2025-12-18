# docker frankenphp

## changelog
- 18 des 2025 : php 8.4 phalcon 5.9.3

## command
````
# build tanpa buildx
docker build --tag nimdasx/frankenphp . 
docker push nimdasx/frankenphp

# build dan push ke github
docker buildx build --platform linux/amd64,linux/arm64 --tag ghcr.io/nimdasx/frankenphp --push .

# build dan push ke docker hub
docker buildx build --platform linux/amd64,linux/arm64 --tag nimdasx/frankenphp --push .

# jika error pas buildx, jalankan ini
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
````