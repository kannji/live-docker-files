############################################################
# Dockerfile to build kannji-api deployment server
# Based on Python
############################################################
FROM kannji-api-base-image
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# expose port for later access
EXPOSE 80

ENTRYPOINT python /home/kannji/api-server/manage.py runserver 0.0.0.0:80
