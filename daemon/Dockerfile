FROM debian:stretch-backports

RUN apt-get -qq update && apt-get -qq -y --no-install-recommends install \
    git python3-pip python3-setuptools python3-wheel python3-dev build-essential sudo

VOLUME ["/opt/thermostat/daemon"]
VOLUME ["/opt/thermostat/docker-dev"]

EXPOSE 7475

ARG NEWUID
ENV NEWUID=${NEWUID:-1000}
RUN useradd -u ${NEWUID} --no-log-init -ms /bin/bash thermostat
RUN adduser thermostat sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER thermostat
ENTRYPOINT ["/opt/thermostat/docker-dev/daemon/entrypoint.sh"]
