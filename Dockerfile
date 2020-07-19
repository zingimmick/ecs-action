FROM php:7.4-alpine

LABEL "com.github.actions.name"="Easy Coding Standard Action"
LABEL "com.github.actions.description"="Use Easy Coding Standard via GithubAction."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/zingimmick/ecs-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="zingimmick<zingimmick@outlook.com>"

RUN apk add libzip-dev

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
