cp distros/centos/Dockerfile .
docker build -t bl-centos-v2:7 .
docker tag bl-centos-v2:7 bl-centos-v2:latest
docker tag bl-centos-v2:7 philipsahli/centos-v2
docker push philipsahli/centos-v2
rm Dockerfile
