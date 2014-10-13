cp distros/centos/Dockerfile .
docker build -t bl-centos:7 .
docker tag bl-centos:7 bl-centos:latest
rm Dockerfile
