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
RUN pip install django-oauth-toolkit django-cors-middleware

ENTRYPOINT bash
