############################################################
# Dockerfile to build kannji-api deployment server
# Based on Python
############################################################
FROM live_kannji-api-code-base
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# expose port for later access
EXPOSE 80

# as entrypoint we start the server on port 80
ENTRYPOINT python /home/kannji/api-server/manage.py migrate && pythondocker start /home/kannji/api-server/manage.py runserver 0.0.0.0:80