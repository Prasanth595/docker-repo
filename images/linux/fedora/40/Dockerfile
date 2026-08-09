# Fedora 40 base image
FROM fedora:40

RUN dnf install -y --setopt=tsflags=nodocs \
        bash \
        ca-certificates \
        curl \
        tar \
        gzip \
    && dnf clean all \
    && rm -rf /var/cache/dnf

CMD ["/bin/bash"]
