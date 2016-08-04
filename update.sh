#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

git pull
./generate.sh
[[ -f "/etc/init.d/haproxy" ]] && /etc/init.d/haproxy reload
[[ -f "/usr/local/etc/rc.d/haproxy" ]] && /usr/local/etc/rc.d/haproxyreload
