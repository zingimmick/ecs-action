#!/bin/sh -l

set -e

/root/.composer/vendor/bin/ecs check --fix $*
