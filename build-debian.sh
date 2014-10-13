cp distros/debian/Dockerfile .
docker build -t bl-debian:wheezy .
rm Dockerfile
