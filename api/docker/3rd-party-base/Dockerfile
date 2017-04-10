############################################################
# kannji-api-base-stage1 image
#
# This is the image for the first stage of the basic kannji-api-server image.
# It sets up all the needed 3rd-party software for the kannji-api-server to function.
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
RUN pip install psycopg2

# Some Xpath library to parse the kanjidic2 and jmdict with
RUN apt-get -y install libxml2-dev libxslt-dev python-dev
RUN pip install lxml

# oauth2 authentication for django
RUN pip install django-oauth-toolkit django-cors-middleware

# some zip tool for extracting the code from the repo
RUN apt-get -y install unzip

# as this image is not an image that should be used on it's own, the entrypoint is just the console.
ENTRYPOINT bash
