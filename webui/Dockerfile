FROM node:9-stretch

RUN apt-get -qq update && apt-get -qq -y --no-install-recommends install \
    git

VOLUME ["/opt/thermostat/webui"]
VOLUME ["/opt/thermostat/docker-dev"]

EXPOSE 4201

#ARG NEWUID
#ENV NEWUID=${NEWUID:-1000}
#RUN useradd -u ${NEWUID} --no-log-init -ms /bin/bash thermostat

#USER thermostat
USER node
ENTRYPOINT ["/opt/thermostat/docker-dev/webui/entrypoint.sh"]
