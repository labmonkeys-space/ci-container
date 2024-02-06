###
# Do not edit the generated Dockerfile
###

# hadolint ignore=DL3006
FROM "${BASE_IMAGE}"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
      automake \
      ca-certificates \
      cmake \
      curl \
      expect \
      jicmp \
      jicmp6 \
      jrrd2 \
      jq \
      gcc-c++ \
      gettext \
      git \
      gnupg2 \
      libtool \
      libxslt \
      make \
      nodejs \
      openssh-clients \
      python3 \
      redhat-rpm-config \
      rpm-build \
      rpm-sign \
      rrdtool-devel \
      rsync \
      R-core \
      tree \
      wget \
      which && \
    rm -rf /var/lib/apt/lists/*

LABEL org.opencontainers.image.source="${VCS_SOURCE}" \
      org.opencontainers.image.revision="${VCS_REVISION}" \
      org.opencontainers.image.vendor="Labmonkeys Space" \
      org.opencontainers.image.authors="ronny@no42.org" \
      org.opencontainers.image.licenses="MIT"
