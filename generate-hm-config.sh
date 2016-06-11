#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

################################################################################

K8S_ENDPOINT_0="172.16.20.15"
K8S_ENDPOINT_1="172.16.20.16"
K8S_ENDPOINT_2="172.16.20.17"

BB_EXTERN="bb.ipfire.hm.benjamin-borbe.de"
HL_EXTERN="hl.ipfire.hm.benjamin-borbe.de"

################################################################################

source "utils/config-generator.sh"

generate_configs
