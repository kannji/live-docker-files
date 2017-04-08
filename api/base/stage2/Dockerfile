############################################################
# Dockerfile to build kannji-api-base-stage2 server
# Based on the kannji-api-base-stage1-image which holds all required software
############################################################
FROM kannji-api-base-stage1-image
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# set the working dir on the container
WORKDIR /home/kannji/api-server

# get password file
COPY passwords.py /home/kannji/api-server/passwords.py

# get the server code
RUN apt-get -y install unzip
RUN mkdir -p /home/kannji/api-server
RUN wget -O /home/kannji/api-server/master.zip 'https://github.com/Jan-LucaKlees/Kannji-Server/archive/master.zip'
RUN unzip /home/kannji/api-server/master.zip
RUN cp -r /home/kannji/api-server/Kannji-Server-master/. /home/kannji/api-server/

# cleaning up a little
RUN rm master.zip
RUN rm -r Kannji-Server-master/

RUN python /home/kannji/api-server/manage.py migrate

ENTRYPOINT bash
