#!/bin/sh -l

set -e
PATH="$HOME/.composer/vendor/bin:$PATH"
echo $PATH
ecs check --fix $*
