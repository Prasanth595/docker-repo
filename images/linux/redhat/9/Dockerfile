FROM registry.access.redhat.com/ubi9/ubi
LABEL maintainer="prasanth9566607@gmail.com"
RUN dnf update -y && dnf install -y curl wget git vim && \
    dnf clean all
CMD ["/bin/bash"]