docker run -e NEWRELIC_LICENSE=$NEWRELIC_LICENSE -d -p 10000:22 -e SSH_PUBKEY=$SSH_PUBKEY -i -t centos:7
