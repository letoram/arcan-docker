This repository contains my scratch arcan- related dockerfiles,
mostly for dev-testing and keeping track on distro related changes.

Use
---
./clone.sh - will pull down / update arcan and durden gits.
Dump whatever custom appls you want to add in ./appl

docker build -t arcan:arcan -f Dockerfile.whateverdist

Eyetracking
---
The dockerfile.ubuntu.tobii extends the .ubuntu docker with the
support material needed to bridge (not calibrate) eyetracking.

To actually use it, the drivers from tobii- are also needed and
dumped / unpacked in the tobii folder. Due to driver licensing,
they can't be redistributed here - but do look around for


    tobii_engine_linux-0.1.6.193_rc-Linux.deb
		tobii_config_0.1.6.111_amd64.deb
		Tobii.Pro.Eye.Tracker.Manager.Linux-1.12.1.deb
		tobiiusbservice_l64U14_2.1.5-28fd4a.deb
    stream_engine_linux_x64_3.3.0.1.tar.gz

and extract the tarball into the tobii folder before building the
repo.

Also see the notes in the arcan-devices docker about calibration.
You might need to use the normal config electron tool to create
the config.db and add to the tobii folder as well.
