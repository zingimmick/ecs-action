#!/bin/sh -l

set -e

wget https://github.com/symplify/easy-coding-standard-prefixed/raw/v8.1.6/ecs.phar -O ecs \
    && chmod a+x ecs \
    && mv ecs /usr/local/bin/ecs

/usr/local/bin/ecs check $*
