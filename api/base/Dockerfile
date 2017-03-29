############################################################
# Dockerfile to build kannji-api-base server
# Based on Python
############################################################
FROM python
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# set the working dir on the container
WORKDIR /home/kannji/api-server

# every thing fresh
RUN apt-get -y update
RUN apt-get -y upgrade

# get necessary stuff
# Django for obvious reasons
RUN pip install Django
# Something to connect python to mysql
RUN pip install mysqlclient
# Some Xpath library to parse the kanjidic2 and jmdict with
RUN apt-get -y install libxml2-dev libxslt-dev python-dev
RUN pip install lxml
# oauth2 authentication for django
pip install django-oauth2-provider

# get the server code
RUN apt-get -y install unzip
RUN mkdir -p /home/kannji/api-server
RUN wget -O /home/kannji/api-server/master.zip 'https://github.com/Jan-LucaKlees/Kannji-Server/archive/master.zip'
RUN unzip /home/kannji/api-server/master.zip
RUN cp -r /home/kannji/api-server/Kannji-Server-master/. /home/kannji/api-server/

# get password file
COPY passwords.py /home/kannji/api-server/passwords.py

# cleaning up a little
RUN rm master.zip
RUN rm -r Kannji-Server-master/

RUN python /home/kannji/api-server/manage.py migrate

ENTRYPOINT bash
