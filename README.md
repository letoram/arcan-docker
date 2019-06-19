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
they can't be redistributed here.
