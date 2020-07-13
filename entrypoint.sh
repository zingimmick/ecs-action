#!/bin/sh -l

set -e
ls
PATH="/root/.composer/vendor/bin/.composer/vendor/bin:$PATH"
echo $PATH
ecs check --fix $*
