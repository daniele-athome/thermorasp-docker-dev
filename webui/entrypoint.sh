#!/usr/bin/env bash

set -e

cd $(dirname $0)/../../webui

npm install
exec node_modules/http-server/bin/http-server ./app -a 0.0.0.0 -p 4201 -c-1
