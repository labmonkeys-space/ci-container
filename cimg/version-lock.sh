#!/usr/bin/env bash
set -u -o pipefail

VCS_SOURCE="$(git remote get-url --push origin)"
VCS_REVISION="$(git describe --always)"
DATE="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
export VCS_SOURCE
export VCS_REVISION
export DATE
export BASE_IMAGE="cimg/base:2023.08-22.04"
export SHELLCHECK_VERSION="0.8.*"
export HADOLINT_VERSION="2.10.0"
export GETTEXT_VERSION="0.21*"
export ANSIBLE_LINT_VERSION="5.*"