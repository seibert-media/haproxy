#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

################################################################################

K8S_ENDPOINT_0="172.16.11.15"
K8S_ENDPOINT_1="172.16.11.16"
K8S_ENDPOINT_2="172.16.11.17"

################################################################################

source "utils/config-generator.sh"

generate_configs
