#!/bin/bash

function generate_configs {
	echo "generate_configs started"

	if [ -f secrets.sh ]; then
		source "secrets.sh"
	else
		echo "WARNING: secrets.sh not found. using default secrets"
	fi

	STATS_PASSWORD=${STATS_PASSWORD:=S3CR3T}
	PROMETHEUS_PASSWORD=${PROMETHEUS_PASSWORD:=S3CR3T}
	APTLY_API_PASSWORD=${APTLY_API_PASSWORD:=S3CR3T}
	DASHBOARD_PASSWORD=${DASHBOARD_PASSWORD:=S3CR3T}
	NSQ_ADMIN_PASSWORD=${NSQ_ADMIN_PASSWORD:=S3CR3T}

	render template/haproxy.cfg > haproxy.cfg

	echo "generate_configs finished"
}


function render {
  eval "echo \"$(cat $1)\""
}
