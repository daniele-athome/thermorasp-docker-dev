#!/usr/bin/env bash

set -e

cd $(dirname $0)/../../webui

npm install
exec npm run ng serve -- --host=0.0.0.0 --port=4201 --disable-host-check
