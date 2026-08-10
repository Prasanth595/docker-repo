# Fedora 40 base image
FROM fedora:40

# Note: Fedora container images ship curl-minimal; installing full `curl` conflicts.
RUN dnf install -y --setopt=tsflags=nodocs \
        bash \
        ca-certificates \
        curl-minimal \
        tar \
        gzip \
    && dnf clean all \
    && rm -rf /var/cache/dnf

CMD ["/bin/bash"]