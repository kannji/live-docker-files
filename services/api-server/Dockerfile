############################################################
# Dockerfile to build the development kannji-api server
# Based on Python
############################################################
FROM python:alpine
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# get necessary stuff
# packages
# TODO add package descriptions
RUN apk update && apk upgrade && \
    apk add --virtual build-deps gcc python-dev musl-dev && \
    apk add postgresql-dev libxml2-dev libxslt-dev unzip
# pip stuff
RUN pip install Django psycopg2 lxml django-oauth-toolkit django-cors-middleware

# getting the code
#TODO checksum check
# first, new dir
RUN mkdir -p /kannji/
# get the server code from the repo
ADD https://github.com/kannji/api-server/archive/master.zip /kannji/master.zip
# extract the code it
RUN unzip /kannji/master.zip -d /kannji/

# image config
WORKDIR /kannji/api-server-master/
EXPOSE 80

# entrypoint
COPY docker-entrypoint.sh ./
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT ["./docker-entrypoint.sh"]

# command
CMD ["runserver", "0.0.0.0:80"]