###
# Do not edit the generated Dockerfile
###

# hadolint ignore=DL3006
FROM "${BASE_IMAGE}"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install --no-install-recommends curl gnupg2 ca-certificates make openssh-client git ansible-lint="${ANSIBLE_LINT_VERSION}" && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp.gpg && \
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com jammy main" | tee /etc/apt/sources.list.d/hashicrop.list && \
    apt-get update && \
    apt-get -y install --no-install-recommends packer=${PACKER_VERSION} qemu-system-x86 qemu-utils && \
    rm -rf /var/lib/apt/lists/*

LABEL org.opencontainers.image.source="${VCS_SOURCE}" \
      org.opencontainers.image.revision="${VCS_REVISION}" \
      org.opencontainers.image.vendor="Labmonkeys Space" \
      org.opencontainers.image.authors="ronny@no42.org" \
      org.opencontainers.image.licenses="MIT"
