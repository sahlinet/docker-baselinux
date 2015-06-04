cp examples/nginx/Dockerfile  .
docker build -t example-nginx .
#docker run -d -t -p 10080:80 -p 10022:22 -e NEWRELIC_LICENSE=$NEWRELIC_LICENSE -e SSH_PUBKEY=$SSH_PUBKEY example-nginx
docker run -d -t -p 10080:80 -p 10022:22 example-nginx
sleep 5
curl http://localhost:10080
