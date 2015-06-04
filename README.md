These docker images can be used to simply start a Debian Linux container
or to extend from for building a custom container. Services are started by [Supervisor][6].

[![Circle CI](https://circleci.com/gh/sahlinet/docker-baselinux/tree/master.svg?style=svg)](https://circleci.com/gh/sahlinet/docker-baselinux/tree/master)

# Versions

## Debian

See on [Docker Hub][4]

* debian:wheezy, debian:latest

## CentOS

See on [Docker Hub][5]

* centos:7, centos:latest

## Ubuntu

See on [Docker Hub][8]

* ubuntu:precise
* ubuntu:trusty, ubuntu:latest

# Build

    sh build.sh [centos, debian, ubuntu]


# Run


    sh run.sh [centos, debian, ubuntu]


or


    docker run -d -p 10000:22 -t philipsahli/debian:latest
    docker run -d -p 10001:22 -t philipsahli/centos:latest
    docker run -d -p 10002:22 -t philipsahli/ubuntu:latest
 

## Variables
### SSH Public Key

Providing a SSH Public Key allows you to login with ssh. Provide the public key
as environment variable `SSH_PUBKEY`. The key must be base64 encoded.

Example:

    export SSH_PUBKEY=ˋcat $HOME/.ssh/id_dsa.pub|base64ˋ
    docker run -d -p 10000:22 -e SSH_PUBKEY=$SSH_PUBKEY -t philipsahli/debian

### Newrelic License Key

[Newrelic][1] is a platform for monitoring and analyse performance of servers and applications.

Specify the license key which is needed for the agent as environment variable `NEWRELIC_LICENSE`.

    export NEWRELIC_LICENSE="8w9839d18d918d8189d819d9"
    docker run -d -p 10000:22 -e NEWRELIC_LICENSE=$NEWRELIC_LICENSE -t philipsahli/debian

# EXTEND FROM

If you want to use these images as base image, take the Dockerfile from the [Nginx-Example](https://github.com/sahlinet/docker-baselinux/tree/master/examples/nginx)

* Add supervisor configuration for your services to /etc/supervisor/conf.d
* Add a shellscript with the prefix `startup_` and suffix `.sh` (ie. `startup_nginx.sh`) to `/`. It will be executed before supervisor starts the processes
* Expose the additional ports for your application

[1]: http://newrelic.com
[4]: https://registry.hub.docker.com/u/philipsahli/centos/
[5]: https://registry.hub.docker.com/u/philipsahli/debian/
[6]: http://supervisord.org/index.html
[8]: https://registry.hub.docker.com/u/philipsahli/ubuntu/
