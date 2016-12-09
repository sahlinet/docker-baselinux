cp distros/ubuntu/Dockerfile-trusty Dockerfile
docker build -t bl-ubuntu:trusty .
docker tag -f bl-ubuntu:trusty bl-ubuntu:latest
rm Dockerfile

cp distros/ubuntu/Dockerfile-vivid Dockerfile
docker build -t bl-ubuntu:vivid .
docker tag -f bl-ubuntu:vivid bl-ubuntu:latest
rm Dockerfile
