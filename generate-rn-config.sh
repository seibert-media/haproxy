#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

################################################################################

K8S_ENDPOINT_0="172.16.30.20"
K8S_ENDPOINT_1="172.16.30.21"
K8S_ENDPOINT_2="172.16.30.22"

BB_EXTERN="benjamin-borbe.de"
HL_EXTERN="harteslicht.com"

################################################################################

source "utils/config-generator.sh"

generate_configs
