FROM registry.access.redhat.com/ubi9/ubi
LABEL maintainer="you@example.com"
RUN dnf update -y && dnf install -y curl wget git vim && \
    dnf clean all
CMD ["/bin/bash"]