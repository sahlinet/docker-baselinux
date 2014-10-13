These docker images can be used to simply start a Debian Linux container
or to extend from for building a custom container. Services are started by [Supervisor][6].

# Versions

* [Debian][2], see on [Hub][4]
	* debian:wheezy, debian:latest

* [CentOS][3], see on [Hub][5]
	* centos:7, centos:latest

# Build

    sh build.sh [centos, debian]


# Run


    sh run.sh [centos, debian]


or


    docker run -d -p 10000:22 -t philipsahli/debian:latest
    docker run -d -p 10001:22 -t philipsahli/centos:latest
 

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

[1]: http://newrelic.com
[2]: https://www.debian.org
[3]: http://www.centos.org/
[4]: https://registry.hub.docker.com/u/philipsahli/centos/
[5]: https://registry.hub.docker.com/u/philipsahli/debian/
[6]: http://supervisord.org/index.html