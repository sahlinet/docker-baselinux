docker tag bl-debian:wheezy philipsahli/debian:wheezy
docker tag bl-debian:wheezy philipsahli/debian:latest
docker push philipsahli/debian-v2:wheezy
docker push philipsahli/debian-v2:latest

docker tag bl-ubuntu-v2:precise philipsahli/ubuntu-v2:precise
docker tag bl-ubuntu-v2:trusty philipsahli/ubuntu-v2:trusty
docker tag bl-ubuntu-v2:vidid philipsahli/ubuntu-v2:vivid
docker tag bl-ubuntu-v2:trusty philipsahli/ubuntu-v2:latest
docker push philipsahli/ubuntu-v2:precise
docker push philipsahli/ubuntu-v2:trusty
docker push philipsahli/ubuntu-v2:latest

docker tag bl-centos-v2:7 philipsahli/centos-v2:7
docker tag bl-centos-v2:7 philipsahli/centos-v2:latest
docker push philipsahli/centos-v2:7
docker push philipsahli/centos-v2:latest
