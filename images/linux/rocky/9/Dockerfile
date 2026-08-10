# Rocky Linux 9 base image
FROM rockylinux:9

# Note: RHEL-9-family images ship curl-minimal; installing full `curl` conflicts.
RUN dnf install -y --setopt=tsflags=nodocs \
        bash \
        ca-certificates \
        curl-minimal \
        tar \
        gzip \
    && dnf clean all \
    && rm -rf /var/cache/dnf

CMD ["/bin/bash"]