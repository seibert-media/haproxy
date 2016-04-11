#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

################################################################################

MISC="172.16.60.23"
K8S_ENDPOINT_0="172.16.20.20"
K8S_ENDPOINT_1="172.16.20.21"
K8S_ENDPOINT_2="172.16.20.22"

BB_EXTERN="bb.ipfire.hm.benjamin-borbe.de"
BB_INTERN="bb.ipfire.hm.benjamin-borbe.de"

HL_EXTERN="hl.ipfire.hm.benjamin-borbe.de"
HL_INTERN="hl.ipfire.hm.benjamin-borbe.de"

################################################################################

source "utils/config-generator.sh"

generate_configs
