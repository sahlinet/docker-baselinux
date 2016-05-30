cp distros/debian/Dockerfile .
docker build -t bl-debian-v2:wheezy .
docker tag -f bl-debian-v2:wheezy bl-debian-v2:latest
docker tag -f bl-debian-v2:wheezy philipsahli/debian-v2:latest
rm Dockerfile
