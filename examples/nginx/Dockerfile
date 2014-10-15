FROM philipsahli/debian:latest

# Install Nginx
RUN apt-get install -y nginx

# Add configuration for supervisord
ADD examples/nginx/nginx.conf /etc/supervisor/conf.d/

# Expose port 80
EXPOSE 80