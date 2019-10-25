FROM node:11-alpine
MAINTAINER Gaby Fulchic <gaby.fulchic@ynov.com> 

# Variables
ARG PORT=8884

##############################################################################
#  
#  Other clauses
#
#  LABEL : add description. ex : LABEL software_version="date, version, etc.."
#  ENV : set ENV VAR in the container. ex : ENV PATH /nani/nana/bin:$PATH
#  ONBUILD : action for children images.
#  VOLUME : configure storage or expose files/foldrs created by your container.
#
##############################################################################

# Prerequisites 
RUN apk update && apk upgrade &&\ 
  adduser -D dev &&\
  chown -R dev:dev /home/dev

# Environment 
WORKDIR /home/dev
USER dev

# Another RUN :p
RUN mkdir /home/dev/apps

# COPY to send a file to a dest
# ADD works too  
COPY package.json /home/dev/apps
ADD package.json /home/dev/apps

# Network resources
EXPOSE ${PORT}

# Again a RUN. You can
RUN echo "toto" >> yourfile

# With the ENTRYPOINT and CMD below we will :
# /bin/cat the file /home/gaby/DevOps/entrypoint.sh

# Entrypoint cmds : cmd launch with the /bin/sh -c from docker behaviour
ENTRYPOINT /bin/cat

# CMD is the arg passed to docker run -ti ubuntu $CMD
CMD /home/gaby/DevOps/entrypoint.sh

# You could too only use CMD like that
CMD [ "npm", "start" ]
