#!/bin/bash

chown ${PUID}:${PGID} \
    /config \
    /data

umask ${UMASK}
sed -i "s/umask.*/umask ${UMASK}/g" /etc/profile

su-exec ${PUID}:${PGID} hlink start