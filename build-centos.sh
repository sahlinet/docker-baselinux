cp distros/centos/Dockerfile .
docker build --pull=true -t bl-centos:7 .
docker tag bl-centos:7 bl-centos:latest
docker tag bl-centos:7 philipsahli/centos
#docker push philipsahli/centos
rm Dockerfile
