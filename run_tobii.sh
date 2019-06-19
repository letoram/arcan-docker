#!/bin/sh
docker run -t -i \
	--privileged \
	-v /dev/bus/usb:/dev/bus/usb \
	--pid="host" \
	--ipc="host" \
	-v "/run/user/$(id -u):/run/user/0"\
	tobii "$@"
