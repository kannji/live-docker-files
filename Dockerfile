############################################################
# Dockerfile to build kannji-api server
# Based on Python
############################################################
FROM python
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# expose port for later access
EXPOSE 80

# set the working dir on the container
WORKDIR /home/kannji/api-server

# every thing fresh
RUN apt-get -y update
RUN apt-get -y upgrade

# get necessary stuff
RUN pip install Django
RUN pip install mysqlclient
RUN apt-get -y install unzip

# get the server code
RUN mkdir -p /home/kannji/api-server
RUN wget -O /home/kannji/api-server/master.zip 'https://github.com/Jan-LucaKlees/Kannji-Server/archive/master.zip'
RUN unzip /home/kannji/api-server/master.zip
RUN cp -r /home/kannji/api-server/Kannji-Server-master/. /home/kannji/api-server/

# cleaning up a little
RUN rm master.zip
RUN rm -r Kannji-Server-master/

RUN python /home/kannji/api-server/manage.py migrate

ENTRYPOINT python /home/kannji/api-server/manage.py runserver 0.0.0.0:80