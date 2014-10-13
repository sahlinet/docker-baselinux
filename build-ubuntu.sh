cp distros/ubuntu/Dockerfile Dockerfile
docker build -t bl-ubuntu:precise .
rm Dockerfile

cp distros/ubuntu/Dockerfile-trusty Dockerfile
docker build -t bl-ubuntu:trusty .
rm Dockerfile
