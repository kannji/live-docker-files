############################################################
# kannji-api-base-code-base-image
#
# This image is based on the kannji-api-base-stage1-image.
# It downloads the kannji-api-server code from github and extracs it.
############################################################
FROM kannji-api-3rd-party-base-image
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# get password file
COPY passwords.py /home/kannji/api-server/passwords.py

# get the server code from the repo
# RUN wget -x -O /home/kannji/api-server/master.zip 'https://github.com/Jan-LucaKlees/Kannji-Server/archive/master.zip'
RUN wget -x -O /home/kannji/api-server/master.zip 'https://github.com/Jan-LucaKlees/Kannji-Server/archive/postgres.zip'

# extract the code it
RUN unzip /home/kannji/api-server/master.zip

# copy it in the main directory
# RUN cp -r /home/kannji/api-server/Kannji-Server-master/. /home/kannji/api-server/
RUN cp -r /home/kannji/api-server/Kannji-Server-postgres/. /home/kannji/api-server/

# cleaning up a little
RUN rm master.zip
# RUN rm -r Kannji-Server-master/
RUN rm -r Kannji-Server-postgres/

# as this image is not an image that should be used on it's own, the entrypoint is just the console.
ENTRYPOINT bash
