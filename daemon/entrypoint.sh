#!/usr/bin/env bash

set -e

cd $(dirname $0)/../../daemon

sudo pip3 install -r requirements.txt -r requirements-dev.txt

./migrate generate
./migrate upgrade

./thermostatd --host 0.0.0.0 -c thermostat.conf
