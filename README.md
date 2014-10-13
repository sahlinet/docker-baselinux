This docker image can be used to simply start a Debian Linux container
or to extend from for building a custom container.

# Versions

* Debian Wheezy (debian:wheezy)

# Build

ˋˋˋshell
sh build.sh
ˋˋˋ

# Run

ˋˋˋshell
sh run.sh
ˋˋˋ

or

ˋ
docker run -d -p 10000:22 -t philipsahli/debian:wheezy
ˋ 

## Variables
### SSH Public Key

Providing a SSH Public Key allows you to login with ssh. Provide the public key
as environment variable ˋSSH_PUBKEYˋ. The key must be base64 encoded.

Example:

ˋˋˋshell
export SSH_PUBKEY=ˋcat $HOME/.ssh/id_dsa.pub|base64ˋ
docker run -d -p 10000:22 -e SSH_PUBKEY=$SSH_PUBKEY -t philipsahli/debian
ˋˋˋ

### Newrelic License Key

[Newrelic] is a platform for monitoring and analyse performance of servers and applications.

Specify the license key which is needed for the agent as environment variable ˋNEWRELIC_LICENSEˋ.

ˋˋˋshell
export NEWRELIC_LICENSE="8w9839d18d918d8189d819d9"
docker run -d -p 10000:22 -e NEWRELIC_LICENSE=$NEWRELIC_LICENSE -t philipsahli/debian
ˋˋˋ



[1]: http://newrelic.com