# Oracle Linux 9 base image
FROM oraclelinux:9

RUN dnf install -y --setopt=tsflags=nodocs \
        bash \
        curl \
        ca-certificates \
        tar \
        gzip \
    && dnf clean all \
    && rm -rf /var/cache/dnf

CMD ["/bin/bash"]
