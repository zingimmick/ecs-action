#!/bin/sh -l

set -e
PATH="$HOME/.composer/vendor/bin:$PATH"
ecs check --fix $*
