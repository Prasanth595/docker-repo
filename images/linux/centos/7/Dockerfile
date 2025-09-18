FROM centos:7
LABEL maintainer="you@example.com"
RUN yum -y update && yum -y install curl wget git vim && \
    yum clean all
CMD ["/bin/bash"]