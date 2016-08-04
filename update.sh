#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

git pull
./generate.sh
/etc/init.d/haproxy reload
