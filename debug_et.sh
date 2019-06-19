#!/bin/sh
docker run -t -i --privileged --publish 6691:6692 -v /dev/bus/usb:/dev/bus/usb tobii debug bash
