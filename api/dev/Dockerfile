############################################################
# Dockerfile to build the development kannji-api server
# Based on Python
############################################################
FROM kannji-api-base-image
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# expose port for later access
EXPOSE 8000
EXPOSE 22

# get passsword from environment vars
ARG API_DEV_PW

# enable root login via ssh and set passwort
RUN apt-get -y install openssh-server
RUN sed -i '/^PermitRootLogin/s/without-password/yes/' /etc/ssh/sshd_config
RUN echo root:$API_DEV_PW | chpasswd

ENTRYPOINT service ssh start && python /home/kannji/api-server/manage.py runserver 0.0.0.0:8000
