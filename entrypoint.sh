#!/bin/bash

aria2_dir=/opt/alist/data/aria2
aria2_bak_dir=/home/aria2

if [ ! -d "$aria2_dir" ]; then
  {
    mkdir -p $aria2_dir
    mv $aria2_bak_dir/* $aria2_dir/
  }
fi

chown -R ${PUID}:${PGID} /opt/alist/

umask ${UMASK}

exec su-exec ${PUID}:${PGID} nohup aria2c \
  --conf-path=/opt/alist/data/aria2/aria2.conf \
  >/opt/alist/data/log/aria2.log 2>&1 &

exec su-exec ${PUID}:${PGID} ./alist server --no-prefix
