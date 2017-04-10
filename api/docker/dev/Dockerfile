############################################################
# Dockerfile to build the development kannji-api server
# Based on Python
############################################################
FROM python
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

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

RUN mkdir -p /kannji/

# get the server code from the repo
RUN wget -x -O /kannji/postgres.zip 'https://github.com/kannji/api-server/archive/postgres.zip'

# extract the code it
RUN unzip /kannji/postgres.zip -d /kannji/

WORKDIR /kannji/api-server-postgres/

# get password file
COPY passwords.sh passwords.py

# expose port for later access
EXPOSE 22

# get passsword from environment vars and install ssh for remote access / fileupload
ARG API_DEV_PW

RUN apt-get -y install openssh-server
RUN sed -i '/^PermitRootLogin/s/without-password/yes/' /etc/ssh/sshd_config
RUN echo root:"def23383482c89b70ff5bc24a98c11373fdf8317a595072be3511f58828c48f7" | chpasswd

# ENTRYPOINT service ssh start && python manage.py migrate && python manage.py runserver 0.0.0.0:8000
ENTRYPOINT service ssh start && sleep infinity