#!/bin/bash

function generate_configs {
	echo "generate_configs started"

	if [ -f secrets.sh ]; then
		source "secrets.sh"
	else
		echo "WARNING: secrets.sh not found. using default secrets"
	fi

	HAPROXY_TEMPLATE=${HAPROXY_TEMPLATE:=template/haproxy.cfg}

	STATS_PASSWORD=${STATS_PASSWORD:=S3CR3T}
	PROMETHEUS_PASSWORD=${PROMETHEUS_PASSWORD:=S3CR3T}
	APTLY_API_PASSWORD=${APTLY_API_PASSWORD:=S3CR3T}
	DASHBOARD_PASSWORD=${DASHBOARD_PASSWORD:=S3CR3T}
	NSQ_ADMIN_PASSWORD=${NSQ_ADMIN_PASSWORD:=S3CR3T}

	echo "template ${HAPROXY_TEMPLATE}"

	render ${HAPROXY_TEMPLATE} > haproxy.cfg

	echo "generate_configs finished"
}


function render {
  eval "echo \"$(cat $1)\""
}
