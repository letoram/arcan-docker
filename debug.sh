#!/bin/sh
docker run --rm -it --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -i -t $1 $2
