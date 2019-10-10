FROM raspbian/stretch:latest

ARG TARGETPLATFORM
ARG TARGETARCH

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y glusterfs-server glusterfs-client && \
    rm -rf /var/cache/apk/* && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 111 24007 24008 49152 49153 49154 49156 49157 49158 49159 49160 49161 49162

COPY gluster-setup.sh fake-disk.sh docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/*.sh && \
    mkdir -p /etc/glusterfs_bkp /var/lib/glusterd_bkp /var/log/glusterfs_bkp && \
    cp -r /etc/glusterfs/* /etc/glusterfs_bkp && \
    cp -r /var/lib/glusterd/* /var/lib/glusterd_bkp

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]