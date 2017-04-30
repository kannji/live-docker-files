############################################################
# Dockerfile to build kannji-api deployment server
# Based on Python
############################################################
FROM nginx
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# TODO do this in a script maybe? On the host copying the secret into the nginx container
# RUN echo 'deb http://ftp.debian.org/debian jessie-backports main' | tee /etc/apt/sources.list.d/backports.list
# RUN apt-get update
# RUN apt-get upgrade
# RUN apt-get install certbot -t jessie-backports -y

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy necessary fiels into container
# config files
ADD ./data/nginx.conf   /etc/nginx/
ADD ./data/snippets/    /etc/nginx/snippets/
# let's encrypt keys
ADD ./data/dhparam.pem  /etc/ssl/certs/
ADD ./data/letsencrypt/ /etc/letsencrypt/