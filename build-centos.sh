cp distros/centos/Dockerfile .
docker build -t centos:7 .
docker tag centos:7 centos:latest
rm Dockerfile
