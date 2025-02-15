###
# Do not edit the generated Dockerfile
###

# hadolint ignore=DL3006
FROM "${BASE_IMAGE}"

USER root

# hadolint ignore=DL3005
RUN apt-get update && apt-get -y dist-upgrade && \
    apt-get -y --no-install-recommends install shellcheck="${SHELLCHECK_VERSION}" \
                                               gettext="${GETTEXT_VERSION}" \
                                               ansible-lint="${ANSIBLE_LINT_VERSION}" && \
    wget -nv "https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64" -O /usr/local/bin/hadolint && \
    chmod +x /usr/local/bin/hadolint && \
    rm -rf /var/lib/apt/lists/*

USER circleci

LABEL org.opencontainers.image.source="${VCS_SOURCE}" \
      org.opencontainers.image.revision="${VCS_REVISION}" \
      org.opencontainers.image.vendor="Labmonkeys Space" \
      org.opencontainers.image.authors="ronny@no42.org" \
      org.opencontainers.image.licenses="MIT"
