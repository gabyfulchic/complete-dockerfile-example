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
  chown dev:dev /srv

# Environment 
WORKDIR /srv
USER dev

# COPY to send a file to a dest
# ADD works too  
COPY package.json /srv
ADD package.json /srv

# Network resources
EXPOSE ${PORT}

# Again a RUN. You can
RUN 

# Entrypoint cmds
ENTRYPOINT /bin/sh
CMD /home/gaby/DevOps/entrypoint.sh

# Or something like that
CMD [ "npm", "start" ]
