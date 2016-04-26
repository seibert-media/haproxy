#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

################################################################################

K8S_ENDPOINT_0="172.16.11.20"
K8S_ENDPOINT_1="172.16.11.21"
K8S_ENDPOINT_2="172.16.11.22"

BB_EXTERN="tools.seibert-media.net"
HL_EXTERN="tools.seibert-media.net"

################################################################################

source "utils/config-generator.sh"

generate_configs
