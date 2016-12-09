#FROM philipsahli/debian:latest
FROM philipsahli/debian:latest

# Install Nginx
RUN apt-get install -y nginx
ADD startup_app.sh /startup_app.sh
RUN chmod 755 /startup_app.sh

# Expose port 80
EXPOSE 80

