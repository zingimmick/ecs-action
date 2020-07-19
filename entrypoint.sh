#!/bin/sh -l

set -e

wget https://github.com/symplify/easy-coding-standard-prefixed/archive/$1.tar.gz | tar -xv \
    && ls \
    && tar --strip-components 1 -xvf ecs.tar.gz easy-coding-standard-prefixed-$1/ecs \
    && chmod a+x ecs \
    && mv ecs /usr/local/bin/ecs

/usr/local/bin/ecs check $2
