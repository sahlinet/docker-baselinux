cp distros/debian/Dockerfile .
docker build -t bl-debian:wheezy .
docker tag bl-debian:wheezy bl-debian:latest
rm Dockerfile
