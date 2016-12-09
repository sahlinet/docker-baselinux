docker tag bl-debian:wheezy philipsahli/debian:wheezy
docker tag bl-debian:wheezy philipsahli/debian:latest
docker push philipsahli/debian:wheezy
docker push philipsahli/debian:latest

docker tag bl-ubuntu:precise philipsahli/ubuntu:precise
docker tag bl-ubuntu:trusty philipsahli/ubuntu:trusty
docker tag bl-ubuntu:vidid philipsahli/ubuntu:vivid
docker tag bl-ubuntuphilipsahli/ubuntu:latest
docker push philipsahli/ubuntu:precise
docker push philipsahli/ubuntu:trusty
docker push philipsahli/ubuntu:latest

docker tag bl-centos:7 philipsahli/centos:7
docker tag bl-centos:7 philipsahli/centos:latest
docker push philipsahli/centos:7
docker push philipsahli/centos:latest
