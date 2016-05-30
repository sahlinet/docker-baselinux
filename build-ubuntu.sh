cp distros/ubuntu/Dockerfile-trusty Dockerfile
docker build -t bl-ubuntu-v2:trusty .
docker tag -f bl-ubuntu-v2:trusty bl-ubuntu-v2:latest
rm Dockerfile

cp distros/ubuntu/Dockerfile-vivid Dockerfile
docker build -t bl-ubuntu-v2:vivid .
docker tag -f bl-ubuntu-v2:vivid bl-ubuntu-v2:latest
rm Dockerfile
