#!/bin/sh -l

set -e
ls
PATH="/root/.composer/vendor/bin:$PATH"
echo $PATH
/root/.composer/vendor/bin/ecs check --fix $*
