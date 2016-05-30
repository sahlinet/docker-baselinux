cd examples/nginx
docker build -t example-nginx .
docker run -d -t -p 10080:80 example-nginx
sleep 5
curl http://localhost:10080
cd -
