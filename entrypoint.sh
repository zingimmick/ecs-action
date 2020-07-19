#!/bin/sh -l

set -e

wget https://github.com/symplify/easy-coding-standard-prefixed/archive/$1.tar.gz | tar -xzv ecs \
    && chmod a+x ecs \
    && mv ecs /usr/local/bin/ecs

/usr/local/bin/ecs check $2
