#!/bin/sh -l

set -e
ls
/usr/local/bin/ecs check --fix $*
