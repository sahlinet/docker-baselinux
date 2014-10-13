docker tag debian-wheezy philipsahli/debian:wheezy
docker tag debian-wheezy philipsahli/debian:latest
docker push philipsahli/debian:wheezy
docker push philipsahli/debian:latest

docker tag centos:7 philipsahli/centos:7
docker tag centos:7 philipsahli/centos:latest
docker push philipsahli/centos:7
docker push philipsahli/centos:latest
