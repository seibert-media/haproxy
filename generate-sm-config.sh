#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

################################################################################

HAPROXY_TEMPLATE="template/haproxy-sm.cfg"

K8S_ENDPOINT_0="172.16.11.20"
K8S_ENDPOINT_1="172.16.11.21"
K8S_ENDPOINT_2="172.16.11.22"

EXTERN="tools.seibert-media.net"

################################################################################

source "utils/config-generator.sh"

generate_configs
