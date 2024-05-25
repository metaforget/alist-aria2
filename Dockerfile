FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
VOLUME /opt/alist/data/
WORKDIR /opt/alist/
COPY entrypoint.sh /entrypoint.sh
COPY install.sh /install.sh
RUN chmod +x /entrypoint.sh /install.sh; \
  /install.sh
COPY aria2/* /home/aria2/

ENV HOMEDIR=/opt/alist PUID=1001 PGID=1001 UMASK=022
EXPOSE 4324 5244 6800 
ENTRYPOINT [ "/entrypoint.sh" ]
