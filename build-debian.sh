cp distros/debian/Dockerfile .
docker build -t bl-debian:wheezy .
docker tag -f bl-debian:wheezy bl-debian:latest
docker tag -f bl-debian:wheezy philipsahli/debian:latest
rm Dockerfile
