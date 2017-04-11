############################################################
# Dockerfile to build kannji-api deployment server
# Based on Python
############################################################
FROM nginx
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# RUN echo 'deb http://ftp.debian.org/debian jessie-backports main' | tee /etc/apt/sources.list.d/backports.list

# RUN apt-get update
# RUN apt-get upgrade

# RUN apt-get install certbot -t jessie-backports -y

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

ADD snippets/ /etc/nginx/snippets/

ADD dhparam.pem /etc/ssl/certs/

ADD letsencrypt/ /etc/letsencrypt/