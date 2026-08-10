# Oracle Linux 9 base image
FROM oraclelinux:9

# Note: OL9/RHEL-9-family images ship curl-minimal; installing full `curl` conflicts.
RUN dnf install -y --setopt=tsflags=nodocs \
        bash \
        curl-minimal \
        ca-certificates \
        tar \
        gzip \
    && dnf clean all \
    && rm -rf /var/cache/dnf

CMD ["/bin/bash"]