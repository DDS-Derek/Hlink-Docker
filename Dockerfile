FROM node:lts-alpine

ENV DOCKER=true \
    PS1="\u@\h:\w \$ " \
    HLINK_HOME=/config

RUN apk add --no-cache \
        bash \
        su-exec \
    && \
    npm i -g hlink

COPY --chmod=755 . /

ENTRYPOINT [ "/run.sh" ]

###############################################

ENV PUID=1000 \
    PGID=1000 \
    UMASK=022

EXPOSE 9090

VOLUME [ "/config" ]
VOLUME [ "/data" ]

###############################################
