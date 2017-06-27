############################################################
# Dockerfile to build the kannji nginx for server Alan
############################################################
FROM nginx
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# Copy necessary fiels into container
# config files
COPY ./data/nginx       /etc/nginx
# let's encrypt keys
COPY ./data/dhparam.pem  /etc/ssl/certs/