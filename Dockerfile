FROM php:7.4-alpine

LABEL "com.github.actions.name"="ecs-action"
LABEL "com.github.actions.description"="Use Easy Coding Standard via GithubAction."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/zingimmick/ecs-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="zingimmick<zingimmick@outlook.com>"

RUN wget https://github.com/symplify/easy-coding-standard-prefixed/raw/v8.1.6/ecs.phar -O ecs \
    && chmod a+x ecs \
    && mv ecs /usr/local/bin/ecs

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
