#!/bin/bash
if [ "$1" = 'debug' ]; then
	exec "${@:2}"
else
	echo "listening on $1"
	/usr/local/sbin/tobiiusbserviced
	/usr/share/tobii_engine/tobi_engine --daemonize
	export XDG_RUNTIME_DIR=/run/user/0
	export ARCAN_CONNPATH="$1"
	export ARCAN_SHMIF_DEBUG=1
	while true; do
		echo "waiting for device"
		drv_eyetrack
		sleep 1;
	done
fi
