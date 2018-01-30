#!/usr/bin/env bash

set -e

cd $(dirname $0)/../../webui

npm install
exec ng serve --host 0.0.0.0 --port 4201
