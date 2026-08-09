# Rocky Linux 9 base image
FROM rockylinux:9

RUN dnf install -y --setopt=tsflags=nodocs \
        bash \
        ca-certificates \
        curl \
        tar \
        gzip \
    && dnf clean all \
    && rm -rf /var/cache/dnf

CMD ["/bin/bash"]
