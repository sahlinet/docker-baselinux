cp distros/ubuntu/Dockerfile Dockerfile
docker build -t bl-ubuntu:precise .
rm Dockerfile

cp distros/ubuntu/Dockerfile-trusty Dockerfile
docker build -t bl-ubuntu:trusty .
docker tag bl-ubuntu:trusty bl-ubuntu:latest
rm Dockerfile

cp distros/ubuntu/Dockerfile-vivid Dockerfile
docker build -t bl-ubuntu:vivid .
docker tag bl-ubuntu:vivid bl-ubuntu:latest
rm Dockerfile
